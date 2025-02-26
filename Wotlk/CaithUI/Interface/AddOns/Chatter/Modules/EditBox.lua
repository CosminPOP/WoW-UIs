local mod = Chatter:NewModule("Edit Box Polish", "AceHook-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Chatter")
mod.modName = L["Edit Box Polish"]

local Media = LibStub("LibSharedMedia-3.0")
local backgrounds, borders, fonts = {}, {}, {}
local CreateFrame = _G.CreateFrame
local max = _G.max
local pairs = _G.pairs
local select = _G.select

local VALID_ATTACH_POINTS = {
	TOP = L["Top"],
	BOTTOM = L["Bottom"],
	FREE = L["Free-floating"],
	LOCK = L["Free-floating, Locked"]
}

local function updateEditBox(method, args)
	for i = 1, NUM_CHAT_WINDOWS do
		local f = _G["ChatFrame" .. i .. "EditBox"]
		f[method](f, args)
	end
	for index,name in ipairs(mod.TempChatFrames) do
		local cf = _G[name.."EditBox"]
		if cf then
			cf[method](f,args)
		end
	end
end

local options = {
	background = {
		type = "select",
		name = L["Background texture"],
		desc = L["Background texture"],
		values = backgrounds,
		get = function() return mod.db.profile.background end,
		set = function(info, v)
			mod.db.profile.background = v
			mod:SetBackdrop()
		end
	},
	border = {
		type = "select",
		name = L["Border texture"],
		desc = L["Border texture"],
		values = borders,
		get = function() return mod.db.profile.border end,
		set = function(info, v)
			mod.db.profile.border = v
			mod:SetBackdrop()
		end
	},
	backgroundColor = {
		type = "color",
		name = L["Background color"],
		desc = L["Background color"],
		hasAlpha = true,
		get = function()
			local c = mod.db.profile.backgroundColor
			return c.r, c.g, c.b, c.a
		end,
		set = function(info, r, g, b, a)
			local c = mod.db.profile.backgroundColor
			c.r, c.g, c.b, c.a = r, g, b, a
			mod:SetBackdrop()
		end
	},
	borderColor = {
		type = "color",
		name = L["Border color"],
		desc = L["Border color"],
		hasAlpha = true,
		get = function()
			local c = mod.db.profile.borderColor
			return c.r, c.g, c.b, c.a
		end,
		set = function(info, r, g, b, a)
			local c = mod.db.profile.borderColor
			c.r, c.g, c.b, c.a = r, g, b, a
			mod:SetBackdrop()
		end
	},
	inset = {
		type = "range",
		name = L["Background Inset"],
		desc = L["Background Inset"],
		min = 1,
		max = 64,
		step = 1,
		bigStep = 1,
		get = function() return mod.db.profile.inset end,
		set = function(info, v)
			mod.db.profile.inset = v
			mod:SetBackdrop()
		end
	},
	tileSize = {
		type = "range",
		name = L["Tile Size"],
		desc = L["Tile Size"],
		min = 1,
		max = 64,
		step = 1,
		bigStep = 1,
		get = function() return mod.db.profile.tileSize end,
		set = function(info, v)
			mod.db.profile.tileSize = v
			mod:SetBackdrop()
		end
	},
	edgeSize = {
		type = "range",
		name = L["Edge Size"],
		desc = L["Edge Size"],
		min = 1,
		max = 64,
		step = 1,
		bigStep = 1,
		get = function() return mod.db.profile.edgeSize end,
		set = function(info, v)
			mod.db.profile.edgeSize = v
			mod:SetBackdrop()
		end
	},
	attach = {
		type = "select",
		name = L["Attach to..."],
		desc = L["Attach edit box to..."],
		get = function() return mod.db.profile.attach end,
		values = VALID_ATTACH_POINTS,
		set = function(info, v)
			mod.db.profile.attach = v
			for i = 1, NUM_CHAT_WINDOWS do
				mod:SetAttach()
			end
		end
	},
	colorByChannel = {
		type = "toggle",
		name = L["Color border by channel"],
		desc = L["Sets the frame's border color to the color of your currently active channel"],
		get = function()
			return mod.db.profile.colorByChannel
		end,
		set = function(info, v)
			mod.db.profile.colorByChannel = v
			if v then
				mod:RawHook("ChatEdit_UpdateHeader", "SetBorderByChannel", true)
			else
				if mod:IsHooked("ChatEdit_UpdateHeader") then
					mod:Unhook("ChatEdit_UpdateHeader")
					local c = mod.db.profile.borderColor
					mod.frame:SetBackdropBorderColor(c.r, c.g, c.b, c.a)
				end
			end
		end
	},
	useAltKey = {
		type = "toggle",
		name = L["Use Alt key for cursor movement"],
		desc = L["Requires the Alt key to be held down to move the cursor in chat"],
		get = function()
			return mod.db.profile.useAlt
		end,
		set = function(info, v)
			mod.db.profile.useAlt = v
			updateEditBox("SetAltArrowKeyMode", v)
		end
	},
	font = {
		type = "select",
		name = L["Font"],
		desc = L["Select the font to use for the edit box"],
		values = fonts,
		get = function() return mod.db.profile.font end,
		set = function(i, v)
			mod.db.profile.font = v
			for i = 1, NUM_CHAT_WINDOWS do
				local ff = _G["ChatFrame"..i.."EditBox"]
				local _, s, m = ff:GetFont()
				ff:SetFont(Media:Fetch("font", v), s, m)
			end
		end
	},
	height = {
		type = "range",
		name = L["Height"],
		desc = L["Select the height of the edit box"],
		min = 5,
		max = 50,
		step = 1,
		bigStep = 1,
		get = function() return mod.db.profile.height end,
		set = function(i, v)
			mod.db.profile.height = v
			mod:UpdateHeight()
		end
	}
}

