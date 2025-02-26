local AceOO = AceLibrary("AceOO-2.0")
local deformat = AceLibrary("Deformat-2.0")

local SPELLINTERRUPTOTHERSELF = SPELLINTERRUPTOTHERSELF
local SPELLFAILCASTSELF = SPELLFAILCASTSELF

IceCastBar = AceOO.Class(IceBarElement)


IceCastBar.Actions = { None = 0, Cast = 1, Channel = 2, Instant = 3, Success = 4, Failure = 5 }

IceCastBar.prototype.action = nil
IceCastBar.prototype.actionStartTime = nil
IceCastBar.prototype.actionDuration = nil
IceCastBar.prototype.actionMessage = nil
IceCastBar.prototype.unit = nil
IceCastBar.prototype.current = nil


-- Constructor --
function IceCastBar.prototype:init(name)
	IceCastBar.super.prototype.init(self, name)

	self:SetDefaultColor("CastCasting", 242, 242, 10)
	self:SetDefaultColor("CastChanneling", 117, 113, 161)
	self:SetDefaultColor("CastSuccess", 242, 242, 70)
	self:SetDefaultColor("CastFail", 1, 0, 0)
	self.unit = "player"

	self.delay = 0
	self.action = IceCastBar.Actions.None
end


-- 'Public' methods -----------------------------------------------------------

function IceCastBar.prototype:Enable(core)
	IceCastBar.super.prototype.Enable(self, core)

	self:RegisterEvent("UNIT_SPELLCAST_SENT", "SpellCastSent") -- "player", spell, rank, target
	self:RegisterEvent("UNIT_SPELLCAST_START", "SpellCastStart") -- unit, spell, rank
	self:RegisterEvent("UNIT_SPELLCAST_STOP", "SpellCastStop") -- unit, spell, rank
	
	self:RegisterEvent("UNIT_SPELLCAST_FAILED", "SpellCastFailed") -- unit, spell, rank
	self:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED", "SpellCastInterrupted") -- unit, spell, rank

	self:RegisterEvent("CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE", "CheckChatInterrupt")
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE", "CheckChatInterrupt")

	self:RegisterEvent("UNIT_SPELLCAST_DELAYED", "SpellCastDelayed") -- unit, spell, rank
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", "SpellCastSucceeded") -- "player", spell, rank

	self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START", "SpellCastChannelStart") -- unit, spell, rank
	self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_UPDATE", "SpellCastChannelUpdate") -- unit, spell, rank
	self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP", "SpellCastChannelStop") -- unit, spell, rank

	self:Show(false)
end

function IceCastBar.prototype:GetDefaultSettings()
	local settings = IceCastBar.super.prototype.GetDefaultSettings(self)

	settings["showSpellRank"] = true
	settings["showCastTime"] = true
	settings["displayAuraIcon"] = false
	settings["auraIconXOffset"] = 40
	settings["auraIconYOffset"] = 0

	return settings
end

function IceCastBar.prototype:GetOptions()
	local opts = IceCastBar.super.prototype.GetOptions(self)

	opts["showCastTime"] =
	{
		type = 'toggle',
		name = 'Show spell cast time',
		desc = 'Whether or not to show the remaining cast time of a spell being cast.',
		get = function()
			return self.moduleSettings.showCastTime
		end,
		set = function(value)
			self.moduleSettings.showCastTime = value
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 39.998
	}

	opts["showSpellRank"] =
	{
		type = 'toggle',
		name = 'Show spell rank',
		desc = 'Whether or not to show the rank of a spell being cast.',
		get = function()
			return self.moduleSettings.showSpellRank
		end,
		set = function(value)
			self.moduleSettings.showSpellRank = value
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 39.999
	}
	
	opts["headerIcons"] = {
		type = 'header',
		name = 'Icons',
		order = 50
	}
	
	opts["displayAuraIcon"] = {
		type = 'toggle',
		name = "Display aura icon",
		desc = "Whether or not to display an icon for the aura that this bar is tracking",
		get = function()
			return self.moduleSettings.displayAuraIcon
		end,
		set = function(v)
			self.moduleSettings.displayAuraIcon = v
			if self.barFrame.icon then
				if v then
					self.barFrame.icon:Show()
				else
					self.barFrame.icon:Hide()
				end
			end
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		usage = "<whether or not to display an icon for this bar's tracked spell>",
		order = 51,
	}
	
	opts["auraIconXOffset"] = {
		type = 'range',
		min = -250,
		max = 250,
		step = 1,
		name = "Aura icon horizontal offset",
		desc = "Adjust the horizontal position of the aura icon",
		get = function()
			return self.moduleSettings.auraIconXOffset
		end,
		set = function(v)
			self.moduleSettings.auraIconXOffset = v
			self:PositionIcons()
		end,
		disabled = function()
			return not self.moduleSettings.enabled or not self.moduleSettings.displayAuraIcon
		end,
		usage = "<adjusts the spell icon's horizontal position>",
		order = 52,
	}

	opts["auraIconYOffset"] = {
		type = 'range',
		min = -250,
		max = 250,
		step = 1,
		name = "Aura icon vertical offset",
		desc = "Adjust the vertical position of the aura icon",
		get = function()
			return self.moduleSettings.auraIconYOffset
		end,
		set = function(v)
			self.moduleSettings.auraIconYOffset = v
			self:PositionIcons()
		end,
		disabled = function()
			return not self.moduleSettings.enabled or not self.moduleSettings.displayAuraIcon
		end,
		usage = "<adjusts the spell icon's vertical position>",
		order = 53,
	}

	return opts
