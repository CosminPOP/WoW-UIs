-- Copyright � 2006 Mazin Assanie
-- All Rights Reserved.
-- 
-- Permission to use, copy, modify, and distribute this software in any way
-- is not granted without expressed written agreement.  In the case that it
-- is granted, the above copyright notice and this paragraph must appear in
-- all copies, modifications, and distributions.
--
-- To contact the author of this work, use mazzlefizz@gmail.com 
-- For more information on copyright, visit http://copyright.gov/ or http://whatiscopyright.org/
--

function Setup_DART125(profileName)
    if (DART_Settings and DART_Settings[profileName]) then
        DART_Settings[profileName][1] = {
			["drawlayer"] = "ARTWORK",
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 0,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 0,
			["attachframe"] = {
				[1] = "UIParent",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["scripts"] = {
			},
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["scale"] = 1,
			["height"] = 238,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\Bottom1",
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 7,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["attachto"] = {
				[1] = 7,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 1,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["width"] = 470,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["bottom"] = "0",
				["right"] = 5,
				["left"] = 5,
			},
			["name"] = "Mazzle Bottom1",
			["color"] = {
				["r"] = 0.7058823529411764,
				["g"] = 0.7333333333333333,
				["b"] = 0.7215686274509804,
			},
			["xoffset"] = {
				[1] = 0,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["padding"] = 0,
			["hidebg"] = 1,
			["yoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][2] = {
			["drawlayer"] = "ARTWORK",
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			["attachframe"] = {
				[1] = "DART_Texture_1",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["scripts"] = {
			},
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["scale"] = 1,
			["height"] = 238,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\Bottom2",
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 7,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["attachto"] = {
				[1] = 9,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 1,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["width"] = 319,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = "0",
				["edgeSize"] = "0",
				["tileSize"] = "0",
				["bottom"] = "0",
				["right"] = "0",
				["left"] = "0",
			},
			["name"] = "Mazzle Bottom2",
			["color"] = {
				["r"] = 0.7058823529411764,
				["g"] = 0.7333333333333333,
				["b"] = 0.7215686274509804,
			},
			["xoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["padding"] = 0,
			["hidebg"] = true,
			["yoffset"] = {
				[1] = 0,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][3] = {
			["drawlayer"] = "ARTWORK",
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			["attachframe"] = {
				[1] = "DART_Texture_2",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["scripts"] = {
			},
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["scale"] = 1,
			["height"] = 238,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\Bottom3",
			["borderalpha"] = 1,
			["attachpoint"] = {
				[1] = 7,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["attachto"] = {
				[1] = 9,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 1,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["width"] = 319,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["bottom"] = 5,
				["right"] = 5,
				["left"] = 5,
			},
			["name"] = "Mazzle Bottom3",
			["color"] = {
				["r"] = 0.7058823529411764,
				["g"] = 0.7333333333333333,
				["b"] = 0.7215686274509804,
			},
			["xoffset"] = {
				[1] = 0,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["padding"] = 0,
			["hidebg"] = true,
			["yoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][4] = {
			["drawlayer"] = "ARTWORK",
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 1,
			["color"] = {
				["r"] = 0.7058823529411764,
				["g"] = 0.7333333333333333,
				["b"] = 0.7215686274509804,
			},
			["attachpoint"] = {
				[1] = 9,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["attachframe"] = {
				[1] = "UIParent",
			},
			["framelevel"] = 1,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0,
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["scripts"] = {
			},
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\Bottom4",
			["height"] = 238,
			["parent"] = "UIParent",
			["attachto"] = {
				[1] = 9,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["highlightcolor"] = {
				["r"] = 0.9490196078431372,
				["g"] = 1,
				["b"] = 0.9647058823529412,
			},
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["bottom"] = "0",
				["right"] = 5,
				["left"] = 5,
			},
			["width"] = 470,
			["alpha"] = 1,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["name"] = "Mazzle Bottom4",
			["scale"] = 1,
			["xoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["padding"] = 0,
			["hidebg"] = 1,
			["yoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][5] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0.5843137254901961,
				["g"] = 0,
				["b"] = 0.00392156862745098,
			},
			["borderalpha"] = 1,
			["parent"] = "DUF_TargetFrame",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE", ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			[4] = 19,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["name"] = "Mazzle Target Cave",
			["height"] = 256,
			["yoffset"] = {
				[1] = 149,
				[2] = "0",
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "BACKGROUND",
			["scale"] = 0.8100000000000001,
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "UIParent",
				[2] = "",
			},
			["framelevel"] = 2,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\FloatingCave",
			["bordercolor"] = {
				["r"] = 0.5294117647058824,
				["g"] = 0.5333333333333333,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 8,
				[2] = 3,
				[3] = 5,
				[4] = 5,
			},
			["Backdrop"] = {
				["top"] = "0",
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["bottom"] = "0",
				["right"] = 5,
				["left"] = "5",
			},
			["alpha"] = 1,
			["width"] = 256,
			["attachto"] = {
				[1] = 8,
				[2] = 1,
				[3] = 5,
				[4] = 5,
			},
			["color"] = {
				["r"] = 0.5294117647058824,
				["g"] = 0.5529411764705883,
				["b"] = 0.5450980392156862,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["hidebg"] = 1,
			["scripts"] = {
			},
			["padding"] = 0,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["justifyH"] = 5,
				["attachpoint"] = 2,
				["fontsize"] = 19,
				["attachto"] = 2,
				["height"] = 20,
				["justifyV"] = 5,
				["xoffset"] = 0,
				["yoffset"] = 0,
			},
			["xoffset"] = {
				[1] = 0,
				[2] = "0",
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][6] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			[4] = 1,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["name"] = "HUD Player Health",
			["height"] = 256,
			["yoffset"] = {
				[1] = 535,
				[2] = "0",
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "BACKGROUND",
			["scale"] = 1,
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "UIParent",
				[2] = "",
			},
			["framelevel"] = 1,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\HL",
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = -1,
				["color"] = {
					["r"] = 0.301961,
					["g"] = 0.121569,
					["b"] = 1,
				},
				["text"] = "Text",
				["alpha"] = 1,
				["width"] = 58,
				["attachpoint"] = 5,
				["justifyV"] = 8,
				["fontsize"] = 20,
				["attachto"] = 2,
				["height"] = 106,
				["xoffset"] = -3,
				["justifyH"] = 4,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 8,
				[2] = 3,
				[3] = 5,
				[4] = 5,
			},
			["attachto"] = {
				[1] = 8,
				[2] = 9,
				[3] = 5,
				[4] = 5,
			},
			["alpha"] = 0.5,
			["width"] = 128,
			["color"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["hidebg"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["scripts"] = {
			},
			["padding"] = 0,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["xoffset"] = {
				[1] = -100,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][7] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			[4] = 1,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["name"] = "HUD Player Background",
			["height"] = 256,
			["yoffset"] = {
				[1] = 0,
				[2] = -5,
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "BACKGROUND",
			["scale"] = 1,
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "DART_Texture_6",
				[2] = "",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\HBL",
			["bordercolor"] = {
				["r"] = 0.09019607843137255,
				["g"] = 1,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 8,
				[2] = 8,
				[3] = 5,
				[4] = 5,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["alpha"] = 0.1,
			["width"] = 128,
			["attachto"] = {
				[1] = 8,
				[2] = 8,
				[3] = 5,
				[4] = 5,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["hidebg"] = 1,
			["scripts"] = {
			},
			["padding"] = 0,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = "-1",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = "-3",
				["justifyH"] = 5,
				["hide"] = true,
			},
			["xoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][8] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["parent"] = "UIParent",
			["attachpoint"] = {
				[1] = 8,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["name"] = "HUD Player Mana",
			["height"] = 256,
			["yoffset"] = {
				[1] = -73,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "LOW",
			["scale"] = 1,
			["coords"] = {
				[1] = 0,
				[2] = 1,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "DART_Texture_6",
			},
			["framelevel"] = 1,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["scripts"] = {
			},
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\ML",
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0.0196078431372549,
			},
			["borderalpha"] = 1,
			["alpha"] = 0.5,
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["attachto"] = {
				[1] = 8,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["Backdrop"] = {
				["top"] = 12,
				["edgeSize"] = 32,
				["tileSize"] = 32,
				["tile"] = true,
				["right"] = 12,
				["left"] = 11,
				["bottom"] = 11,
			},
			["width"] = 64,
			["bordertexture"] = "Interface\\DialogFrame\\UI-DialogBox-Border",
			["hidebg"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["xoffset"] = {
				[1] = -6,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["padding"] = 0,
			["highlightalpha"] = 0.3,
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
		}
        DART_Settings[profileName][9] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 0.44,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 0.62,
			[4] = 1,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["name"] = "HUD Target Health",
			["height"] = 256,
			["yoffset"] = {
				[1] = "0",
				[2] = "0",
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "LOW",
			["scale"] = 1,
			["coords"] = {
				[1] = 1,
				[2] = 0,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "DART_Texture_6",
				[2] = "",
			},
			["framelevel"] = 1,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 8,
				[2] = 3,
				[3] = 5,
				[4] = 5,
			},
			["attachto"] = {
				[1] = 8,
				[2] = 9,
				[3] = 5,
				[4] = 5,
			},
			["alpha"] = 0.5,
			["width"] = 128,
			["color"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["hidebg"] = 1,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\HL",
			["scripts"] = {
			},
			["padding"] = 0,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = -1,
				["color"] = {
					["r"] = 0.301961,
					["g"] = 0.121569,
					["b"] = 1,
				},
				["text"] = "Text",
				["alpha"] = 1,
				["width"] = 58,
				["attachpoint"] = 5,
				["justifyV"] = 8,
				["fontsize"] = 20,
				["attachto"] = 2,
				["height"] = 106,
				["xoffset"] = -3,
				["justifyH"] = 4,
				["hide"] = true,
			},
			["xoffset"] = {
				[1] = "200",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][10] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			[4] = 1,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["name"] = "HUD Target Background",
			["height"] = 256,
			["yoffset"] = {
				[1] = "0",
				[2] = "0",
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "BACKGROUND",
			["scale"] = 1,
			["coords"] = {
				[1] = 1,
				[2] = 0,
				[3] = 0,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "DART_Texture_9",
				[2] = "",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\HBL",
			["bordercolor"] = {
				["r"] = 0.09019607843137255,
				["g"] = 1,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["attachpoint"] = {
				[1] = 8,
				[2] = 8,
				[3] = 5,
				[4] = 5,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["alpha"] = 0.1,
			["width"] = 128,
			["attachto"] = {
				[1] = 8,
				[2] = 8,
				[3] = 5,
				[4] = 5,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["hidebg"] = 1,
			["scripts"] = {
			},
			["padding"] = 0,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = "-1",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = "-3",
				["justifyH"] = 5,
				["hide"] = true,
			},
			["xoffset"] = {
				[1] = "0",
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
		}
        DART_Settings[profileName][11] = {
			["drawlayer"] = "ARTWORK",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["disablemouse"] = 1,
			["parent"] = "UIParent",
			["attachpoint"] = {
				[1] = 8,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["yoffset"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["alpha"] = 1,
				["width"] = 100,
				["attachpoint"] = 2,
				["justifyV"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 5,
				["hide"] = true,
			},
			["name"] = "HUD Target Mana",
			["xoffset"] = {
				[1] = 6,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["yoffset"] = {
				[1] = -73,
				[2] = 0,
				[3] = 0,
				[4] = 0,
			},
			["strata"] = "LOW",
			["scale"] = 1,
			["coords"] = {
				[1] = 1,
				[2] = 0,
				[3] = nil,
				[4] = 1,
			},
			["attachframe"] = {
				[1] = "DART_Texture_9",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["attachto"] = {
				[1] = 8,
				[2] = 5,
				[3] = 5,
				[4] = 5,
			},
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0.0196078431372549,
			},
			["borderalpha"] = 1,
			["Backdrop"] = {
				["top"] = 12,
				["edgeSize"] = 32,
				["tileSize"] = 32,
				["tile"] = true,
				["right"] = 12,
				["left"] = 11,
				["bottom"] = 11,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightalpha"] = 0.3,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["width"] = 64,
			["alpha"] = 0.5,
			["scripts"] = {
			},
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\ML",
			["hidebg"] = 1,
			["bordertexture"] = "Interface\\DialogFrame\\UI-DialogBox-Border",
			["padding"] = 0,
			["disableMousewheel"] = 1, ["blendmode"] = "DISABLE",
			["bgalpha"] = 1,
			["height"] = nil,
		}
    end
end