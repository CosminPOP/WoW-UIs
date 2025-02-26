local mod	= DBM:NewMod("Valithria", "DBM-Icecrown", 4)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 3848 $"):sub(12, -3))
mod:SetCreatureID(36789)
mod:SetUsedIcons(8)
mod:RegisterCombat("yell", L.YellPull)
mod:RegisterKill("yell", L.YellKill)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_TARGET"
)

local warnCorrosion		= mod:NewAnnounce("warnCorrosion", 2, 70751, false)
local warnGutSpray		= mod:NewTargetAnnounce(71283, 3, nil, mod:IsTank() or mod:IsHealer())
local warnManaVoid		= mod:NewSpellAnnounce(71741, 2, nil, not mod:IsMelee())
local warnSupression	= mod:NewSpellAnnounce(70588, 3)
local warnPortalSoon	= mod:NewSoonAnnounce(72483, 2, nil, mod:IsHealer())
local warnPortal		= mod:NewSpellAnnounce(72483, 3, nil, mod:IsHealer())
local warnPortalOpen	= mod:NewAnnounce("warnPortalOpen", 4, 72483, mod:IsHealer())

local specWarnLayWaste	= mod:NewSpecialWarningSpell(71730)

local timerLayWaste		= mod:NewBuffActiveTimer(12, 69325)
local timerNextPortal	= mod:NewCDTimer(46.5, 72483, nil, mod:IsHealer())
local timerPortalsOpen	= mod:NewTimer(10, "timerPortalsOpen", 72483, mod:IsHealer())
local timerHealerBuff	= mod:NewBuffActiveTimer(40, 70873)
local timerGutSpray		= mod:NewTargetTimer(12, 71283, nil, mod:IsTank() or mod:IsHealer())
local timerCorrosion	= mod:NewTargetTimer(6, 70751, nil, false)

local berserkTimer		= mod:NewBerserkTimer(360)--Seems to exist just kinda funny, the adds spawn rapid fast.

mod:AddBoolOption("SetIconOnBlazingSkeleton", true)

local GutSprayTargets = {}
local spamSupression = 0
local BlazingSkeleton

local function warnGutSprayTargets()
	warnGutSpray:Show(table.concat(GutSprayTargets, "<, >"))
	table.wipe(GutSprayTargets)
end

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	self:Portals()
	BlazingSkeleton = nil
	table.wipe(GutSprayTargets)
end

function mod:Portals()
	warnPortal:Show()
	warnPortalOpen:Schedule(15)
	timerPortalsOpen:Schedule(15)
	warnPortalSoon:Schedule(41)
	timerNextPortal:Start()
	self:UnscheduleMethod("Portals")
	self:ScheduleMethod(46.5, "Portals")
end

function mod:TrySetTarget()
	if DBM:GetRaidRank() >= 1 then
		for i = 1, GetNumRaidMembers() do
			if UnitGUID("raid"..i.."target") == BlazingSkeleton then
				BlazingSkeleton = nil
				SetRaidTarget("raid"..i.."target", 8)
			end
			if not BlazingSkeleton then
				break
			end
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(70754, 71748) then--Fireball (its the first spell Blazing SKeleton's usually cast upon spawning)
		if self.Options.SetIconOnBlazingSkeleton then
			BlazingSkeleton = args.sourceGUID
			self:TrySetTarget()
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(71741) then--Mana Void (spellids drycoded, will confirm later)
		warnManaVoid:Show()
	elseif args:IsSpellID(70588) and GetTime() - spamSupression > 5 then--Supression
		warnSupression:Show(args.destName)
		spamSupression = GetTime()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(70633, 71283, 72025, 72026) then--Gut Spray (spellids drycoded, will confirm later)
		GutSprayTargets[#GutSprayTargets + 1] = args.destName
		timerGutSpray:Start(args.destName)
		self:Unschedule(warnGutSprayTargets)
		self:Schedule(0.3, warnGutSprayTargets)
	elseif args:IsSpellID(70751, 71738, 72022, 72023) then--Corrosion (spellids drycoded, will confirm later)
		warnCorrosion:Show(args.spellName, args.destName, args.amount or 1)
		timerCorrosion:Start(args.destName)
	elseif args:IsSpellID(69325, 71730) then--Lay Waste (spellids drycoded, will confirm later)
		specWarnLayWaste:Show()
		timerLayWaste:Start()
		if self.Options.SetIconOnBlazingSkeleton then
			BlazingSkeleton = args.sourceGUID
			self:TrySetTarget()
		end
	elseif args:IsSpellID(70873, 71941) then	--Emerald Vigor/Twisted Nightmares (portal healers)
		if args:IsPlayer() then
			timerHealerBuff:Start()
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(70633, 71283, 72025, 72026) then--Gut Spray (spellids drycoded, will confirm later)
		timerGutSpray:Cancel(args.destName)
	elseif args:IsSpellID(69325, 71730) then--Lay Waste (spellids drycoded, will confirm later)
		timerLayWaste:Cancel()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellPortals or msg:find(L.YellPortals) then
		self:SendSync("NightmarePortal")
	end
end

function mod:OnSync(msg, arg)
	if msg == "NightmarePortal" then
		self:Portals()
	end
end

function mod:UNIT_TARGET()
	if BlazingSkeleton then
		self:TrySetTarget()
	end
end