end


-- 'Protected' methods --------------------------------------------------------

-- OVERRIDE
function IceCastBar.prototype:CreateFrame()
	IceCastBar.super.prototype.CreateFrame(self)

	self.frame.bottomUpperText:SetWidth(self.settings.gap + 30)

	if not self.barFrame.icon then
		self.barFrame.icon = self.barFrame:CreateTexture(nil, "LOW")
		-- default texture so that 'config mode' can work without activating the bar first
		self.barFrame.icon:SetTexture("Interface\\Icons\\Spell_Frost_Frost")
		self.barFrame.icon:SetWidth(20)
		self.barFrame.icon:SetHeight(20)
		-- this cuts off the border around the buff icon
		self.barFrame.icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		self.barFrame.icon:SetDrawLayer("OVERLAY")
	end
	self:PositionIcons()
end

function IceCastBar.prototype:PositionIcons()
	if not self.barFrame or not self.barFrame.icon then
		return
	end

	self.barFrame.icon:ClearAllPoints()
	self.barFrame.icon:SetPoint("TOPLEFT", self.frame, "TOPLEFT", self.moduleSettings.auraIconXOffset, self.moduleSettings.auraIconYOffset)
end



-- OnUpdate handler
function IceCastBar.prototype:OnUpdate()
	-- safety catch
	if (self.action == IceCastBar.Actions.None) then
		IceHUD:Debug("Stopping action ", self.action)
		self:StopBar()
		return
	end

	local time = GetTime()

	self:Update()
	self:SetTextAlpha()

	-- handle casting and channeling
	if (self.action == IceCastBar.Actions.Cast or self.action == IceCastBar.Actions.Channel) then
		local remainingTime = self.actionStartTime + self.actionDuration - time
		local scale = 1 - (self.actionDuration ~= 0 and remainingTime / self.actionDuration or 0)

		if (self.action == IceCastBar.Actions.Channel) then
			scale = self.actionDuration ~= 0 and remainingTime / self.actionDuration or 0
		end

		if (remainingTime < 0) then
			self:StopBar()
		end
		
		-- sanity check to make sure the bar doesn't over/underfill
		scale = scale > 1 and 1 or scale
		scale = scale < 0 and 0 or scale

		self:UpdateBar(scale, "CastCasting")
		local timeString = self.moduleSettings.showCastTime and string.format("%.1fs ", remainingTime) or ""
		self:SetBottomText1(timeString .. self.actionMessage)

		return
	end


	-- stop bar if casting or channeling is done (in theory this should not be needed)
	if (self.action == IceCastBar.Actions.Cast or self.action == IceCastBar.Actions.Channel) then
		self:StopBar()
		return
	end


	-- handle bar flashes
	if (self.action == IceCastBar.Actions.Instant or
		self.action == IceCastBar.Actions.Success or
		self.action == IceCastBar.Actions.Failure)
	then
		local scale = time - self.actionStartTime

		if (scale > 1) then
			self:StopBar()
			return
		end

		if (self.action == IceCastBar.Actions.Failure) then
			self:FlashBar("CastFail", 1-scale, self.actionMessage, "CastFail")
		else
			self:FlashBar("CastSuccess", 1-scale, self.actionMessage)
		end
		return
	end

	-- something went wrong
	IceHUD:Debug("OnUpdate error ", self.action, " -- ", self.actionStartTime, self.actionDuration, self.actionMessage)
	self:StopBar()
