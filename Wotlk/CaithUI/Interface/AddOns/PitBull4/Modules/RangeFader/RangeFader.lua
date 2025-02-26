if select(6, GetAddOnInfo("PitBull4_" .. (debugstack():match("[o%.][d%.][u%.]les\\(.-)\\") or ""))) ~= "MISSING" then return end

local PitBull4 = _G.PitBull4
if not PitBull4 then
	error("PitBull4_RangeFader requires PitBull4")
end

local L = PitBull4.L

local PitBull4_RangeFader = PitBull4:NewModule("RangeFader", "AceTimer-3.0")

PitBull4_RangeFader:SetModuleType("fader")
PitBull4_RangeFader:SetName(L["Range fader"])
PitBull4_RangeFader:SetDescription(L["Make the unit frame fade if out of range."])
PitBull4_RangeFader:SetDefaults({
	enabled = false,
	out_of_range_opacity = 0.6,
})

function PitBull4_RangeFader:OnEnable()
	self:ScheduleRepeatingTimer("UpdateNonWacky", 0.7)
end

local friendly_is_in_range, pet_is_in_range, enemy_is_in_range
local enemy_is_in_long_range
local distanceCheckFunctionLow
do
	local friendly_spells = {}
	local pet_spells = {}
	local enemy_spells = {}
	local long_enemy_spells = {}
	local res_spells = {}
	
	local _,class = UnitClass("player")
	
	if class == "PRIEST" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(589) -- Shadow Word: Pain
		friendly_spells[#friendly_spells+1] = GetSpellInfo(2050) -- Lesser Heal
		res_spells[#res_spells+1] = GetSpellInfo(2006) -- Resurrection
	elseif class == "DRUID" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(33786) -- Cyclone
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(5176) -- Wrath
		friendly_spells[#friendly_spells+1] = GetSpellInfo(5185) -- Healing Touch
		res_spells[#res_spells+1] = GetSpellInfo(50769) -- Revive 
		res_spells[#res_spells+1] = GetSpellInfo(20484) -- Rebirth 
	elseif class == "PALADIN" then
		friendly_spells[#friendly_spells+1] = GetSpellInfo(635) -- Holy Light
		enemy_spells[#enemy_spells+1] = GetSpellInfo(62124) -- Hand of Reckoning
		-- Holy Paladins may have a talent to increase the range of Judgement of Light and
		-- Judgement of Wisdom to 40yds so put Judgement of Light in long_enemy_spells
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(20271) -- Judgement of Light
		res_spells[#res_spells+1] = GetSpellInfo(7328) -- Redemption 
	elseif class == "SHAMAN" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(8042) -- Earth Shock 
		long_enemy_spells[#enemy_spells+1] = GetSpellInfo(403) -- Lightning Bolt
		friendly_spells[#friendly_spells+1] = GetSpellInfo(331) -- Healing Wave
		res_spells[#res_spells+1] = GetSpellInfo(2008) -- Ancestral Spirit 
	elseif class == "WARLOCK" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(5782) -- Fear
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(172) -- Corruption
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(686) -- Shadow Bolt
		pet_spells[#pet_spells+1] = GetSpellInfo(755) -- Health Funnel
		friendly_spells[#friendly_spells+1] = GetSpellInfo(5697) -- Unending Breath
	elseif class == "MAGE" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(2136) -- Fire Blast
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(133) -- Fireball
		friendly_spells[#friendly_spells+1] = GetSpellInfo(475) -- Remove Curse
	elseif class == "HUNTER" then
		pet_spells[#pet_spells+1] = GetSpellInfo(136) -- Mend Pet
		enemy_spells[#enemy_spells+1] = GetSpellInfo(75) -- Auto Shot
	elseif class == "DEATHKNIGHT" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(49576) -- Death Grip
		friendly_spells[#friendly_spells+1] = GetSpellInfo(49016) -- Hysteria
		res_spells[#res_spells+1] = GetSpellInfo(61999) -- Raise Ally 
	elseif class == "ROGUE" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(2094) -- Blind 
		long_enemy_spells[#long_enemy_spells+1] = GetSpellInfo(1725) -- Distract
		friendly_spells[#friendly_spells+1] = GetSpellInfo(57934) -- Tricks of the Trade
	elseif class == "WARRIOR" then
		enemy_spells[#enemy_spells+1] = GetSpellInfo(5246) -- Intimidating Shout
		enemy_spells[#enemy_spells+1] = GetSpellInfo(100) -- Charge
		long_enemy_spells[#friendly_spells+1] = GetSpellInfo(355) -- Taunt
		friendly_spells[#friendly_spells+1] = GetSpellInfo(3411) -- Intervene
	end
	
	function friendly_is_in_range(unit)
		if CheckInteractDistance(unit, 2) then
			return true
		end
		
		if UnitIsDeadOrGhost(unit) then
			for _, name in ipairs(res_spells) do
				if IsSpellInRange(name, unit) == 1 then
					return true
				end
			end

			-- Only check range for resurrection spells if the
			-- unit is dead.
			return false
		end

		for _, name in ipairs(friendly_spells) do
			if IsSpellInRange(name, unit) == 1 then
				return true
			end
		end
		
		return false
	end
	
	function pet_is_in_range(unit)
		if CheckInteractDistance(unit, 2) then
			return true
		end
		
		for _, name in ipairs(friendly_spells) do
			if IsSpellInRange(name, unit) == 1 then
				return true
			end
		end
		for _, name in ipairs(pet_spells) do
			if IsSpellInRange(name, unit) == 1 then
				return true
			end
		end
		
		return false
	end
	
	function enemy_is_in_range(unit)
		if CheckInteractDistance(unit, 2) then
			return true
		end
		
		for _, name in ipairs(enemy_spells) do
			if IsSpellInRange(name, unit) == 1 then
				return true
			end
		end
		
		return false
	end
	
	function enemy_is_in_long_range(unit)
		for _, name in ipairs(long_enemy_spells) do
			if IsSpellInRange(name, unit) == 1 then
				return true
			end
		end
		
		return false
	end
end

function PitBull4_RangeFader:GetOpacity(frame)
	local unit = frame.unit
	if UnitIsEnemy("player", unit) then
		if enemy_is_in_range(unit) then
			return 1
		elseif enemy_is_in_long_range(unit) then
			return (self:GetLayoutDB(frame).out_of_range_opacity + frame.layout_db.opacity_max) / 2
		else
			return self:GetLayoutDB(frame).out_of_range_opacity
		end
	elseif UnitIsUnit(unit, "pet") then
		if pet_is_in_range(unit) then
			return 1
		else
			return self:GetLayoutDB(frame).out_of_range_opacity
		end
	else
		if friendly_is_in_range(unit) then
			return 1
		else
			return self:GetLayoutDB(frame).out_of_range_opacity
		end
	end
end

PitBull4_RangeFader:SetLayoutOptionsFunction(function(self)
	return 'out_of_range', {
		type = 'range',
		name = L["Out-of-range opacity"],
		desc = L["The opacity to display if the player is out of range of the unit."],
		min = 0,
		max = 1,
		isPercent = true,
		get = function(info)
			local db = PitBull4.Options.GetLayoutDB(self)

			return db.out_of_range_opacity
		end,
		set = function(info, value)
			local db = PitBull4.Options.GetLayoutDB(self)

			db.out_of_range_opacity = value

			PitBull4.Options.UpdateFrames()
			PitBull4:RecheckAllOpacities()
		end,
		step = 0.01,
		bigStep = 0.05,
	}
end)
