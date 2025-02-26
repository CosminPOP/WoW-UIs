--[[ TinyTip by Thrae
-- 
--
-- Korean Localization
-- 
-- TinyTipLocale should be defined in your FIRST localization
-- code.
--]]

if TinyTipExtrasLocale and TinyTipExtrasLocale == "koKR" then
	-- TinyTipTargets
	TinyTipTargetsLocale_Targeting		= "현재 대상"
	TinyTipTargetsLocale_YOU			= "<<"..UnitName("player")..">>"
	TinyTipTargetsLocale_TargetedBy	= "대상지정자"

	TinyTipTargetsLocale_Unknown	= "알수없음"

	-- TinyTipExtras core
	TinyTipExtrasLocale_Buffs = "버프"
	TinyTipExtrasLocale_DispellableDebuffs = "해제 가능한 디버프"
	TinyTipExtrasLocale_DebuffMap = {
		["Magic"] = "|cFF5555FF마법|r",
		["Poison"] = "|cFFFF5555독|r",
		["Curse"] = "|cFFFF22FF저주|r",
		["Disease"] = "|cFF555555질병|r" }

	TinyTipExtrasLocale = nil -- we no longer need this
end
