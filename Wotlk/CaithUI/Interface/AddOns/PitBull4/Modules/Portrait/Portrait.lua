if select(6, GetAddOnInfo("PitBull4_" .. (debugstack():match("[o%.][d%.][u%.]les\\(.-)\\") or ""))) ~= "MISSING" then return end

local CLASS_TEX_COORDS = {
	WARRIOR     = {0, 0.25, 0, 0.25},
	MAGE        = {0.25, 0.49609375, 0, 0.25},
	ROGUE       = {0.49609375, 0.7421875, 0, 0.25},
	DRUID       = {0.7421875, 0.98828125, 0, 0.25},
	HUNTER      = {0, 0.25, 0.25, 0.5},
	SHAMAN      = {0.25, 0.49609375, 0.25, 0.5},
	PRIEST      = {0.49609375, 0.7421875, 0.25, 0.5},
	WARLOCK     = {0.7421875, 0.98828125, 0.25, 0.5},
	PALADIN     = {0, 0.25, 0.5, 0.75},
	DEATHKNIGHT = {0.25, 0.49609375, 0.5, 0.75},
}

for k, v in pairs(CLASS_TEX_COORDS) do
	-- zoom by 14%
	local left, right, top, bottom = unpack(v)
	left, right = left + (right - left) * 0.07, right - (right - left) * 0.07
	top, bottom = top + (bottom - top) * 0.07, bottom - (bottom - top) * 0.07
	v[1], v[2], v[3], v[4] = left, right, top, bottom
end

local PitBull4 = _G.PitBull4
if not PitBull4 then
	error("PitBull4_Portrait requires PitBull4")
end

local L = PitBull4.L

local PitBull4_Portrait = PitBull4:NewModule("Portrait", "AceEvent-3.0")

PitBull4_Portrait:SetModuleType("indicator")
PitBull4_Portrait:SetName(L["Portrait"])
PitBull4_Portrait:SetDescription(L["Show a portrait of the unit."])
PitBull4_Portrait:SetDefaults({
	color = { 0, 0, 0, 0.25 },
	attach_to = "root",
	location = "out_left",
	position = 1,
	full_body = false,
	style = "three_dimensional",
	fallback_style = "three_dimensional",
	side = "left",
	bar_size = 4,
	enabled = false,
})
PitBull4_Portrait.can_set_side_to_center = true

function PitBull4_Portrait:OnEnable()
	self:RegisterEvent("UNIT_PORTRAIT_UPDATE")
end

function PitBull4_Portrait:OnDisable()
end

local guid_demanding_update = nil

function PitBull4_Portrait:UNIT_PORTRAIT_UPDATE(event, unit)
	local guid = UnitGUID(unit)
	guid_demanding_update = guid
	self:UpdateForGUID(guid)
	guid_demanding_update = nil
end

function PitBull4_Portrait:ClearFrame(frame)
	if not frame.Portrait then
		return false
	end
	
	local portrait = frame.Portrait
	
	if portrait.model then
		portrait.model:SetScript("OnUpdate", nil)
		portrait.model = portrait.model:Delete()
	end
	if portrait.texture then
		portrait.texture = portrait.texture:Delete()
	end
	
	portrait.bg = portrait.bg:Delete()
	
	portrait.style = nil
	portrait.height = nil
	portrait.guid = nil
	portrait.falling_back = nil
	frame.Portrait = portrait:Delete()
	
	return true
end

local function model_OnUpdate(self, elapsed)
	self:SetScript("OnUpdate", nil)
	
	local frame = self:GetParent()
	
	local layout_db = PitBull4_Portrait:GetLayoutDB(frame)
	if not layout_db.full_body then
		self:SetCamera(0)
	end
	
	if type(self:GetModel()) ~= "string" then
		-- the portrait wasn't set properly, let's try again
		
		PitBull4_Portrait:Clear(frame)
		PitBull4_Portrait:Update(frame)
	end
end

function PitBull4_Portrait:OnHide(frame)
	local portrait = frame.Portrait
	if portrait then
		portrait.guid = frame.guid
		portrait:Hide()
	end
end

