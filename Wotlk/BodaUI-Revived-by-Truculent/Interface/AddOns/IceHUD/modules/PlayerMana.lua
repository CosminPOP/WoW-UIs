local AceOO = AceLibrary("AceOO-2.0")

local PlayerMana = AceOO.Class(IceUnitBar)

PlayerMana.prototype.manaType = nil
PlayerMana.prototype.tickStart = nil
PlayerMana.prototype.previousEnergy = nil

-- Constructor --
function PlayerMana.prototype:init()
	PlayerMana.super.prototype.init(self, "PlayerMana", "player")
	
	self:SetDefaultColor("PlayerMana", 62, 54, 152)
	self:SetDefaultColor("PlayerRage", 171, 59, 59)
	self:SetDefaultColor("PlayerEnergy", 218, 231, 31)
	self:SetDefaultColor("PlayerRunicPower", 62, 54, 152)
end


-- OVERRIDE
function PlayerMana.prototype:GetDefaultSettings()
	local settings = PlayerMana.super.prototype.GetDefaultSettings(self)

	settings["side"] = IceCore.Side.Right
	settings["offset"] = 1
	settings["tickerEnabled"] = true
	settings["tickerAlpha"] = 0.5
	settings["upperText"] = "[PercentMP:Round]"
	settings["lowerText"] = "[FractionalMP:PowerColor]"

	return settings
end


-- OVERRIDE
function PlayerMana.prototype:GetOptions()
	local opts = PlayerMana.super.prototype.GetOptions(self)

if self:ShouldUseTicker() then
	opts["tickerEnabled"] = {
		type = "toggle",
		name = "Show rogue/cat energy ticker",
		desc = "Show rogue/cat energy ticker",
		get = function()
			return self.moduleSettings.tickerEnabled
		end,
		set = function(value)
			self.moduleSettings.tickerEnabled = value
			self:ManaType(self.unit)
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 51
	}
	
	opts["tickerAlpha"] = 
	{
		type = 'range',
		name = 'Energy Ticker Alpha',
		desc = 'Energy Ticker Alpha',
		min = 0.1,
		max = 1,
		step = 0.05,
		get = function()
			return self.moduleSettings.tickerAlpha
		end,
		set = function(value)
			self.moduleSettings.tickerAlpha = value
			self.tickerFrame.spark:SetVertexColor(self:GetColor("PlayerEnergy", self.moduleSettings.tickerAlpha))
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 52
	}
end
	opts["scaleManaColor"] = {
		type = "toggle",
		name = "Color bar by mana %",
		desc = "Colors the mana bar from MaxManaColor to MinManaColor based on current mana %",
		get = function()
			return self.moduleSettings.scaleManaColor
		end,
		set = function(value)
			self.moduleSettings.scaleManaColor = value
			self:Redraw()
		end,
		disabled = function()
			return not self.moduleSettings.enabled
		end,
		order = 53
	}
	
	return opts
end


function PlayerMana.prototype:Enable(core)
	PlayerMana.super.prototype.Enable(self, core)

	self:CreateTickerFrame()

	self:RegisterEvent("UNIT_MAXMANA", "Update")
	self:RegisterEvent("UNIT_MAXRAGE", "Update")
	self:RegisterEvent("UNIT_MAXENERGY", "Update")
	self:RegisterEvent("UNIT_MAXRUNIC_POWER", "Update")

	self:RegisterEvent("UNIT_MANA", "Update")
	self:RegisterEvent("UNIT_RAGE", "Update")
	self:RegisterEvent("UNIT_ENERGY", "UpdateEnergy")
	self:RegisterEvent("UNIT_RUNIC_POWER", "Update")

	self:RegisterEvent("UNIT_ENTERED_VEHICLE", "EnteringVehicle")
	self:RegisterEvent("UNIT_EXITED_VEHICLE", "ExitingVehicle")

	-- allow new 'predicted power' stuff to show the power updates constantly instead of ticking
	if GetCVarBool("predictedPower") then
		self:SetupOnUpdate(true)
	end

	self:RegisterEvent("UNIT_DISPLAYPOWER", "ManaType")

	self:ManaType(self.unit)
end