end


function IceCastBar.prototype:FlashBar(color, alpha, text, textColor)
	self.frame:SetAlpha(alpha)

	local r, g, b = self.settings.backgroundColor.r, self.settings.backgroundColor.g, self.settings.backgroundColor.b
	if (self.settings.backgroundToggle) then
		r, g, b = self:GetColor(color)
	end

	self.frame.bg:SetVertexColor(r, g, b, 0.3)
	self.barFrame.bar:SetVertexColor(self:GetColor(color, 0.8))

	self:SetScale(1)
	self:SetBottomText1(text, textColor or "Text")
end


function IceCastBar.prototype:StartBar(action, message)
	local spell, rank, displayName, icon, startTime, endTime, isTradeSkill = UnitCastingInfo(self.unit)
	if not (spell) then
		spell, rank, displayName, icon, startTime, endTime = UnitChannelInfo(self.unit)
	end

	if not spell then
		return
	end

	if icon ~= nil then
		self.barFrame.icon:SetTexture(icon)
	end

	if IceHUD.IceCore:IsInConfigMode() or self.moduleSettings.displayAuraIcon then
		self.barFrame.icon:Show()
	else
		self.barFrame.icon:Hide()
	end

	self.action = action
	self.actionStartTime = GetTime()
	self.actionMessage = message
	
	if (startTime and endTime) then
		self.actionDuration = (endTime - startTime) / 1000
		
		-- set start time here in case we start to monitor a cast that is underway already
		self.actionStartTime = startTime / 1000
	else
		self.actionDuration = 1 -- instants/failures
	end
	
	if not (message) then
		self.actionMessage = spell .. (self.moduleSettings.showSpellRank and self:GetShortRank(rank) or "")
	end

	self:Show(true)
	self.frame:SetScript("OnUpdate", function() self:OnUpdate() end)
end


function IceCastBar.prototype:StopBar()
	self.action = IceCastBar.Actions.None
	self.actionStartTime = nil
	self.actionDuration = nil

	self:Show(false)
	self.frame:SetScript("OnUpdate", nil)
end

-- make sure that our custom OnUpdate is restored whenever a Redraw happens
function IceCastBar.prototype:Redraw()
	IceCastBar.super.prototype.Redraw(self)

	if self.action ~= IceCastBar.Actions.None then
		self.frame:SetScript("OnUpdate", function() self:OnUpdate() end)
	end
end

function IceCastBar.prototype:GetShortRank(rank)
	if (rank) then
		local _, _, sRank = string.find(rank, "(%d+)")
		if (sRank) then
			return " (" .. sRank .. ")"
		end
	end
	return ""
end



-------------------------------------------------------------------------------
-- NORMAL SPELLS                                                             --
-------------------------------------------------------------------------------

function IceCastBar.prototype:SpellCastSent(unit, spell, rank, target)
	if (unit ~= self.unit) then return end
	--IceHUD:Debug("SpellCastSent", unit, spell, rank, target)
end


function IceCastBar.prototype:SpellCastStart(unit, spell, rank)
	if (unit ~= self.unit) then return end
	IceHUD:Debug("SpellCastStart", unit, spell, rank)
	--UnitCastingInfo(unit)
	
	self:StartBar(IceCastBar.Actions.Cast)
	self.current = spell
end

function IceCastBar.prototype:SpellCastStop(unit, spell, rank)
	if (unit ~= self.unit) then return end
	IceHUD:Debug("SpellCastStop", unit, spell, self.current)
	
	-- ignore if not coming from current spell
	if (self.current and spell and self.current ~= spell) then
		return
	end
	
	if (self.action ~= IceCastBar.Actions.Success and
		self.action ~= IceCastBar.Actions.Failure and
		self.action ~= IceCastBar.Actions.Channel)
	then
		self:StopBar()
		self.current = nil
	end