function PitBull4_Portrait:UpdateFrame(frame)
	local layout_db = self:GetLayoutDB(frame)
	local style = layout_db.style
	local falling_back = false
	
	local unit = frame.unit
	
	if style == "class" then
		if not UnitIsPlayer(unit) then
			style = layout_db.fallback_style
			falling_back = true
		end
	else
		if not UnitExists(unit) or not UnitIsConnected(unit) or not UnitIsVisible(unit) then
			style = layout_db.fallback_style
			falling_back = true
		end
	end
	
	if style == "hide" then
		return self:ClearFrame(frame)
	end
	
	local portrait = frame.Portrait
	
	if portrait and (portrait.style ~= style or portrait.falling_back ~= falling_back) then
		self:ClearFrame(frame)
		portrait = nil
	end
	
	local created = not portrait
	if created then
		portrait = PitBull4.Controls.MakeFrame(frame)
		frame.Portrait = portrait
		portrait:SetFrameLevel(frame:GetFrameLevel() + 3)
		portrait:SetWidth(60)
		portrait:SetHeight(60)
		portrait.height = 4
		portrait.style = style
		portrait.falling_back = falling_back
		
		if style == "three_dimensional" then
			local model = PitBull4.Controls.MakePlayerModel(frame)
			portrait.model = model
			model:SetAllPoints(portrait)
		else -- two_dimensional or class
			local texture = PitBull4.Controls.MakeTexture(portrait, "ARTWORK")
			portrait.texture = texture
			texture:SetAllPoints(portrait)
		end
		
		local bg = PitBull4.Controls.MakeTexture(frame, "BACKGROUND")
		portrait.bg = bg
		bg:SetAllPoints(portrait)
		bg:SetTexture(unpack(layout_db.color))
	end
	
	if portrait.guid == frame.guid and guid_demanding_update ~= frame.guid then
		portrait:Show()
		return false
	end
	
	portrait.guid = frame.guid
	if style == "three_dimensional" then
		if not falling_back then
			portrait.model:SetUnit(unit)
			portrait.model:SetCamera(1)
			portrait.model:SetScript("OnUpdate", model_OnUpdate)
		else	
			portrait.model:SetModelScale(4.25)
			portrait.model:SetPosition(0, 0, -1.5)
			portrait.model:SetModel([[Interface\Buttons\talktomequestionmark.mdx]])
		end
	elseif style == "two_dimensional" then
		portrait.texture:SetTexCoord(0.14644660941, 0.85355339059, 0.14644660941, 0.85355339059)
		SetPortraitTexture(portrait.texture, unit)
	elseif style == "blank" then
		portrait.texture:SetTexture("")
	else -- class	
		local _, class = UnitClass(unit)
		if class then
			local tex_coord = CLASS_TEX_COORDS[class]
			portrait.texture:SetTexture([[Interface\Glues\CharacterCreate\UI-CharacterCreate-Classes]])
			portrait.texture:SetTexCoord(unpack(tex_coord))
		else
			-- Pets. Work out a better icon?
			portrait.texture:SetTexture([[Interface\Icons\Ability_Hunter_BeastCall]])
			portrait.texture:SetTexCoord(0.07, 0.93, 0.07, 0.93)
		end
	end
	
	portrait:Show()

	return created
end

PitBull4_Portrait:SetLayoutOptionsFunction(function(self)
	return 'full_body', {
		type = 'toggle',
		name = L["Full body"],
		desc = L["Show the full body of the unit when in 3D mode."],
		get = function(info)
			return PitBull4.Options.GetLayoutDB(self).full_body
		end,
		set = function(info, value)
			PitBull4.Options.GetLayoutDB(self).full_body = value
			
			for frame in PitBull4:IterateFrames() do
				self:Clear(frame)
			end
			self:UpdateAll()
		end
	}, 'style', {
		type = 'select',
		name = L["Style"],
		desc = L["Set the portrait style."],
		get = function(info)
			return PitBull4.Options.GetLayoutDB(self).style
		end,
		set = function(info, value)
			PitBull4.Options.GetLayoutDB(self).style = value
			
			for frame in PitBull4:IterateFrames() do
				self:Clear(frame)
			end
			self:UpdateAll()
		end,
		values = {
			["two_dimensional"] = L["2D"],
			["three_dimensional"] = L["3D"],
			["class"] = L["Class"],
		},
	}, 'fallback_style', {
		type = 'select',
		name = L["Fallback style"],
		desc = L["Set the portrait style for when the normal style can't be shown, such as if they are out of visibility."],
		get = function(info)
			return PitBull4.Options.GetLayoutDB(self).fallback_style
		end,
		set = function(info, value)
			PitBull4.Options.GetLayoutDB(self).fallback_style = value

			for frame in PitBull4:IterateFrames() do
				self:Clear(frame)
			end
			self:UpdateAll()
		end,
		values = {
			["two_dimensional"] = L["2D"],
			["three_dimensional"] = L["3D question mark"],
			["class"] = L["Class"],
			["blank"] = L["Blank"],
			["hide"] = L["Hide completely"],
		},
	}, 'color', {
		type = 'color',
		name = L["Background color"],
		desc = L["Color that the background behind the portrait should be."],
		hasAlpha = true,
		get = function(info)
			return unpack(PitBull4.Options.GetLayoutDB(self).color)
		end,
		set = function(info, r, g, b, a)
			local color = PitBull4.Options.GetLayoutDB(self).color
			color[1], color[2], color[3], color[4] = r, g, b, a

			for frame in PitBull4:IterateFrames() do
				self:Clear(frame)
			end
			self:UpdateAll() 
		end,
	}
end)