function PlayerMana.prototype:ShouldUseTicker()
	return IceHUD.WowVer < 30000 or not GetCVarBool("predictedPower")
end

function PlayerMana.prototype:SetupOnUpdate(enable)
	if enable then
		self.frame:SetScript("OnUpdate", function() self:Update(self.unit) end)
	else
		-- make sure the animation has a chance to finish filling up the bar before we cut it off completely
		if self.CurrScale ~= self.DesiredScale then
			self.frame:SetScript("OnUpdate", function() self:MyOnUpdate() end)
		else
			self.frame:SetScript("OnUpdate", nil)
		end
	end
end


function PlayerMana.prototype:EnteringVehicle(unit, arg2)
	if (self.unit == "player" and IceHUD:ShouldSwapToVehicle(unit, arg2)) then
		self.unit = "vehicle"
		self:RegisterFontStrings()
		self:Update(self.unit)
	end
end


function PlayerMana.prototype:ExitingVehicle(unit)
	if (unit == "player" and self.unit == "vehicle") then
		self.unit = "player"
		self:RegisterFontStrings()
		self:Update(self.unit)
	end
end


function PlayerMana.prototype:MyOnUpdate()
	PlayerMana.super.prototype.MyOnUpdate(self)

	if self.CurrScale == self.DesiredScale then
		self:SetupOnUpdate(false)
	end
end


-- OVERRIDE
function PlayerMana.prototype:Redraw()
	PlayerMana.super.prototype.Redraw(self)

	if (self.moduleSettings.enabled) then
		self:CreateTickerFrame()
	end
end


-- OVERRIDE
function PlayerMana.prototype:UseTargetAlpha(scale)
	if (self.manaType == 1 or self.manaType == 6) then
		return (scale and (scale > 0))
	else
		return PlayerMana.super.prototype.UseTargetAlpha(self, scale)
	end
end


function PlayerMana.prototype:ManaType(unit)
	if (unit ~= self.unit) then
		return
	end

	self.manaType = UnitPowerType(self.unit)

	if self:ShouldUseTicker() then
		-- register ticker for rogue energy
		if (self.moduleSettings.tickerEnabled and (self.manaType == 3) and self.alive) then
			self.tickerFrame:Show()
			self.tickerFrame:SetScript("OnUpdate", function() self:EnergyTick() end)
		else
			self.tickerFrame:Hide()
			self.tickerFrame:SetScript("OnUpdate", nil)
		end
	end

	self:Update(self.unit)
end


function PlayerMana.prototype:Update(unit)
	PlayerMana.super.prototype.Update(self)
	if (unit and (unit ~= self.unit)) then
		return
	end

	if self.unit == "vehicle" and ((not UnitExists(unit)) or (self.maxMana == 0)) then
		self:Show(false)
		return
	else	
		self:Show(true)
	end

	-- the user can toggle the predictedPower cvar at any time and the addon will not get notified. handle it.
	if not self.tickerFrame and self:ShouldUseTicker() then
		self:CreateTickerFrame()
	end

	if (self.manaType ~= 3 and self:ShouldUseTicker()) then
		self.tickerFrame:Hide()
	end
	
	local color = "PlayerMana"
	if (self.moduleSettings.scaleManaColor) then
		color = "ScaledManaColor"
	end
	if not (self.alive) then
		color = "Dead"
	else
		if (self.manaType == 1) then
			color = "PlayerRage"
		elseif (self.manaType == 3) then
			color = "PlayerEnergy"
		elseif (self.manaType == 6) then
			color = "PlayerRunicPower"
		end
	end
	
	self:UpdateBar(self.manaPercentage, color)

	local powerType = UnitPowerType(self.unit)
	if (self.manaPercentage == 1 and powerType ~= 1 and powerType ~= 6)
		or (self.manaPercentage == 0 and (powerType == 1 or powerType == 6)) then
		self:SetupOnUpdate(false)
	elseif GetCVarBool("predictedPower") then
		self:SetupOnUpdate(true)
	end

	if self:ShouldUseTicker() then
		-- hide ticker if rest of the bar is not visible
		if (self.alpha == 0) then
	 		self.tickerFrame.spark:SetVertexColor(self:GetColor("PlayerEnergy", 0))
	 	else
	 		self.tickerFrame.spark:SetVertexColor(self:GetColor("PlayerEnergy", self.moduleSettings.tickerAlpha))
	 	end
	end

	if not IceHUD.IceCore:ShouldUseDogTags() then
		-- extra hack for whiny rogues (are there other kind?)
		local displayPercentage = self.manaPercentage
		if (self.manaType == 3) then
			displayPercentage = self.mana
		else
			displayPercentage = math.floor(displayPercentage * 100)
		end
		self:SetBottomText1(displayPercentage)


		local amount = self:GetFormattedText(self.mana, self.maxMana)

		-- druids get a little shorted string to make room for druid mana in forms
		if (self.unitClass == "DRUID" and self.manaType ~= 0) then
			amount = self:GetFormattedText(self.mana)
		end
		self:SetBottomText2(amount, color)
	end