end


function IceCastBar.prototype:SpellCastFailed(unit, spell, rank)
	if (unit ~= self.unit) then return end
	IceHUD:Debug("SpellCastFailed", unit, self.current)

	-- ignore if not coming from current spell
	if (self.current and spell and self.current ~= spell) then
		return
	end
	
	-- channeled spells will call ChannelStop, not cast failed
	if self.action == IceCastBar.Actions.Channel then
		return
	end
	
	self.current = nil
	
	-- determine if we want to show failed casts
	if (self.moduleSettings.flashFailures == "Never") then
		return
	elseif (self.moduleSettings.flashFailures == "Caster") then
		if (UnitPowerType("player") ~= 0) then -- 0 == mana user
			return
		end
	end
	
	self:StartBar(IceCastBar.Actions.Failure, "Failed")
end

function IceCastBar.prototype:CheckChatInterrupt(msg)
	local player, spell = deformat(msg, SPELLINTERRUPTOTHERSELF)
	IceHUD:Debug("CheckChatInterrupt", msg, self.current)

	if not player then
		player, spell = deformat(msg, SPELLFAILCASTSELF)
	end

	if player then
		self.current = nil
		self:StartBar(IceCastBar.Actions.Failure, "Interrupted")
	end
end

function IceCastBar.prototype:SpellCastInterrupted(unit, spell, rank)
	if (unit ~= self.unit) then return end
	IceHUD:Debug("SpellCastInterrupted", unit, self.current)

	-- ignore if not coming from current spell
	if (self.current and spell and self.current ~= spell) then
		return
	end
	
	self.current = nil
	
	self:StartBar(IceCastBar.Actions.Failure, "Interrupted")
end

function IceCastBar.prototype:SpellCastDelayed(unit, delay)
	if (unit ~= self.unit) then return end
	--IceHUD:Debug("SpellCastDelayed", unit, UnitCastingInfo(unit))
	
	local spell, rank, displayName, icon, startTime, endTime, isTradeSkill = UnitCastingInfo(self.unit)
	
	if (endTime and self.actionStartTime) then
		-- apparently this check is needed, got nils during a horrible lag spike
		self.actionDuration = endTime/1000 - self.actionStartTime
	end
end


function IceCastBar.prototype:SpellCastSucceeded(unit, spell, rank)
	if (unit ~= self.unit) then return end
	--IceHUD:Debug("SpellCastSucceeded", unit, spell, rank)
	
	-- never show on channeled (why on earth does this event even fire when channeling starts?)
	if (self.action == IceCastBar.Actions.Channel) then
		return
	end
	
	-- ignore if not coming from current spell
	if (self.current and self.current ~= spell) then
		return
	end

	-- show after normal successfull cast
	if (self.action == IceCastBar.Actions.Cast) then
		self:StartBar(IceCastBar.Actions.Success, spell.. self:GetShortRank(rank))
		return
	end
	
	-- determine if we want to show instant casts
	if (self.moduleSettings.flashInstants == "Never") then
		return
	elseif (self.moduleSettings.flashInstants == "Caster") then
		if (UnitPowerType("player") ~= 0) then -- 0 == mana user
			return
		end
	end
	
	self:StartBar(IceCastBar.Actions.Success, spell.. self:GetShortRank(rank))
end



-------------------------------------------------------------------------------
-- CHANNELING SPELLS                                                         --
-------------------------------------------------------------------------------

function IceCastBar.prototype:SpellCastChannelStart(unit)
	if (unit ~= self.unit) then return end
	--IceHUD:Debug("SpellCastChannelStart", unit)
	
	self:StartBar(IceCastBar.Actions.Channel)
end

function IceCastBar.prototype:SpellCastChannelUpdate(unit)
	if (unit ~= self.unit or not self.actionStartTime) then return end
	--IceHUD:Debug("SpellCastChannelUpdate", unit, UnitChannelInfo(unit))
	
	local spell, rank, displayName, icon, startTime, endTime = UnitChannelInfo(unit)
	self.actionDuration = endTime/1000 - self.actionStartTime
end

function IceCastBar.prototype:SpellCastChannelStop(unit)
	if (unit ~= self.unit) then return end
	--IceHUD:Debug("SpellCastChannelStop", unit)
	
	self:StopBar()
end



