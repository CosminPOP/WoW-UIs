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

function Setup_DABPriest125(profileName)

    if DAB_Settings then
        DAB_Settings[profileName] = {
		["defaultFont"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\",
		["EventMacros"] = {
		},
		["FrameLocs"] = {
		},
		["INITIALIZED3.1i"] = 1,
		["INITIALIZED3.1g"] = 1,
		["INITIALIZED3.1"] = 1,
		["INITIALIZED3.0H"] = 1,
		["optionsScale"] = 100,
		["ControlBox"] = {
			[1] = {
				["mcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 0.9921568627450981,
					["b"] = 0.9764705882352941,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
					[2] = "DAB_Bar_SetPage(1,1)\nDAB_Bar_SetPage(2,1)",
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Healing",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 13,
				["malpha"] = 1,
				["group"] = 10,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["Anchor"] = {
					["y"] = -25,
					["x"] = 74,
					["point"] = "TOPLEFT",
					["frame"] = "Minimap",
					["to"] = "TOPRIGHT",
				},
				["b4width"] = 1,
				["changePageType"] = 3,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 0.4352941176470588,
					["g"] = 0.4470588235294117,
					["b"] = 0.4588235294117647,
				},
				["mbgalpha"] = 1,
				["alpha"] = 1,
				["changePagePage"] = 1,
				["frameStrata"] = "LOW",
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbgcolor"] = {
					["r"] = 0.01176470588235294,
					["g"] = 0.01176470588235294,
					["b"] = 0.01176470588235294,
				},
				["changePageBar"] = 1,
				["bgcolor"] = {
					["r"] = 0.1372549019607843,
					["g"] = 0.1490196078431373,
					["b"] = 0.1529411764705883,
				},
				["width"] = 56,
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["fontsize"] = 12,
				["delay"] = 0.5,
				["mbordalpha"] = 1,
			},
			[2] = {
				["bgcolor"] = {
					["r"] = 0.1372549019607843,
					["g"] = 0.1490196078431373,
					["b"] = 0.1529411764705883,
				},
				["mbgcolor"] = {
					["r"] = 0.01176470588235294,
					["g"] = 0.01176470588235294,
					["b"] = 0.01176470588235294,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
					[2] = "DAB_Bar_SetPage(1,2)\nDAB_Bar_SetPage(2,2)",
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Offensive",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 13,
				["malpha"] = 1,
				["group"] = 10,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 12,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 4,
					["point"] = "LEFT",
					["frame"] = "DAB_ControlBox_1",
					["to"] = "RIGHT",
				},
				["b4width"] = 1,
				["changePageType"] = 3,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 0.4352941176470588,
					["g"] = 0.4470588235294117,
					["b"] = 0.4588235294117647,
				},
				["mbgalpha"] = 1,
				["frameStrata"] = "LOW",
				["justifyH"] = "CENTER",
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["color"] = {
					["r"] = 1,
					["g"] = 0.9921568627450981,
					["b"] = 0.9764705882352941,
				},
				["changePageBar"] = 10,
				["width"] = 56,
				["mcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["mbordalpha"] = 1,
				["changePagePage"] = 4,
				["delay"] = 0.5,
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
			},
			[3] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 0,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 3",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 0,
				["changePagePage"] = 2,
				["malpha"] = 1,
				["group"] = 10,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["height"] = 13,
				["Anchor"] = {
					["y"] = 3,
					["x"] = 26,
					["point"] = "BOTTOM",
					["frame"] = "DAB_ActionBar_10",
					["to"] = "TOP",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["hide"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["b2width"] = 1,
				["fontsize"] = 11,
				["frameStrata"] = "LOW",
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["alpha"] = 1,
				["width"] = 48,
				["mbordalpha"] = 1,
				["changePage"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePageBar"] = 10,
				["delay"] = 0.5,
				["changePageType"] = 3,
			},
			[4] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 0,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 4",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 0,
				["changePagePage"] = 1,
				["malpha"] = 1,
				["group"] = 10,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["height"] = 13,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "RIGHT",
					["frame"] = "DAB_ControlBox_3",
					["to"] = "LEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["hide"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["b2width"] = 1,
				["fontsize"] = 11,
				["frameStrata"] = "LOW",
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["alpha"] = 1,
				["width"] = 63,
				["mbordalpha"] = 1,
				["changePage"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePageBar"] = 10,
				["delay"] = 0.5,
				["changePageType"] = 3,
			},
			[5] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 5",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 5,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -200,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
			[6] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 6",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 6,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -240,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
			[7] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 7",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 7,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -280,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
			[8] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 8",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 8,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -320,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
			[9] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 9",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 9,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -360,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
			[10] = {
				["mcolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["mbordcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["Scripts"] = {
				},
				["b3width"] = 1,
				["b1width"] = 1,
				["onclick"] = 1,
				["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["text"] = "Control Box 10",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 10,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -400,
					["x"] = 100,
					["point"] = "TOPLEFT",
					["frame"] = "UIParent",
					["to"] = "TOPLEFT",
				},
				["b4width"] = 1,
				["mbgalpha"] = 1,
				["b2width"] = 1,
				["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["changePagePage"] = 1,
				["changePageBar"] = 1,
				["frameStrata"] = "LOW",
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
				["alpha"] = 1,
				["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["mbordalpha"] = 1,
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["width"] = 120,
				["justifyH"] = "CENTER",
				["changePageType"] = 1,
				["hide"] = true,
				["delay"] = 0.5,
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
			},
		},
		["ButtonLockOverride"] = 3,
		["Buttons"] = {
			[1] = {
				["action"] = 1,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 1,
			},
			[2] = {
				["action"] = 2,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 1,
			},
			[3] = {
				["action"] = 3,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 1,
			},
			[4] = {
				["action"] = 4,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 1,
			},
			[5] = {
				["action"] = 5,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 1,
			},
			[6] = {
				["action"] = 7,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 2,
			},
			[7] = {
				["action"] = 64,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 7,
			},
			[8] = {
				["action"] = 65,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 7,
			},
			[9] = {
				["action"] = 24,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 16,
				["Bar"] = 5,
			},
			[10] = {
				["action"] = 13,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 3,
			},
			[11] = {
				["action"] = 61,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 8,
			},
			[12] = {
				["action"] = 63,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = "F",
			},
			[13] = {
				["action"] = 8,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 2,
			},
			[14] = {
				["action"] = 9,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 2,
			},
			[15] = {
				["action"] = 10,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 2,
			},
			[16] = {
				["action"] = 62,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 8,
			},
			[17] = {
				["action"] = 66,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 8,
			},
			[18] = {
				["action"] = 14,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 3,
			},
			[19] = {
				["action"] = 67,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 9,
			},
			[20] = {
				["action"] = 25,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 5,
			},
			[21] = {
				["action"] = 29,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[22] = {
				["action"] = 30,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[23] = {
				["action"] = 15,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 16,
				["Bar"] = 3,
			},
			[24] = {
				["action"] = 19,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 16,
				["Bar"] = 4,
			},
			[25] = {
				["action"] = 16,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 3,
			},
			[26] = {
				["action"] = 26,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 6,
			},
			[27] = {
				["action"] = 17,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 3,
			},
			[28] = {
				["action"] = 31,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[29] = {
				["action"] = 32,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[30] = {
				["action"] = 33,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[31] = {
				["action"] = 34,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[32] = {
				["action"] = 35,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[33] = {
				["action"] = 36,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[34] = {
				["action"] = 37,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[35] = {
				["action"] = 38,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[36] = {
				["action"] = 39,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[37] = {
				["action"] = 20,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 4,
			},
			[38] = {
				["action"] = 21,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 4,
			},
			[39] = {
				["action"] = 22,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 4,
			},
			[40] = {
				["action"] = 18,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 3,
			},
			[41] = {
				["action"] = 40,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[42] = {
				["action"] = 68,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 9,
			},
			[43] = {
				["action"] = 69,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = "F",
			},
			[44] = {
				["action"] = 44,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[45] = {
				["action"] = 45,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[46] = {
				["action"] = 46,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[47] = {
				["action"] = 47,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[48] = {
				["action"] = 48,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[49] = {
				["action"] = 49,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[50] = {
				["action"] = 27,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 6,
			},
			[51] = {
				["action"] = 51,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[52] = {
				["action"] = 52,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[53] = {
				["action"] = 53,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[54] = {
				["action"] = 54,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[55] = {
				["action"] = 55,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[56] = {
				["action"] = 56,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[57] = {
				["action"] = 41,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 10,
			},
			[58] = {
				["action"] = 42,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 10,
			},
			[59] = {
				["action"] = 43,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 10,
			},
			[60] = {
				["action"] = 44,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar"] = 10,
			},
			[61] = {
				["action"] = 61,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[62] = {
				["action"] = 62,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[63] = {
				["action"] = 63,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[64] = {
				["action"] = 64,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[65] = {
				["action"] = 65,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[66] = {
				["action"] = 66,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[67] = {
				["action"] = 67,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[68] = {
				["action"] = 68,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[69] = {
				["action"] = 69,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[70] = {
				["action"] = 70,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[71] = {
				["action"] = 71,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[72] = {
				["action"] = 72,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[73] = {
				["action"] = 73,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[74] = {
				["action"] = 74,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[75] = {
				["action"] = 75,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[76] = {
				["action"] = 76,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[77] = {
				["action"] = 77,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[78] = {
				["action"] = 78,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[79] = {
				["action"] = 79,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[80] = {
				["action"] = 80,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[81] = {
				["action"] = 81,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[82] = {
				["action"] = 82,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[83] = {
				["action"] = 83,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[84] = {
				["action"] = 84,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[85] = {
				["action"] = 85,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[86] = {
				["action"] = 86,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[87] = {
				["action"] = 87,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[88] = {
				["action"] = 88,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[89] = {
				["action"] = 89,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[90] = {
				["action"] = 90,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[91] = {
				["action"] = 91,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[92] = {
				["action"] = 92,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[93] = {
				["action"] = 93,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[94] = {
				["action"] = 94,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[95] = {
				["action"] = 95,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[96] = {
				["action"] = 96,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[97] = {
				["action"] = 97,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[98] = {
				["action"] = 98,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[99] = {
				["action"] = 99,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[100] = {
				["action"] = 100,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[101] = {
				["action"] = 101,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[102] = {
				["action"] = 102,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[103] = {
				["action"] = 103,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[104] = {
				["action"] = 104,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[105] = {
				["action"] = 6,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[106] = {
				["action"] = 11,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[107] = {
				["action"] = 12,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[108] = {
				["action"] = 28,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 3,
			},
			[109] = {
				["action"] = 109,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[110] = {
				["action"] = 23,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 41,
				["Bar"] = 4,
			},
			[111] = {
				["action"] = 111,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[112] = {
				["action"] = 112,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[113] = {
				["action"] = 113,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[114] = {
				["action"] = 114,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[115] = {
				["action"] = 115,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[116] = {
				["action"] = 116,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[117] = {
				["action"] = 117,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[118] = {
				["action"] = 118,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[119] = {
				["action"] = 119,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[120] = {
				["action"] = 120,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
		},
		["Floaters"] = {
			[12] = {
				["middleClick"] = 12,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["cbgroup"] = 41,
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = -1,
					["point"] = "RIGHT",
					["frame"] = "DAB_ActionBar_6",
					["to"] = "LEFT",
				},
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["expandHidden"] = 1,
				["size"] = 51,
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["buttonLocked"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["frameStrata"] = "LOW",
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["alpha"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["rightClick"] = 12,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["Scripts"] = {
					[2] = "",
				},
			},
			[43] = {
				["middleClick"] = -1,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = -1,
					["point"] = "LEFT",
					["frame"] = "DAB_ActionBar_9",
					["to"] = "RIGHT",
				},
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["expandHidden"] = 1,
				["size"] = 51,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["buttonLocked"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["frameStrata"] = "LOW",
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["alpha"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["rightClick"] = -1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["Scripts"] = {
					[2] = "-- This floater is only for use with Oils\nPickupInventoryItem(16); ",
				},
			},
		},
		["MainMenuBar"] = {
			["xpcolor"] = {
				["r"] = 0.58,
				["g"] = 0,
				["b"] = 0.55,
			},
			["xpbcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["keyringscale"] = 1,
			["hideXPborder"] = 1,
			["xpscale"] = 0.9375,
			["xpalpha"] = 1,
			["hideEverything"] = 1,
			["latencyscale"] = 0.9375,
		},
		["UpdateSpeed"] = 10,
		["DragLockOverride"] = 2,
		["OtherBar"] = {
			[12] = {
				["scale"] = 0.8,
				["layout"] = 4,
				["frameStrata"] = "HIGH",
				["hide"] = 1,
				["alpha"] = 1,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 14,
					["x"] = -7,
					["to"] = "TOPLEFT",
					["frame"] = "ChatFrame6",
					["point"] = "TOPRIGHT",
				},
				["Background"] = {
					["leftpadding"] = 5,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 5,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["hide"] = 1,
					["bottompadding"] = 5,
					["tileSize"] = 1,
					["rightpadding"] = 5,
					["balpha"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
			},
			[14] = {
				["scale"] = 1,
				["layout"] = 1,
				["alpha"] = 1,
				["hspacing"] = -3,
				["Background"] = {
					["leftpadding"] = 5,
					["color"] = {
						["b"] = 0,
						["g"] = 0.03137254901960784,
						["r"] = 1,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["rightpadding"] = 5,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["toppadding"] = 5,
					["bottompadding"] = 5,
					["edgeSize"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["Anchor"] = {
					["y"] = 144,
					["x"] = 380,
					["to"] = "BOTTOMLEFT",
					["frame"] = "UIParent",
					["point"] = "BOTTOMLEFT",
				},
				["vspacing"] = 0,
				["frameStrata"] = "HIGH",
				["hide"] = 1,
			},
			[11] = {
				["scale"] = 0.9,
				["layout"] = 1,
				["frameStrata"] = "HIGH",
				["alpha"] = 1,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = -2,
					["x"] = -35,
					["to"] = "TOPLEFT",
					["frame"] = "Minimap",
					["point"] = "TOPRIGHT",
				},
				["Background"] = {
					["leftpadding"] = 5,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 5,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["tile"] = true,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 0,
					["top"] = 1,
					["tileSize"] = 8,
					["rightpadding"] = 5,
					["bottompadding"] = 5,
					["balpha"] = 0,
					["bottom"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
			},
			[13] = {
				["scale"] = 1,
				["layout"] = 1,
				["alpha"] = 1,
				["hspacing"] = 1,
				["Background"] = {
					["leftpadding"] = 5,
					["color"] = {
						["b"] = 0,
						["g"] = 0.0392156862745098,
						["r"] = 1,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 5,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["rightpadding"] = 5,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 5,
					["edgeSize"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["Anchor"] = {
					["y"] = 146,
					["x"] = -382,
					["to"] = "BOTTOMRIGHT",
					["frame"] = "UIParent",
					["point"] = "BOTTOMRIGHT",
				},
				["vspacing"] = 0,
				["frameStrata"] = "HIGH",
				["hide"] = 1,
			},
		},
		["CDFormat"] = 1,
		["Keybindings"] = {
			[1] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "1",
			},
			[2] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "2",
			},
			[3] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "3",
			},
			[4] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "4",
			},
			[5] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "5",
			},
			[6] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "6",
			},
			[7] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "ALT-1",
			},
			[8] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "ALT-2",
			},
			[9] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "ALT-3",
			},
			[10] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "ALT-4",
			},
			[11] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "ALT-5",
			},
			[12] = {
				["suboption"] = 2,
				["key2"] = "ALT-6",
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "G",
			},
			[13] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "Z",
			},
			[14] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "SHIFT-Z",
			},
			[15] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "CTRL-1",
			},
			[16] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "CTRL-2",
			},
			[17] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "CTRL-3",
			},
			[18] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "CTRL-4",
			},
			[19] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
				["key1"] = "CTRL-5",
			},
			[20] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "ALT-V",
			},
			[21] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "SHIFT-V",
			},
			[22] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "CTRL-V",
			},
			[23] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "ALT-S",
			},
			[24] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "V",
			},
			[25] = {
				["suboption"] = 5,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "SHIFT-D",
			},
			[26] = {
				["suboption"] = 5,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "ALT-D",
			},
			[27] = {
				["suboption"] = 6,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = ";",
			},
			[28] = {
				["suboption"] = 6,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "ALT-R",
			},
			[29] = {
				["suboption"] = 7,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "X",
			},
			[30] = {
				["suboption"] = 7,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "`",
			},
			[31] = {
				["suboption"] = 8,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "R",
			},
			[32] = {
				["suboption"] = 8,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "T",
			},
			[33] = {
				["suboption"] = 8,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "SHIFT-1",
			},
			[34] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
			},
			[35] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
			},
			[36] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
			},
			[37] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
			},
			[38] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
			},
			[39] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
			},
			[40] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
			},
			[41] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
			},
			[42] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
			},
			[43] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
			},
			[44] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
			},
			[45] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
			},
			[46] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 13,
				["down"] = 1,
			},
			[47] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 14,
				["down"] = 1,
			},
			[48] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 15,
				["down"] = 1,
			},
			[49] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 16,
				["down"] = 1,
			},
			[50] = {
				["suboption"] = 12,
				["option"] = 3,
				["down"] = 1,
				["key1"] = "CTRL-R",
			},
			[51] = {
				["suboption"] = 19,
				["option"] = 3,
				["down"] = 1,
				["key1"] = "ALT-X",
			},
			[52] = {
				["suboption"] = 119,
				["option"] = 13,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "ALT-`",
			},
			[53] = {
				["suboption"] = 120,
				["option"] = 13,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "SHIFT-`",
			},
			[54] = {
				["option"] = 0,
				["down"] = 1,
			},
			[55] = {
				["option"] = 0,
				["down"] = 1,
			},
			[56] = {
				["option"] = 0,
				["down"] = 1,
			},
			[57] = {
				["option"] = 0,
				["down"] = 1,
			},
			[58] = {
				["option"] = 0,
				["down"] = 1,
			},
			[59] = {
				["option"] = 0,
				["down"] = 1,
			},
			[60] = {
				["option"] = 0,
				["down"] = 1,
			},
			[61] = {
				["option"] = 0,
				["down"] = 1,
			},
			[62] = {
				["option"] = 0,
				["down"] = 1,
			},
			[63] = {
				["option"] = 0,
				["down"] = 1,
			},
			[64] = {
				["option"] = 0,
				["down"] = 1,
			},
			[65] = {
				["option"] = 0,
				["down"] = 1,
			},
			[66] = {
				["option"] = 0,
				["down"] = 1,
			},
			[67] = {
				["option"] = 0,
				["down"] = 1,
			},
			[68] = {
				["option"] = 0,
				["down"] = 1,
			},
			[69] = {
				["option"] = 0,
				["down"] = 1,
			},
			[70] = {
				["option"] = 0,
				["down"] = 1,
			},
			[71] = {
				["option"] = 0,
				["down"] = 1,
			},
			[72] = {
				["option"] = 0,
				["down"] = 1,
			},
			[73] = {
				["option"] = 0,
				["down"] = 1,
			},
			[74] = {
				["option"] = 0,
				["down"] = 1,
			},
			[75] = {
				["option"] = 0,
				["down"] = 1,
			},
			[76] = {
				["option"] = 0,
				["down"] = 1,
			},
			[77] = {
				["option"] = 0,
				["down"] = 1,
			},
			[78] = {
				["option"] = 0,
				["down"] = 1,
			},
			[79] = {
				["option"] = 0,
				["down"] = 1,
			},
			[80] = {
				["option"] = 0,
				["down"] = 1,
			},
			[81] = {
				["option"] = 0,
				["down"] = 1,
			},
			[82] = {
				["option"] = 0,
				["down"] = 1,
			},
			[83] = {
				["option"] = 0,
				["down"] = 1,
			},
			[84] = {
				["option"] = 0,
				["down"] = 1,
			},
			[85] = {
				["option"] = 0,
				["down"] = 1,
			},
			[86] = {
				["option"] = 0,
				["down"] = 1,
			},
			[87] = {
				["option"] = 0,
				["down"] = 1,
			},
			[88] = {
				["option"] = 0,
				["down"] = 1,
			},
			[89] = {
				["option"] = 0,
				["down"] = 1,
			},
			[90] = {
				["option"] = 0,
				["down"] = 1,
			},
			[91] = {
				["option"] = 0,
				["down"] = 1,
			},
			[92] = {
				["option"] = 0,
				["down"] = 1,
			},
			[93] = {
				["option"] = 0,
				["down"] = 1,
			},
			[94] = {
				["option"] = 0,
				["down"] = 1,
			},
			[95] = {
				["option"] = 0,
				["down"] = 1,
			},
			[96] = {
				["option"] = 0,
				["down"] = 1,
			},
			[97] = {
				["option"] = 0,
				["down"] = 1,
			},
			[98] = {
				["option"] = 0,
				["down"] = 1,
			},
			[99] = {
				["option"] = 0,
				["down"] = 1,
			},
			[100] = {
				["option"] = 0,
				["down"] = 1,
			},
			[101] = {
				["option"] = 0,
				["down"] = 1,
			},
			[102] = {
				["option"] = 0,
				["down"] = 1,
			},
			[103] = {
				["option"] = 0,
				["down"] = 1,
			},
			[104] = {
				["option"] = 0,
				["down"] = 1,
			},
			[105] = {
				["option"] = 0,
				["down"] = 1,
			},
			[106] = {
				["option"] = 0,
				["down"] = 1,
			},
			[107] = {
				["option"] = 0,
				["down"] = 1,
			},
			[108] = {
				["option"] = 0,
				["down"] = 1,
			},
			[109] = {
				["option"] = 0,
				["down"] = 1,
			},
			[110] = {
				["option"] = 0,
				["down"] = 1,
			},
			[111] = {
				["option"] = 0,
				["down"] = 1,
			},
			[112] = {
				["option"] = 0,
				["down"] = 1,
			},
			[113] = {
				["option"] = 0,
				["down"] = 1,
			},
			[114] = {
				["option"] = 0,
				["down"] = 1,
			},
			[115] = {
				["option"] = 0,
				["down"] = 1,
			},
			[116] = {
				["option"] = 0,
				["down"] = 1,
			},
			[117] = {
				["option"] = 0,
				["down"] = 1,
			},
			[118] = {
				["option"] = 0,
				["down"] = 1,
			},
			[119] = {
				["option"] = 0,
				["down"] = 1,
			},
			[120] = {
				["option"] = 0,
				["down"] = 1,
			},
		},
		["SelfCast"] = 1,
		["INITIALIZED3.16"] = 1,
		["FreeButtons"] = {
			[1] = 120,
			[2] = 119,
			[3] = 118,
			[4] = 117,
			[5] = 116,
			[6] = 115,
			[7] = 114,
			[8] = 113,
			[9] = 112,
			[10] = 111,
			[11] = 104,
			[12] = 103,
			[13] = 109,
			[14] = 102,
			[15] = 101,
			[16] = 100,
			[17] = 99,
			[18] = 98,
			[19] = 97,
			[20] = 96,
			[21] = 95,
			[22] = 94,
			[23] = 93,
			[24] = 92,
			[25] = 91,
			[26] = 90,
			[27] = 89,
			[28] = 88,
			[29] = 87,
			[30] = 86,
			[31] = 85,
			[32] = 84,
			[33] = 83,
			[34] = 82,
			[35] = 81,
			[36] = 80,
			[37] = 79,
			[38] = 78,
			[39] = 77,
			[40] = 76,
			[41] = 75,
			[42] = 74,
			[43] = 73,
			[44] = 72,
			[45] = 71,
			[46] = 70,
			[47] = 69,
			[48] = 68,
			[49] = 67,
			[50] = 66,
			[51] = 65,
			[52] = 64,
			[53] = 63,
			[54] = 56,
			[55] = 55,
			[56] = 54,
			[57] = 53,
			[58] = 52,
			[59] = 51,
			[60] = 49,
			[61] = 48,
			[62] = 47,
			[63] = 46,
			[64] = 45,
			[65] = 44,
			[66] = 62,
			[67] = 61,
		},
		["CustomEvents"] = {
		},
		["KBGroups"] = {
		},
		["defaultTexture"] = "Interface\\AddOns\\DiscordActionBars\\CustomTextures\\",
		["Bar"] = {
			[1] = {
				["middleClick"] = 1,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = 1,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Healing Spells",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["disableMW"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 33,
				["rightClick"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
						[13] = {
						},
						[14] = {
						},
						[15] = {
						},
						[16] = {
						},
						[17] = {
						},
						[18] = {
						},
					},
					[2] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
					},
				},
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Conditions"] = {
				},
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["target"] = "player",
				["cbgroup"] = 1,
				["Scripts"] = {
					[2] = "",
				},
				["Anchor"] = {
					["y"] = 4,
					["x"] = 10,
					["point"] = "LEFT",
					["frame"] = "Minimap",
					["to"] = "RIGHT",
				},
				["vspacing"] = 0,
				["numButtons"] = 6,
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["rightpadding"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["edgeSize"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["numBars"] = 2,
				["buttonsLocked"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["alpha"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["frameStrata"] = "DIALOG",
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["skipPages"] = "",
				["expandHidden"] = 1,
				["page"] = 1,
				["pages"] = {
					[1] = {
						[1] = 1,
						[2] = 2,
						[3] = 3,
						[4] = 4,
						[5] = 5,
						[6] = 6,
						[13] = 1,
						[14] = 9,
						[15] = 17,
						[16] = 25,
						[17] = 33,
						[18] = 41,
					},
					[2] = {
						[1] = 7,
						[2] = 8,
						[3] = 9,
						[4] = 10,
						[5] = 11,
						[6] = 6,
					},
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
			[2] = {
				["middleClick"] = 2,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["disableMW"] = 1,
				["pages"] = {
					[1] = {
						[1] = 7,
						[2] = 8,
						[3] = 9,
						[4] = 10,
						[5] = 11,
						[6] = 12,
					},
					[2] = {
						[1] = 1,
						[2] = 2,
						[3] = 3,
						[4] = 4,
						[5] = 5,
						[6] = 12,
					},
				},
				["size"] = 33,
				["rightClick"] = 2,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["numBars"] = 2,
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["attachpoint"] = "BOTTOM",
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["right"] = 1,
					["left"] = 1,
					["hide"] = true,
					["bgalpha"] = 1,
					["edgeSize"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bottom"] = 1,
					["top"] = 1,
					["text"] = "Damage Spells",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["x"] = 0,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 2,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = -9,
					["x"] = 0,
					["point"] = "TOPLEFT",
					["frame"] = "DAB_ActionBar_1",
					["to"] = "BOTTOMLEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["numButtons"] = 6,
				["vspacing"] = 0,
				["Scripts"] = {
				},
				["unusablerecolor"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
					},
					[2] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
					},
				},
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["frameStrata"] = "LOW",
				["buttonsLocked"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["page"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["expandHidden"] = 1,
			},
			[3] = {
				["unusablerecolor"] = 1,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Scripts"] = {
				},
				["target"] = "player",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 33,
				["rightClick"] = 3,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
						[7] = {
						},
					},
				},
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Buffs",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 3,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 4,
					["x"] = -11,
					["point"] = "RIGHT",
					["frame"] = "Minimap",
					["to"] = "LEFT",
				},
				["vspacing"] = 0,
				["expandHidden"] = 1,
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["hide"] = 1,
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["numBars"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["middleClick"] = 3,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["frameStrata"] = "LOW",
				["numButtons"] = 7,
				["pages"] = {
					[1] = {
						[1] = 13,
						[2] = 14,
						[3] = 15,
						[4] = 16,
						[5] = 17,
						[6] = 18,
						[7] = 28,
					},
				},
				["alpha"] = 1,
				["page"] = 1,
			},
			[4] = {
				["unusablerecolor"] = 1,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["pages"] = {
					[1] = {
						[1] = 19,
						[2] = 20,
						[3] = 21,
						[4] = 22,
						[5] = 23,
					},
				},
				["size"] = 33,
				["rightClick"] = 4,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
					},
				},
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Psychic Abilities",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 4,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 7,
					["x"] = -11,
					["point"] = "BOTTOMRIGHT",
					["frame"] = "Minimap",
					["to"] = "BOTTOMLEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["hide"] = 1,
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["numButtons"] = 5,
				["vspacing"] = 0,
				["Scripts"] = {
				},
				["middleClick"] = 4,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["numBars"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["page"] = 1,
				["buttonsLocked"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
				["expandHidden"] = 1,
			},
			[5] = {
				["middleClick"] = 5,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["target"] = "player",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 33,
				["rightClick"] = 5,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["numBars"] = 1,
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Purify",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 5,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = -3,
					["point"] = "RIGHT",
					["frame"] = "DAB_ActionBar_3",
					["to"] = "LEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["expandHidden"] = 1,
				["Scripts"] = {
				},
				["vspacing"] = 0,
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
					},
				},
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["page"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["alpha"] = 1,
				["numButtons"] = 2,
				["pages"] = {
					[1] = {
						[1] = 24,
						[2] = 25,
					},
				},
				["frameStrata"] = "LOW",
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
			[6] = {
				["middleClick"] = 6,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Scripts"] = {
				},
				["target"] = "player",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 33,
				["rightClick"] = 6,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["numBars"] = 1,
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Self Buff",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 6,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = -8,
					["point"] = "RIGHT",
					["frame"] = "DAB_ActionBar_4",
					["to"] = "LEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 0,
					["hide"] = 1,
				},
				["expandHidden"] = 1,
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["vspacing"] = 0,
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[13] = {
						},
					},
				},
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["alpha"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["frameStrata"] = "LOW",
				["numButtons"] = 2,
				["pages"] = {
					[1] = {
						[1] = 26,
						[2] = 27,
						[13] = 145,
					},
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["page"] = 1,
			},
			[7] = {
				["unusablerecolor"] = 1,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["target"] = "player",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 33,
				["rightClick"] = 7,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 11,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
					},
				},
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["cbgroup"] = 8,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["justifyH"] = "CENTER",
					["attachto"] = "TOP",
					["right"] = 1,
					["justifyV"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["bgalpha"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["text"] = "Specials",
					["alpha"] = 1,
					["width"] = 100,
					["top"] = 1,
					["x"] = 0,
					["bordalpha"] = 1,
					["y"] = 10,
					["height"] = 20,
					["tileSize"] = 1,
					["fontsize"] = 15,
					["hide"] = true,
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = 14,
					["point"] = "TOPLEFT",
					["frame"] = "DAB_ActionBar_1",
					["to"] = "TOPRIGHT",
				},
				["vspacing"] = 0,
				["expandHidden"] = 1,
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["rightpadding"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["toppadding"] = 1,
					["bottompadding"] = 1,
					["edgeSize"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["numBars"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["frameStrata"] = "LOW",
				["middleClick"] = 7,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["alpha"] = 1,
				["numButtons"] = 2,
				["pages"] = {
					[1] = {
						[1] = 64,
						[2] = 65,
					},
				},
				["page"] = 1,
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
			[8] = {
				["middleClick"] = 8,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["target"] = "player",
				["pages"] = {
					[1] = {
						[1] = 61,
						[2] = 62,
						[3] = 66,
					},
				},
				["size"] = 33,
				["rightClick"] = 8,
				["collapse"] = 1,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
					},
				},
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Shadow Extras",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 8,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 0,
					["x"] = 3,
					["point"] = "BOTTOMLEFT",
					["frame"] = "DAB_ActionBar_2",
					["to"] = "BOTTOMRIGHT",
				},
				["vspacing"] = 0,
				["expandHidden"] = 1,
				["Scripts"] = {
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["numBars"] = 1,
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["page"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["numButtons"] = 3,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
				["frameStrata"] = "LOW",
			},
			[9] = {
				["middleClick"] = 9,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["target"] = "player",
				["pages"] = {
					[1] = {
						[1] = 67,
						[2] = 68,
					},
				},
				["size"] = 33,
				["rightClick"] = 9,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["numBars"] = 1,
				["rows"] = 1,
				["hideEmpty"] = 1,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bgalpha"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = 1,
					["right"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Racials",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 9,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 5,
					["x"] = -22,
					["point"] = "BOTTOMLEFT",
					["frame"] = "DAB_ActionBar_7",
					["to"] = "TOPLEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\MazzleUIChatBoxBorder",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 0.5568627450980392,
						["g"] = 0.592156862745098,
						["b"] = 0.580392156862745,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 0,
					["hide"] = 1,
				},
				["expandHidden"] = 1,
				["Scripts"] = {
					[2] = "",
				},
				["vspacing"] = 0,
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
					},
				},
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["buttonsLocked"] = 1,
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["page"] = 1,
				["numButtons"] = 2,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["frameStrata"] = "LOW",
				["alpha"] = 1,
			},
			[10] = {
				["middleClick"] = 10,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Scripts"] = {
					[2] = "MazzleUI:ContextMenuClick()",
					[10] = "",
					[11] = "",
				},
				["target"] = "player",
				["pages"] = {
					[1] = {
						[1] = 29,
						[2] = 30,
						[3] = 31,
						[4] = 32,
						[5] = 33,
						[6] = 34,
						[7] = 35,
						[8] = 36,
						[9] = 37,
						[10] = 38,
						[11] = 39,
						[12] = 40,
						[13] = 41,
						[14] = 42,
						[15] = 43,
						[16] = 44,
					},
					[2] = {
						[1] = 45,
						[2] = 46,
						[3] = 47,
						[4] = 48,
						[5] = 49,
						[6] = 50,
						[7] = 51,
						[8] = 52,
						[9] = 53,
						[10] = 54,
						[11] = 55,
						[12] = 56,
						[13] = 57,
						[14] = 58,
						[15] = 59,
						[16] = 60,
					},
				},
				["size"] = 36,
				["rightClick"] = 10,
				["buttonbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 16,
				},
				["hspacing"] = 0,
				["ButtonBorder"] = {
					["rightpadding"] = 13,
					["leftpadding"] = 12,
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["alpha"] = 1,
					["ecolor"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["bottompadding"] = 13,
					["toppadding"] = 12,
					["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
					["texture"] = "Interface\\Buttons\\UI-Quickslot2",
				},
				["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
				["numBars"] = 2,
				["rows"] = 4,
				["cbgroup"] = 10,
				["Anchor"] = {
					["y"] = 433.0000015571715,
					["x"] = 1121.000059850515,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "BOTTOMLEFT",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\MazzleUIChatBoxBorder",
					["toppadding"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\MazzleUIChatBoxBackground",
					["edgeSize"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["r"] = 0.9764705882352941,
						["g"] = 1,
						["b"] = 0.9803921568627451,
					},
					["alpha"] = 1,
					["top"] = 1,
					["tileSize"] = 1,
					["bottompadding"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
					["hide"] = 1,
				},
				["numButtons"] = 16,
				["Label"] = {
					["bgcolor"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["color"] = {
						["r"] = 1,
						["g"] = 0.3333333333333333,
						["b"] = 0.1058823529411765,
					},
					["bgalpha"] = 0,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["left"] = 1,
					["bordcolor"] = {
						["r"] = 0.3568627450980392,
						["g"] = 0.3607843137254902,
						["b"] = 0.3647058823529412,
					},
					["right"] = 1,
					["bottom"] = 1,
					["top"] = 1,
					["text"] = "Context Menu",
					["alpha"] = 0.79,
					["width"] = 102,
					["y"] = 0,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 0,
					["x"] = 0,
					["height"] = 20,
					["edgeSize"] = 1,
					["fontsize"] = 15,
					["justifyH"] = "CENTER",
				},
				["vspacing"] = 0,
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["Conditions"] = {
				},
				["Macro"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["page"] = 1,
				["pageconditions"] = {
					[1] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
						[7] = {
						},
						[8] = {
						},
						[9] = {
						},
						[10] = {
						},
						[11] = {
						},
						[12] = {
						},
						[13] = {
						},
						[14] = {
						},
						[15] = {
						},
						[16] = {
						},
					},
					[2] = {
						[1] = {
						},
						[2] = {
						},
						[3] = {
						},
						[4] = {
						},
						[5] = {
						},
						[6] = {
						},
						[7] = {
						},
						[8] = {
						},
						[9] = {
						},
						[10] = {
						},
						[11] = {
						},
						[12] = {
						},
						[13] = {
						},
						[14] = {
						},
						[15] = {
						},
						[16] = {
						},
					},
				},
				["rangecolor"] = {
					["r"] = 1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["unusablerecolor"] = 1,
				["alpha"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["frameStrata"] = "LOW",
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
		},
	}
    end
end