end


-- OVERRIDE
function PlayerMana.prototype:UpdateBar(scale, color, alpha)
	self.noFlash = (self.manaType ~= 0)

	PlayerMana.super.prototype.UpdateBar(self, scale, color, alpha)
end



function PlayerMana.prototype:UpdateEnergy(unit)
	if (unit and (unit ~= self.unit)) then
		return
	end

	self.previousEnergy = UnitMana(self.unit)
	self:Update(unit)

	if self:ShouldUseTicker() and
		((not (self.previousEnergy) or (self.previousEnergy <= UnitMana(self.unit))) and
		(self.moduleSettings.tickerEnabled) and self.manaType == 3) then
			self.tickStart = GetTime()
			self.tickerFrame:Show()
	end
end


function PlayerMana.prototype:EnergyTick()
	if not self:ShouldUseTicker() then
		return
	end

	if not (self.tickStart) then
		self.tickerFrame:Hide()
		return
	end
	
	local now = GetTime()
	local elapsed = now - self.tickStart
	
	if (elapsed > 2) then
		self.tickStart = now
	end
	
	local pos = elapsed / 2
	local y = pos * (self.settings.barHeight-2)
	
	if (self.moduleSettings.side == IceCore.Side.Left) then
		self.tickerFrame.spark:SetTexCoord(1, 0, 1-pos-0.01, 1-pos)
	else
		self.tickerFrame.spark:SetTexCoord(0, 1, 1-pos-0.01, 1-pos)
	end
	self.tickerFrame.spark:SetHeight(self.settings.barHeight * 0.01)
	
	self.tickerFrame:SetPoint("BOTTOMLEFT", self.frame, "BOTTOMLEFT", 0, y)
end


function PlayerMana.prototype:CreateTickerFrame()
	if not self:ShouldUseTicker() then
		return
	end

	if not (self.tickerFrame) then
		self.tickerFrame = CreateFrame("Frame", nil, self.barFrame)
	end
	
	self.tickerFrame:SetFrameStrata("BACKGROUND")
	self.tickerFrame:SetWidth(self.settings.barWidth)
	self.tickerFrame:SetHeight(self.settings.barHeight)
	
	if not (self.tickerFrame.spark) then
		self.tickerFrame.spark = self.tickerFrame:CreateTexture(nil, "BACKGROUND")
		self.tickerFrame:Hide()
	end
	
	self.tickerFrame.spark:SetTexture(IceElement.TexturePath .. self:GetMyBarTexture())
	self.tickerFrame.spark:SetBlendMode("ADD")
	self.tickerFrame.spark:ClearAllPoints()
	self.tickerFrame.spark:SetPoint("BOTTOMLEFT",self.tickerFrame,"BOTTOMLEFT")
	self.tickerFrame.spark:SetPoint("BOTTOMRIGHT",self.tickerFrame,"BOTTOMRIGHT")
	self.tickerFrame.spark:SetHeight(0)

	self.tickerFrame.spark:SetVertexColor(self:GetColor("PlayerEnergy", self.moduleSettings.tickerAlpha))
	
	self.tickerFrame:ClearAllPoints()
	self.tickerFrame:SetPoint("BOTTOMLEFT", self.frame, "BOTTOMLEFT", 0, 0)
end


-- Load us up
IceHUD.PlayerMana = PlayerMana:new()
