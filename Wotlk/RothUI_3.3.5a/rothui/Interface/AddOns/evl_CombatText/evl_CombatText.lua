
-- use duke sounds 0/1 (off/on)
local useduke = 0

local spreeSounds = {
	[3] = "Killing_Spree",
	[4] = "Dominating",
	[5] = "Mega_Kill",
	[6] = "Unstoppable",
	[7] = "Wicked_Sick",
	[8] = "Monster_Kill",
	[9] = "Ludicrous_Kill",
	[10] = "God_Like",
	[11] = "Holy_Shit"
}

local multiSounds = {
	[2] = "Double_Kill",
	[3] = "Triple_Kill",
}

local dukeSounds = {
  [1] = "duke\\diesob03.wav",
  [2] = "duke\\eatsht01.wav",
  [3] = "duke\\getsom1a.wav",
  [4] = "duke\\gmeovr05.wav",
  [5] = "duke\\gothrt01.wav",
  [6] = "duke\\hail01.wav",
  [7] = "duke\\happen01.wav",
  [8] = "duke\\holycw01.wav",
  [9] = "duke\\holysh02.wav",
  [10] = "duke\\imgood12.wav",
  [11] = "duke\\needed03.wav",
  [12] = "duke\\piece02.wav",
  [13] = "duke\\sohelp02.wav",
  [14] = "duke\\sukit01.wav",
  [15] = "duke\\termin01.wav",
}

-- Override default Blizzard strings
ENTERING_COMBAT = "Entering combat!"
LEAVING_COMBAT = "Leaving combat!"
HEALTH_LOW = "Oh Shit!"

local MULTI_KILL_HOLD_TIME = 30
--local EXTRA_ATTACK_TRIGGER = "You gain 1 extra attack"

local killingStreak = 0
local multiKill = 0
local lastKillTime = 0
local lastUpdate = 0
local pendingSound

local bit_band = bit.band
local bit_bor = bit.bor

local function hasFlag(flags, flag)
	return bit_band(flags, flag) == flag
end

local onEvent = function(self, event, ...)
	self[event](self, event, ...)
end

local onUpdate = function(self, elapsed)
	lastUpdate = lastUpdate + elapsed
	
	if lastUpdate > 2 then
		lastUpdate = 0
		
		if pendingSound then
			PlaySoundFile(pendingSound)
			pendingSound = nil
		end
	end
end

evl_CombatText = CreateFrame("Frame")
evl_CombatText:SetScript("OnEvent", onEvent)
evl_CombatText:SetScript("OnUpdate", onUpdate)
evl_CombatText:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
evl_CombatText:RegisterEvent("PLAYER_DEAD")
evl_CombatText:RegisterEvent("ADDON_LOADED")

function evl_CombatText:ADDON_LOADED(event, addonName)
	-- Override default Blizzard colors if present
	if addonName == "Blizzard_CombatText" then
		-- We could set the table but we just want to change color and Blizzard frequently changes this format
		COMBAT_TEXT_TYPE_INFO["ENTERING_COMBAT"].r = 1
		COMBAT_TEXT_TYPE_INFO["ENTERING_COMBAT"].g = 1
		COMBAT_TEXT_TYPE_INFO["ENTERING_COMBAT"].b = 1
		COMBAT_TEXT_TYPE_INFO["LEAVING_COMBAT"].r = 1
		COMBAT_TEXT_TYPE_INFO["LEAVING_COMBAT"].g = 1
		COMBAT_TEXT_TYPE_INFO["LEAVING_COMBAT"].b = 1
		COMBAT_TEXT_TYPE_INFO["COMBO_POINTS"].r = 0.7
		COMBAT_TEXT_TYPE_INFO["COMBO_POINTS"].g = 0.7
		COMBAT_TEXT_TYPE_INFO["COMBO_POINTS"].b = 1
		
		self:UnregisterEvent("ADDON_LOADED")
	end
end

function evl_CombatText:PLAYER_DEAD()
	killingStreak = 0
end

function evl_CombatText:COMBAT_LOG_EVENT_UNFILTERED(event, timestamp, eventType, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, ...)
	-- Killing blows
	if eventType == "PARTY_KILL" and hasFlag(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) and hasFlag(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) then
		if COMBAT_TEXT_TYPE_INFO then
			CombatText_AddMessage("Killing Blow! (" .. destName .. ")", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, nil, nil)
		end

		local now = GetTime()
		
		if lastKillTime + MULTI_KILL_HOLD_TIME > now then
			multiKill = multiKill + 1
		else
			multiKill = 1
		end
		
		lastKillTime = now
		killingStreak = killingStreak + 1
		
		self:PlaySounds()
		
	elseif eventType == "PARTY_KILL" and hasFlag(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) and useduke == 1 then
    local now = GetTime()
    if (now - MULTI_KILL_HOLD_TIME) > lastKillTime then
      lastKillTime = now
      PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\"..dukeSounds[math.random(1,15)])
    end
	end
	
	-- Interrupts
	if eventType == "SPELL_INTERRUPT" and hasFlag(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) then
		local spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool = ...
		CombatText_AddMessage(format("%s Interrupted!", extraSpellName), COMBAT_TEXT_SCROLL_FUNCTION, .1, .1, 1, nil, nil)
	end
	
	if eventType == "SPELL_AURA_APPLIED" and hasFlag(destFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) then
		local spellID, spellName = ...
		
		-- Clearcasting
		if spellName == "Clearcasting" then
			CombatText_AddMessage("Clearcasting!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
		elseif spellName == "Sichern und Laden" then
			CombatText_AddMessage("Lock'n load!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
			PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\groovy02.wav")
		elseif spellName == "Freizaubern" then
			CombatText_AddMessage("Clearcasting!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
			PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\groovy02.wav")
		elseif spellName == "Schattentrance" then
			CombatText_AddMessage("Schattentanz!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
			PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\groovy02.wav")
		-- Slam!
		elseif spellName == "Slam!" then
			CombatText_AddMessage("Slam!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
		elseif spellName == "Zerschmettern!" then
			CombatText_AddMessage("Slam!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
			PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\groovy02.wav")
		elseif spellName == "Schildblock" then
			CombatText_AddMessage("BLOCK THAT SHIT!", COMBAT_TEXT_SCROLL_FUNCTION, .7, .7, 1, "crit", nil)
			PlaySoundFile("Interface\\AddOns\\evl_CombatText\\sounds\\duke\\sohelp02.wav")
		end
	end
end

-- Play sounds
function evl_CombatText:PlaySounds()
	local path = "Interface\\AddOns\\evl_CombatText\\sounds\\%s.mp3"
	local multiFileName = multiSounds[math.min(3, multiKill)]
	local spreeFileName = spreeSounds[math.min(11, killingStreak)]
	
	if multiFileName then
		PlaySoundFile(string.format(path, multiFileName))
	end
	
	if spreeFileName then
		local spreeFilePath = string.format(path, spreeFileName)

		if not multiFileName then
			PlaySoundFile(spreeFilePath)
		else
			pendingSound = spreeFilePath
		end
	end
end