local defaults = {
	profile = {
		background = "Blizzard Tooltip",
		border = "Blizzard Tooltip",
		hideDialog = true,
		backgroundColor = {r = 0, g = 0, b = 0, a = 1},
		borderColor = {r = 1, g = 1, b = 1, a = 1},
		inset = 3,
		edgeSize = 12,
		tileSize = 16,
		height = 22,
		attach = "BOTTOM",
		colorByChannel = true,
		font = (function()
			for i = 1, NUM_CHAT_WINDOWS do
				local ff = _G["ChatFrame"..i.."EditBox"]
				local f = ff:GetFont()
				for k,v in pairs(Media:HashTable("font")) do
					if v == f then return k end
				end
			end
		end)()
	}
}


function mod:LibSharedMedia_Registered()
	for k, v in pairs(Media:List("background")) do
		backgrounds[v] = v
	end
	for k, v in pairs(Media:List("border")) do
		borders[v] = v
	end
	for k, v in pairs(Media:List("font")) do
		fonts[v] = v
	end
end

function mod:OnInitialize()
	self.db = Chatter.db:RegisterNamespace("EditBox", defaults)
	Media.RegisterCallback(mod, "LibSharedMedia_Registered")
	self.frames = {}	
	self:LibSharedMedia_Registered()
	for i = 1, NUM_CHAT_WINDOWS do
		local parent = _G["ChatFrame"..i.."EditBox"]
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetFrameStrata("DIALOG")
		frame:SetFrameLevel(parent:GetFrameLevel() - 1)
		frame:SetAllPoints(parent)
		frame:Hide()
		parent.lDrag = CreateFrame("Frame", nil, parent)
		parent.lDrag:SetWidth(15)
		parent.lDrag:SetPoint("TOPLEFT", parent, "TOPLEFT")
		parent.lDrag:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT")
		parent.rDrag = CreateFrame("Frame", nil, parent)
		parent.rDrag:SetWidth(15)
		parent.rDrag:SetPoint("TOPRIGHT", parent, "TOPRIGHT")
		parent.rDrag:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT")
		parent.lDrag.left = true
		parent.frame = frame
		tinsert(self.frames, frame)
	end
end

