-- AtlasLoot loot tables esES locale file
-- NOTE: THIS FILE IS AUTO-GENERATED BY A TOOL, ANY MANUALLY CHANGE MIGHT BE OVERWRITTEN.
-- $Id: WorldRaidBosses.es.lua 78395 2008-07-14 15:22:20Z kurax $

if GetLocale() == "esES" then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWBItems"][category] or #AtlasLoot_Data["AtlasLootWBItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWBItems"][category][i][3] = data[i] end end data = nil end

end