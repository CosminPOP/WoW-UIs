
Blizzard_CombatLog_Filters = {
	["filters"] = {
		{
			["quickButtonName"] = "Self",
			["onQuickBar"] = true,
			["quickButtonDisplay"] = {
				["party"] = true,
				["solo"] = true,
				["raid"] = true,
			},
			["tooltip"] = "Show messages of actions done by you and done to you.",
			["name"] = "Self",
			["colors"] = {
				["schoolColoring"] = {
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					}, -- [1]
					{
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 0.9,
						["r"] = 1,
					}, -- [2]
					nil, -- [3]
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					}, -- [4]
					[16] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0.5,
					},
					[64] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					[32] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					[8] = {
						["a"] = 1,
						["b"] = 0.3,
						["g"] = 1,
						["r"] = 0.3,
					},
					[0] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["highlightedEvents"] = {
					["PARTY_KILL"] = true,
				},
				["eventColoring"] = {
				},
				["defaults"] = {
					["damage"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["spell"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["unitColoring"] = {
					[17681] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32334] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[2147483648] = {
						["a"] = 1,
						["b"] = 0.75,
						["g"] = 0.75,
						["r"] = 0.75,
					},
					[12561] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32078] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32558] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32542] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.64,
						["r"] = 0.34,
					},
				},
			},
			["settings"] = {
				["abilityHighlighting"] = true,
				["lineColoring"] = true,
				["spellBraces"] = true,
				["sourceColoring"] = false,
				["showHistory"] = true,
				["destColoring"] = false,
				["amountHighlighting"] = true,
				["schoolNameColoring"] = false,
				["abilitySchoolColoring"] = true,
				["sourceBraces"] = false,
				["missColoring"] = true,
				["itemBraces"] = false,
				["abilityColoring"] = true,
				["amountActorColoring"] = false,
				["textMode"] = "A",
				["destBraces"] = false,
				["timestamp"] = false,
				["actionColoring"] = false,
				["fullText"] = true,
				["lineColorPriority"] = 1,
				["lineHighlighting"] = true,
				["abilityActorColoring"] = false,
				["actionHighlighting"] = false,
				["schoolNameActorColoring"] = false,
				["schoolNameHighlighting"] = true,
				["unitBraces"] = false,
				["noMeleeSwingColoring"] = false,
				["hideBuffs"] = false,
				["hideDebuffs"] = false,
				["amountSchoolColoring"] = false,
				["amountColoring"] = true,
				["unitColoring"] = false,
				["unitIcons"] = true,
				["timestampFormat"] = "%H:%M:%S",
				["braces"] = true,
				["actionActorColoring"] = false,
			},
			["hasQuickButton"] = true,
			["filters"] = {
				{
					["eventList"] = {
						["SPELL_PERIODIC_MISSED"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["SPELL_LEECH"] = true,
						["SPELL_AURA_BROKEN"] = true,
						["UNIT_DIED"] = true,
						["SPELL_PERIODIC_ENERGIZE"] = true,
						["SPELL_INSTAKILL"] = true,
						["SPELL_PERIODIC_DAMAGE"] = true,
						["SPELL_PERIODIC_HEAL"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_DAMAGE"] = true,
						["ENVIRONMENTAL_DAMAGE"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SWING_MISSED"] = true,
						["SPELL_AURA_REFRESH"] = true,
						["SPELL_STOLEN_AURA"] = true,
						["SPELL_DISPELLED_AURA"] = true,
						["SPELL_AURA_REMOVED_DOSE"] = true,
						["SPELL_PERIODIC_LEECH"] = true,
						["SPELL_AURA_APPLIED_DOSE"] = true,
						["SPELL_AURA_REMOVED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SWING_DAMAGE"] = true,
						["SPELL_AURA_BROKEN_SPELL"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["RANGE_MISSED"] = true,
						["SPELL_HEAL"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_AURA_APPLIED"] = true,
						["SPELL_PERIODIC_DRAIN"] = true,
						["SPELL_DRAIN"] = true,
					},
					["sourceFlags"] = {
						[17681] = true,
						[32334] = false,
						[2147483648] = false,
						[12561] = true,
						[32078] = true,
						[32558] = false,
						[32542] = false,
					},
				}, -- [1]
				{
					["destFlags"] = {
						[17681] = true,
						[32334] = false,
						[2147483648] = false,
						[12561] = true,
						[32078] = true,
						[32542] = false,
						[32558] = false,
					},
					["eventList"] = {
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["SPELL_LEECH"] = true,
						["UNIT_DIED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["SPELL_INSTAKILL"] = true,
						["SWING_MISSED"] = true,
						["SWING_DAMAGE"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_MISSED"] = true,
						["RANGE_DAMAGE"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_HEAL"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_DRAIN"] = true,
					},
				}, -- [2]
			},
		}, -- [1]
		{
			["quickButtonName"] = "Everything",
			["onQuickBar"] = true,
			["quickButtonDisplay"] = {
				["party"] = true,
				["solo"] = true,
				["raid"] = true,
			},
			["tooltip"] = "Show all combat messages.",
			["name"] = "Everything",
			["colors"] = {
				["schoolColoring"] = {
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					}, -- [1]
					{
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 0.9,
						["r"] = 1,
					}, -- [2]
					nil, -- [3]
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					}, -- [4]
					[16] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0.5,
					},
					[64] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					[32] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					[8] = {
						["a"] = 1,
						["b"] = 0.3,
						["g"] = 1,
						["r"] = 0.3,
					},
					[0] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["highlightedEvents"] = {
					["PARTY_KILL"] = true,
				},
				["eventColoring"] = {
				},
				["defaults"] = {
					["damage"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["spell"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["unitColoring"] = {
					[17681] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32334] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[2147483648] = {
						["a"] = 1,
						["b"] = 0.75,
						["g"] = 0.75,
						["r"] = 0.75,
					},
					[12561] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32078] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32558] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32542] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.64,
						["r"] = 0.34,
					},
				},
			},
			["settings"] = {
				["abilityHighlighting"] = true,
				["lineColoring"] = true,
				["spellBraces"] = false,
				["sourceColoring"] = true,
				["showHistory"] = true,
				["destColoring"] = true,
				["amountHighlighting"] = true,
				["schoolNameColoring"] = false,
				["abilitySchoolColoring"] = false,
				["sourceBraces"] = true,
				["missColoring"] = true,
				["itemBraces"] = true,
				["abilityColoring"] = false,
				["amountActorColoring"] = false,
				["textMode"] = "A",
				["destBraces"] = true,
				["timestamp"] = false,
				["actionColoring"] = false,
				["fullText"] = true,
				["lineColorPriority"] = 1,
				["lineHighlighting"] = true,
				["abilityActorColoring"] = false,
				["actionHighlighting"] = false,
				["schoolNameActorColoring"] = false,
				["schoolNameHighlighting"] = true,
				["unitBraces"] = true,
				["noMeleeSwingColoring"] = false,
				["hideBuffs"] = false,
				["hideDebuffs"] = false,
				["amountSchoolColoring"] = false,
				["amountColoring"] = false,
				["unitColoring"] = false,
				["unitIcons"] = true,
				["timestampFormat"] = "%H:%M:%S",
				["braces"] = false,
				["actionActorColoring"] = false,
			},
			["hasQuickButton"] = true,
			["filters"] = {
				{
					["eventList"] = {
						["SPELL_PERIODIC_MISSED"] = true,
						["SPELL_SUMMON"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["DAMAGE_SHIELD_MISSED"] = true,
						["SPELL_LEECH"] = true,
						["SPELL_AURA_BROKEN"] = true,
						["UNIT_DIED"] = true,
						["SPELL_PERIODIC_ENERGIZE"] = true,
						["DAMAGE_SPLIT"] = true,
						["SPELL_INSTAKILL"] = true,
						["SPELL_PERIODIC_DAMAGE"] = true,
						["SPELL_PERIODIC_HEAL"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_DAMAGE"] = true,
						["ENVIRONMENTAL_DAMAGE"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SWING_MISSED"] = true,
						["SPELL_AURA_APPLIED"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_DURABILITY_DAMAGE_ALL"] = true,
						["SPELL_CAST_START"] = true,
						["SPELL_AURA_REFRESH"] = true,
						["SPELL_PERIODIC_LEECH"] = true,
						["SPELL_DURABILITY_DAMAGE"] = true,
						["SPELL_CAST_FAILED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["RANGE_MISSED"] = true,
						["SPELL_AURA_APPLIED_DOSE"] = true,
						["SPELL_AURA_REMOVED"] = true,
						["SWING_DAMAGE"] = true,
						["SPELL_AURA_BROKEN_SPELL"] = true,
						["SPELL_CREATE"] = true,
						["SPELL_CAST_SUCCESS"] = true,
						["SPELL_HEAL"] = true,
						["SPELL_AURA_REMOVED_DOSE"] = true,
						["DAMAGE_SHIELD"] = true,
						["SPELL_PERIODIC_DRAIN"] = true,
						["SPELL_DRAIN"] = true,
					},
					["sourceFlags"] = {
						[17681] = true,
						[32334] = true,
						[2147483648] = true,
						[12561] = true,
						[32078] = true,
						[32558] = true,
						[32542] = true,
					},
				}, -- [1]
				{
					["destFlags"] = {
						[17681] = true,
						[32334] = true,
						[2147483648] = true,
						[12561] = true,
						[32078] = true,
						[32558] = true,
						[32542] = true,
					},
					["eventList"] = {
						["SPELL_PERIODIC_MISSED"] = true,
						["SPELL_SUMMON"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["DAMAGE_SHIELD_MISSED"] = true,
						["SPELL_LEECH"] = true,
						["SPELL_AURA_BROKEN"] = true,
						["UNIT_DIED"] = true,
						["SPELL_PERIODIC_ENERGIZE"] = true,
						["DAMAGE_SPLIT"] = true,
						["SPELL_INSTAKILL"] = true,
						["SPELL_PERIODIC_DAMAGE"] = true,
						["SPELL_PERIODIC_HEAL"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_DAMAGE"] = true,
						["ENVIRONMENTAL_DAMAGE"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SWING_MISSED"] = true,
						["SPELL_AURA_APPLIED"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_DURABILITY_DAMAGE_ALL"] = true,
						["SPELL_CAST_START"] = true,
						["SPELL_AURA_REFRESH"] = true,
						["SPELL_PERIODIC_LEECH"] = true,
						["SPELL_DURABILITY_DAMAGE"] = true,
						["SPELL_CAST_FAILED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["RANGE_MISSED"] = true,
						["SPELL_AURA_APPLIED_DOSE"] = true,
						["SPELL_AURA_REMOVED"] = true,
						["SWING_DAMAGE"] = true,
						["SPELL_AURA_BROKEN_SPELL"] = true,
						["SPELL_CREATE"] = true,
						["SPELL_CAST_SUCCESS"] = true,
						["SPELL_HEAL"] = true,
						["SPELL_AURA_REMOVED_DOSE"] = true,
						["DAMAGE_SHIELD"] = true,
						["SPELL_PERIODIC_DRAIN"] = true,
						["SPELL_DRAIN"] = true,
					},
				}, -- [2]
			},
		}, -- [2]
		{
			["quickButtonName"] = "What happened to me?",
			["onQuickBar"] = true,
			["quickButtonDisplay"] = {
				["party"] = true,
				["solo"] = true,
				["raid"] = true,
			},
			["tooltip"] = "Show everything done to me.",
			["name"] = "What happened to me?",
			["colors"] = {
				["schoolColoring"] = {
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					}, -- [1]
					{
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 0.9,
						["r"] = 1,
					}, -- [2]
					nil, -- [3]
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					}, -- [4]
					[16] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0.5,
					},
					[64] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					[32] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					[8] = {
						["a"] = 1,
						["b"] = 0.3,
						["g"] = 1,
						["r"] = 0.3,
					},
					[0] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["highlightedEvents"] = {
					["PARTY_KILL"] = true,
				},
				["eventColoring"] = {
				},
				["defaults"] = {
					["damage"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["spell"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["unitColoring"] = {
					[17681] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32334] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[2147483648] = {
						["a"] = 1,
						["b"] = 0.75,
						["g"] = 0.75,
						["r"] = 0.75,
					},
					[12561] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32078] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32558] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32542] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.64,
						["r"] = 0.34,
					},
				},
			},
			["settings"] = {
				["abilityHighlighting"] = true,
				["lineColoring"] = true,
				["spellBraces"] = false,
				["sourceColoring"] = true,
				["showHistory"] = true,
				["destColoring"] = true,
				["amountHighlighting"] = true,
				["schoolNameColoring"] = false,
				["abilitySchoolColoring"] = false,
				["sourceBraces"] = true,
				["missColoring"] = true,
				["itemBraces"] = true,
				["abilityColoring"] = false,
				["amountActorColoring"] = false,
				["textMode"] = "A",
				["destBraces"] = true,
				["timestamp"] = false,
				["actionColoring"] = false,
				["fullText"] = true,
				["lineColorPriority"] = 1,
				["lineHighlighting"] = true,
				["abilityActorColoring"] = false,
				["actionHighlighting"] = false,
				["schoolNameActorColoring"] = false,
				["schoolNameHighlighting"] = true,
				["unitBraces"] = true,
				["noMeleeSwingColoring"] = false,
				["hideBuffs"] = false,
				["hideDebuffs"] = false,
				["amountSchoolColoring"] = false,
				["amountColoring"] = false,
				["unitColoring"] = false,
				["unitIcons"] = true,
				["timestampFormat"] = "%H:%M:%S",
				["braces"] = false,
				["actionActorColoring"] = false,
			},
			["hasQuickButton"] = true,
			["filters"] = {
				{
					["eventList"] = {
						["SPELL_PERIODIC_MISSED"] = true,
						["SPELL_SUMMON"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["DAMAGE_SHIELD_MISSED"] = true,
						["SPELL_LEECH"] = true,
						["SPELL_AURA_BROKEN"] = true,
						["UNIT_DIED"] = true,
						["SPELL_PERIODIC_ENERGIZE"] = true,
						["DAMAGE_SPLIT"] = true,
						["SPELL_INSTAKILL"] = true,
						["SPELL_PERIODIC_DAMAGE"] = true,
						["SPELL_PERIODIC_HEAL"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_DAMAGE"] = true,
						["ENVIRONMENTAL_DAMAGE"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SWING_MISSED"] = true,
						["SPELL_AURA_APPLIED"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_DURABILITY_DAMAGE_ALL"] = true,
						["SPELL_CAST_START"] = true,
						["SPELL_AURA_REFRESH"] = true,
						["SPELL_PERIODIC_LEECH"] = true,
						["SPELL_DURABILITY_DAMAGE"] = true,
						["SPELL_CAST_FAILED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["RANGE_MISSED"] = true,
						["SPELL_AURA_APPLIED_DOSE"] = true,
						["SPELL_AURA_REMOVED"] = true,
						["SWING_DAMAGE"] = true,
						["SPELL_AURA_BROKEN_SPELL"] = true,
						["SPELL_CREATE"] = true,
						["SPELL_CAST_SUCCESS"] = true,
						["SPELL_HEAL"] = true,
						["SPELL_AURA_REMOVED_DOSE"] = true,
						["DAMAGE_SHIELD"] = true,
						["SPELL_PERIODIC_DRAIN"] = true,
						["SPELL_DRAIN"] = true,
					},
					["sourceFlags"] = {
						[17681] = false,
						[32334] = false,
						[2147483648] = false,
						[12561] = false,
						[32078] = false,
						[32558] = false,
						[32542] = false,
					},
				}, -- [1]
				{
					["destFlags"] = {
						[17681] = true,
						[12561] = true,
					},
					["eventList"] = {
						["SPELL_PERIODIC_MISSED"] = true,
						["SPELL_SUMMON"] = true,
						["SPELL_INTERRUPT"] = true,
						["UNIT_DESTROYED"] = true,
						["DAMAGE_SHIELD_MISSED"] = true,
						["SPELL_LEECH"] = true,
						["SPELL_AURA_BROKEN"] = true,
						["UNIT_DIED"] = true,
						["SPELL_PERIODIC_ENERGIZE"] = true,
						["DAMAGE_SPLIT"] = true,
						["SPELL_INSTAKILL"] = true,
						["SPELL_PERIODIC_DAMAGE"] = true,
						["SPELL_PERIODIC_HEAL"] = true,
						["PARTY_KILL"] = true,
						["SPELL_DAMAGE"] = true,
						["RANGE_DAMAGE"] = true,
						["ENVIRONMENTAL_DAMAGE"] = true,
						["SPELL_DISPEL"] = true,
						["SPELL_EXTRA_ATTACKS"] = true,
						["SPELL_MISSED"] = true,
						["SPELL_STOLEN"] = true,
						["SPELL_ENERGIZE"] = true,
						["SWING_MISSED"] = true,
						["SPELL_AURA_APPLIED"] = true,
						["ENCHANT_REMOVED"] = true,
						["SPELL_DURABILITY_DAMAGE_ALL"] = true,
						["SPELL_CAST_START"] = true,
						["SPELL_AURA_REFRESH"] = true,
						["SPELL_PERIODIC_LEECH"] = true,
						["SPELL_DURABILITY_DAMAGE"] = true,
						["SPELL_CAST_FAILED"] = true,
						["ENCHANT_APPLIED"] = true,
						["SPELL_DISPEL_FAILED"] = true,
						["RANGE_MISSED"] = true,
						["SPELL_AURA_APPLIED_DOSE"] = true,
						["SPELL_AURA_REMOVED"] = true,
						["SWING_DAMAGE"] = true,
						["SPELL_AURA_BROKEN_SPELL"] = true,
						["SPELL_CREATE"] = true,
						["SPELL_CAST_SUCCESS"] = true,
						["SPELL_HEAL"] = true,
						["SPELL_AURA_REMOVED_DOSE"] = true,
						["DAMAGE_SHIELD"] = true,
						["SPELL_PERIODIC_DRAIN"] = true,
						["SPELL_DRAIN"] = true,
					},
				}, -- [2]
			},
		}, -- [3]
		{
			["quickButtonName"] = "Kills",
			["onQuickBar"] = false,
			["quickButtonDisplay"] = {
				["party"] = true,
				["solo"] = true,
				["raid"] = true,
			},
			["tooltip"] = "Show all deaths and kills.",
			["name"] = "Kills",
			["colors"] = {
				["schoolColoring"] = {
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					}, -- [1]
					{
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 0.9,
						["r"] = 1,
					}, -- [2]
					nil, -- [3]
					{
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					}, -- [4]
					[16] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0.5,
					},
					[64] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					[32] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					[8] = {
						["a"] = 1,
						["b"] = 0.3,
						["g"] = 1,
						["r"] = 0.3,
					},
					[0] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["highlightedEvents"] = {
					["PARTY_KILL"] = true,
				},
				["eventColoring"] = {
				},
				["defaults"] = {
					["damage"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["spell"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["unitColoring"] = {
					[17681] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32334] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[2147483648] = {
						["a"] = 1,
						["b"] = 0.75,
						["g"] = 0.75,
						["r"] = 0.75,
					},
					[12561] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.7,
						["r"] = 0.7,
					},
					[32078] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32558] = {
						["a"] = 1,
						["b"] = 0.05,
						["g"] = 0.05,
						["r"] = 0.75,
					},
					[32542] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.64,
						["r"] = 0.34,
					},
				},
			},
			["settings"] = {
				["abilityHighlighting"] = true,
				["lineColoring"] = true,
				["spellBraces"] = false,
				["sourceColoring"] = true,
				["showHistory"] = true,
				["destColoring"] = true,
				["amountHighlighting"] = true,
				["schoolNameColoring"] = false,
				["abilitySchoolColoring"] = false,
				["sourceBraces"] = true,
				["missColoring"] = true,
				["itemBraces"] = true,
				["abilityColoring"] = false,
				["amountActorColoring"] = false,
				["textMode"] = "A",
				["destBraces"] = true,
				["timestamp"] = false,
				["actionColoring"] = false,
				["fullText"] = true,
				["lineColorPriority"] = 1,
				["lineHighlighting"] = true,
				["abilityActorColoring"] = false,
				["actionHighlighting"] = false,
				["schoolNameActorColoring"] = false,
				["schoolNameHighlighting"] = true,
				["unitBraces"] = true,
				["noMeleeSwingColoring"] = false,
				["hideBuffs"] = false,
				["hideDebuffs"] = false,
				["amountSchoolColoring"] = false,
				["amountColoring"] = false,
				["unitColoring"] = false,
				["unitIcons"] = true,
				["timestampFormat"] = "%H:%M:%S",
				["braces"] = false,
				["actionActorColoring"] = false,
			},
			["hasQuickButton"] = false,
			["filters"] = {
				{
					["eventList"] = {
						["PARTY_KILL"] = true,
						["UNIT_DESTROYED"] = true,
						["UNIT_DIED"] = true,
					},
					["sourceFlags"] = {
						[17681] = true,
						[32334] = true,
						[2147483648] = true,
						[12561] = true,
						[32078] = true,
						[32558] = true,
						[32542] = true,
					},
				}, -- [1]
				{
					["destFlags"] = {
						[17681] = true,
						[32334] = true,
						[2147483648] = true,
						[12561] = true,
						[32078] = true,
						[32558] = true,
						[32542] = true,
					},
					["eventList"] = {
						["PARTY_KILL"] = true,
						["UNIT_DESTROYED"] = true,
						["UNIT_DIED"] = true,
					},
				}, -- [2]
			},
		}, -- [4]
	},
	["currentFilter"] = 3,
}
Blizzard_CombatLog_Filter_Version = 4.1