function mod:Decorate(chatframe)
	local parent = _G[chatframe:GetName().."EditBox"]
	local frame = CreateFrame("Frame", nil, parent)
	frame:SetFrameStrata("DIALOG")
	frame:SetFrameLevel(parent:GetFrameLevel() - 1)
	frame:SetAllPoints(parent)
	frame:Hide()
	parent.lDrag = CreateFrame("Frame", nil, parent)
	parent.lDrag:SetWidth(15)
	parent.lDrag:SetPoint("TOPLEFT", parent, "TOPLEFT")
	parent.lDrag:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT")
	parent.rDrag = CreateFrame("Frame", nil, parent)
	parent.rDrag:SetWidth(15)
	parent.rDrag:SetPoint("TOPRIGHT", parent, "TOPRIGHT")
	parent.rDrag:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT")
	parent.lDrag.left = true
	parent.frame = frame
	tinsert(self.frames, frame)
	local name = chatframe:GetName()
	local f = _G[name.."EditBox"]
	_G[name.."EditBoxLeft"]:Hide()
	_G[name.."EditBoxRight"]:Hide()
	_G[name.."EditBoxMid"]:Hide()
	_G[name.."EditBoxFocusLeft"]:SetTexture(nil)
	_G[name.."EditBoxFocusRight"]:SetTexture(nil)
	_G[name.."EditBoxFocusMid"]:SetTexture(nil)
	f:Hide()
	self.frames[#self.frames]:Show()
	local font, s, m = f:GetFont()
	f:SetFont(Media:Fetch("font", self.db.profile.font), s, m)
	self:SetAttach(nil, self.db.profile.editX, self.db.profile.editY, self.db.profile.editW)
end

function mod:OnEnable()
	self:LibSharedMedia_Registered()
	updateEditBox("SetAltArrowKeyMode", mod.db.profile.useAlt)
	for i = 1, NUM_CHAT_WINDOWS do
		local f = _G["ChatFrame"..i.."EditBox"]
		_G["ChatFrame"..i.."EditBoxLeft"]:Hide()
		_G["ChatFrame"..i.."EditBoxRight"]:Hide()
		_G["ChatFrame"..i.."EditBoxMid"]:Hide()
		_G["ChatFrame"..i.."EditBoxFocusLeft"]:SetTexture(nil)
		_G["ChatFrame"..i.."EditBoxFocusRight"]:SetTexture(nil)
		_G["ChatFrame"..i.."EditBoxFocusMid"]:SetTexture(nil)
		f:Hide()
		self.frames[i]:Show()
		local font, s, m = f:GetFont()
		f:SetFont(Media:Fetch("font", self.db.profile.font), s, m)					
		self:SetAttach(nil, self.db.profile.editX, self.db.profile.editY, self.db.profile.editW)
	end
	for index,name in ipairs(self.TempChatFrames) do
		local f = _G[name.."EditBox"]
		_G[name.."EditBoxLeft"]:Hide()
		_G[name.."EditBoxRight"]:Hide()
		_G[name.."EditBoxMid"]:Hide()
		_G[name.."EditBoxFocusLeft"]:SetTexture(nil)
		_G[name.."EditBoxFocusRight"]:SetTexture(nil)
		_G[name.."EditBoxFocusMid"]:SetTexture(nil)
		f:Hide()
		self.frames[NUM_CHAT_WINDOWS+index]:Show()
		local font, s, m = f:GetFont()
		f:SetFont(Media:Fetch("font", self.db.profile.font), s, m)
		self:SetAttach(nil, self.db.profile.editX, self.db.profile.editY, self.db.profile.editW)
	end
	
	self:SecureHook("ChatEdit_DeactivateChat")
	self:SecureHook("ChatEdit_SetLastActiveWindow")
	
	self:SetBackdrop()
	self:UpdateHeight()
	
	if self.db.profile.colorByChannel then
		self:RawHook("ChatEdit_UpdateHeader", "SetBorderByChannel", true)
	end
end

function mod:OnDisable()
	for i = 1, NUM_CHAT_WINDOWS do
		local f = _G["ChatFrame"..i.."EditBox"]
		_G["ChatFrame"..i.."EditBoxLeft"]:Show()
		_G["ChatFrame"..i.."EditBoxRight"]:Show()
		_G["ChatFrame"..i.."EditBoxMid"]:Show()
		
		f:SetAltArrowKeyMode(true)
		f:EnableMouse(true)
		f.frame:Hide()
		self:SetAttach("BOTTOM")
		f:SetFont(Media:Fetch("font", defaults.profile.font), 14)
	end
	for index,name in ipairs(self.TempChatFrames) do
		local f = _G[name.."EditBox"]
		_G[name.."EditBoxLeft"]:Show()
		_G[name.."EditBoxRight"]:Show()
		_G[name.."EditBoxMid"]:Show()
		f:SetAltArrowKeyMode(true)
		f:EnableMouse(true)
		f.frame:Hide()
		self:SetAttach("BOTTOM")
		f:SetFont(Media:Fetch("font", defaults.profile.font), 14)
	end
end

-- changed the Hide to SetAlpha(0), the new ChatSystem OnHide handlers go though some looping
-- when in IM style and Classic style, cause heavy delays on the chat edit box.
function mod:ChatEdit_SetLastActiveWindow(frame)
	if self.db.profile.hideDialog and frame:IsShown() then
		frame:SetAlpha(0)
		frame:EnableMouse(false)
	end
end

function mod:ChatEdit_DeactivateChat(frame)
	if self.db.profile.hideDialog and frame:IsShown() then
		frame:SetAlpha(0)
	end
end

function mod:GetOptions()
	return options
end

function mod:SetBackdrop()
	for _, frame in ipairs(self.frames) do
		frame:SetBackdrop({
			bgFile = Media:Fetch("background", self.db.profile.background),
			edgeFile = Media:Fetch("border", self.db.profile.border),
			tile = true,
			tileSize = self.db.profile.tileSize,
			edgeSize = self.db.profile.edgeSize,
			insets = {left = self.db.profile.inset, right = self.db.profile.inset, top = self.db.profile.inset, bottom = self.db.profile.inset}
		})
		local c = self.db.profile.backgroundColor
		frame:SetBackdropColor(c.r, c.g, c.b, c.a)
		
		local c = self.db.profile.borderColor
		frame:SetBackdropBorderColor(c.r, c.g, c.b, c.a)
	end
end

function mod:SetBorderByChannel(...)
	self.hooks.ChatEdit_UpdateHeader(...)
	for index, frame in ipairs(self.frames) do
		local f = _G["ChatFrame"..index.."EditBox"]
		local attr = f:GetAttribute("chatType")
		if attr == "CHANNEL" then
			local chan = f:GetAttribute("channelTarget")
			if chan == 0 then
				local c = self.db.profile.borderColor
				frame:SetBackdropBorderColor(c.r, c.g, c.b, c.a)
			else	
				local r, g, b = GetMessageTypeColor("CHANNEL" .. chan)
				frame:SetBackdropBorderColor(r, g, b, 1)
			end
		else
			local r, g, b = GetMessageTypeColor(attr)
			frame:SetBackdropBorderColor(r, g, b, 1)
		end
	end
end

do
	local function startMoving(self)
		self:StartMoving()
	end

	local function stopMoving(self)
		self:StopMovingOrSizing()
		mod.db.profile.editX = self:GetLeft()
		mod.db.profile.editY = self:GetTop()
		mod.db.profile.editW = self:GetRight() - self:GetLeft()
	end

	local cfHeight
	local function constrainHeight(self)
		self:GetParent():SetHeight(cfHeight)
	end
	
	local function startDragging(self)
		cfHeight = self:GetParent():GetHeight()
		self:GetParent():StartSizing(not self.left and "TOPRIGHT" or "TOPLEFT")
		self:SetScript("OnUpdate", constrainHeight)
	end
	
	local function stopDragging(self)
		local parent = self:GetParent()
		parent:StopMovingOrSizing()
		self:SetScript("OnUpdate", nil)
		mod.db.profile.editX = parent:GetLeft()
		mod.db.profile.editY = parent:GetTop()
		mod.db.profile.editW = parent:GetWidth()
	end

	function mod:SetAttach(val, x, y, w)
		for i = 1, NUM_CHAT_WINDOWS do 
			local frame = _G["ChatFrame" .. i .. "EditBox"]
			local val = val or self.db.profile.attach
			if not x and val == "FREE" then
				x, y, w = frame:GetLeft(), frame:GetTop(), max(frame:GetWidth(), (frame:GetRight() or 0) - (frame:GetLeft() or 0))
			end
			if not w or w < 10 then w = 100 end
			frame:ClearAllPoints()
			if val ~= "FREE" then
				frame:SetMovable(false)
				frame.lDrag:EnableMouse(false)
				frame.rDrag:EnableMouse(false)
				frame:SetScript("OnMouseDown", nil)
				frame:SetScript("OnMouseUp", nil)
				frame.lDrag:EnableMouse(false)
				frame.rDrag:EnableMouse(false)			
				frame.lDrag:SetScript("OnMouseDown", nil)
				frame.rDrag:SetScript("OnMouseDown", nil)
				frame.lDrag:SetScript("OnMouseUp", nil)
				frame.rDrag:SetScript("OnMouseUp", nil)
			end
			
			if val == "TOP" then
				frame:SetPoint("BOTTOMLEFT", frame.chatFrame, "TOPLEFT", 0, 3)
				frame:SetPoint("BOTTOMRIGHT", frame.chatFrame, "TOPRIGHT", 0, 3)
			elseif val == "BOTTOM" then			
				frame:SetPoint("TOPLEFT", frame.chatFrame, "BOTTOMLEFT", 0, -8)
				frame:SetPoint("TOPRIGHT", frame.chatFrame, "BOTTOMRIGHT", 0, -8)
			elseif val == "FREE" then
				frame:EnableMouse(true)
				frame:SetMovable(true)
				frame:SetResizable(true)
				frame:SetScript("OnMouseDown", startMoving)
				frame:SetScript("OnMouseUp", stopMoving)
				frame:SetWidth(w)
				frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x, y)
				frame:SetMinResize(40, 1)
				
				frame.lDrag:EnableMouse(true)
				frame.rDrag:EnableMouse(true)
				
				frame.lDrag:SetScript("OnMouseDown", startDragging)
				frame.rDrag:SetScript("OnMouseDown", startDragging)

				frame.lDrag:SetScript("OnMouseUp", stopDragging)
				frame.rDrag:SetScript("OnMouseUp", stopDragging)
			elseif val == "LOCK" then
				frame:SetWidth(self.db.profile.editW or w)
				frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", self.db.profile.editX or x, self.db.profile.editY or y)
			end
		end
		for index,name in ipairs(self.TempChatFrames) do
			local frame = _G[name .. "EditBox"]
			local val = val or self.db.profile.attach
			if not x and val == "FREE" then
				x, y, w = frame:GetLeft(), frame:GetTop(), max(frame:GetWidth(), (frame:GetRight() or 0) - (frame:GetLeft() or 0))
			end
			if not w or w < 10 then w = 100 end
			frame:ClearAllPoints()
			if val ~= "FREE" then
				frame:SetMovable(false)
				frame.lDrag:EnableMouse(false)
				frame.rDrag:EnableMouse(false)
				frame:SetScript("OnMouseDown", nil)
				frame:SetScript("OnMouseUp", nil)
				frame.lDrag:EnableMouse(false)
				frame.rDrag:EnableMouse(false)
				frame.lDrag:SetScript("OnMouseDown", nil)
				frame.rDrag:SetScript("OnMouseDown", nil)
				frame.lDrag:SetScript("OnMouseUp", nil)
				frame.rDrag:SetScript("OnMouseUp", nil)
			end
			if val == "TOP" then
				frame:SetPoint("BOTTOMLEFT", frame.chatFrame, "TOPLEFT", 0, 3)
				frame:SetPoint("BOTTOMRIGHT", frame.chatFrame, "TOPRIGHT", 0, 3)
			elseif val == "BOTTOM" then
				frame:SetPoint("TOPLEFT", frame.chatFrame, "BOTTOMLEFT", 0, -8)
				frame:SetPoint("TOPRIGHT", frame.chatFrame, "BOTTOMRIGHT", 0, -8)
			elseif val == "FREE" then
				frame:EnableMouse(true)
				frame:SetMovable(true)
				frame:SetResizable(true)
				frame:SetScript("OnMouseDown", startMoving)
				frame:SetScript("OnMouseUp", stopMoving)
				frame:SetWidth(w)
				frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x, y)
				frame:SetMinResize(40, 1)
				frame.lDrag:EnableMouse(true)
				frame.rDrag:EnableMouse(true)
				frame.lDrag:SetScript("OnMouseDown", startDragging)
				frame.rDrag:SetScript("OnMouseDown", startDragging)
				frame.lDrag:SetScript("OnMouseUp", stopDragging)
				frame.rDrag:SetScript("OnMouseUp", stopDragging)
			elseif val == "LOCK" then
				frame:SetWidth(self.db.profile.editW or w)
				frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", self.db.profile.editX or x, self.db.profile.editY or y)
			end
		end
	end
end

function mod:Info()
	return L["Lets you customize the position and look of the edit box"]
end

function mod:UpdateHeight()
	for i = 1, NUM_CHAT_WINDOWS do
		local ff = _G["ChatFrame"..i.."EditBox"]
		ff:SetHeight(mod.db.profile.height)
	end
	for index,name in ipairs(self.TempChatFrames) do
		local ff = _G[name.."EditBox"]
		ff:SetHeight(mod.db.profile.height)
	end
end