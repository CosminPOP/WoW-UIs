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

function Setup_DAB133(DABProfileName)

    if DAB_Settings then
        DAB_Settings[DABProfileName] = {
		["defaultTexture"] = "Interface\\AddOns\\DiscordActionBars\\CustomTextures\\",
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
				["text"] = "Control Box 1",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 1,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -40,
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
			},
			[2] = {
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
				["text"] = "Control Box 2",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 2,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -80,
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["text"] = "Control Box 3",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 3,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -120,
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
			},
			[4] = {
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
				["text"] = "Control Box 4",
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["height"] = 25,
				["malpha"] = 1,
				["group"] = 4,
				["justifyV"] = "CENTER",
				["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 14,
				["Anchor"] = {
					["y"] = -160,
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
				},
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["mbgcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["frameStrata"] = "LOW",
				["changePageBar"] = 1,
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
				["TextAnchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["to"] = "CENTER",
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
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[2] = {
				["action"] = 2,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[3] = {
				["action"] = 3,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[4] = {
				["action"] = 4,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[5] = {
				["action"] = 5,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[6] = {
				["action"] = 6,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[7] = {
				["action"] = 7,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[8] = {
				["action"] = 8,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[9] = {
				["action"] = 9,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[10] = {
				["action"] = 10,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 1,
			},
			[11] = {
				["action"] = 11,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[12] = {
				["action"] = 12,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[13] = {
				["action"] = 41,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[14] = {
				["action"] = 42,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[15] = {
				["action"] = 43,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[16] = {
				["action"] = 44,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[17] = {
				["action"] = 45,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[18] = {
				["action"] = 46,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[19] = {
				["action"] = 47,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[20] = {
				["action"] = 48,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[21] = {
				["action"] = 49,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[22] = {
				["action"] = 50,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 2,
			},
			[23] = {
				["action"] = 23,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[24] = {
				["action"] = 24,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[25] = {
				["action"] = 51,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[26] = {
				["action"] = 52,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[27] = {
				["action"] = 53,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[28] = {
				["action"] = 54,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[29] = {
				["action"] = 55,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[30] = {
				["action"] = 56,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[31] = {
				["action"] = 57,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[32] = {
				["action"] = 58,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[33] = {
				["action"] = 59,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[34] = {
				["action"] = 60,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 3,
			},
			[35] = {
				["action"] = 35,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[36] = {
				["action"] = 36,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[37] = {
				["action"] = 37,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[38] = {
				["action"] = 61,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[39] = {
				["action"] = 62,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[40] = {
				["action"] = 63,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[41] = {
				["action"] = 64,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[42] = {
				["action"] = 65,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[43] = {
				["action"] = 66,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[44] = {
				["action"] = 67,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[45] = {
				["action"] = 68,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[46] = {
				["action"] = 69,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
			},
			[47] = {
				["action"] = 70,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 4,
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
				["action"] = 50,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[51] = {
				["action"] = 71,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[52] = {
				["action"] = 72,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[53] = {
				["action"] = 73,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[54] = {
				["action"] = 74,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[55] = {
				["action"] = 75,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[56] = {
				["action"] = 76,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[57] = {
				["action"] = 77,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[58] = {
				["action"] = 78,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[59] = {
				["action"] = 79,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[60] = {
				["action"] = 80,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[61] = {
				["action"] = 81,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[62] = {
				["action"] = 82,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[63] = {
				["action"] = 83,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[64] = {
				["action"] = 84,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[65] = {
				["action"] = 85,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
			},
			[66] = {
				["action"] = 86,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
				["Bar2"] = 1,
				["Bar"] = 10,
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
				["action"] = 105,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[106] = {
				["action"] = 106,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[107] = {
				["action"] = 107,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[108] = {
				["action"] = 108,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[109] = {
				["action"] = 109,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
			},
			[110] = {
				["action"] = 110,
				["Scripts"] = {
				},
				["Conditions"] = {
				},
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
				["scale"] = 1,
				["layout"] = 1,
				["frameStrata"] = "HIGH",
				["alpha"] = 1,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = -2,
					["x"] = 63,
					["to"] = "TOPRIGHT",
					["frame"] = "Minimap",
					["point"] = "TOPLEFT",
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
				["scale"] = 1,
				["layout"] = 1,
				["frameStrata"] = "HIGH",
				["alpha"] = 1,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = -34,
					["x"] = -52,
					["to"] = "TOPLEFT",
					["frame"] = "Minimap",
					["point"] = "BOTTOMRIGHT",
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
					["tileSize"] = 1,
					["bottompadding"] = 5,
					["rightpadding"] = 5,
					["balpha"] = 1,
					["hide"] = 1,
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
		["SelfCast"] = 1,
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
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
				["key1"] = "7",
			},
			[8] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
				["key1"] = "8",
			},
			[9] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
				["key1"] = "9",
			},
			[10] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
				["key1"] = "0",
			},
			[11] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
				["key1"] = "-",
			},
			[12] = {
				["suboption"] = 1,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
				["key1"] = "=",
			},
			[13] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "SHIFT-1",
			},
			[14] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "SHIFT-2",
			},
			[15] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "SHIFT-3",
			},
			[16] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "SHIFT-4",
			},
			[17] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "SHIFT-5",
			},
			[18] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "SHIFT-6",
			},
			[19] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
				["key1"] = "SHIFT-7",
			},
			[20] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
				["key1"] = "SHIFT-8",
			},
			[21] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
				["key1"] = "SHIFT-9",
			},
			[22] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
				["key1"] = "SHIFT-0",
			},
			[23] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
				["key1"] = "SHIFT--",
			},
			[24] = {
				["suboption"] = 2,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
				["key1"] = "SHIFT-=",
			},
			[25] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "CTRL-1",
			},
			[26] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "CTRL-2",
			},
			[27] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "CTRL-3",
			},
			[28] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "CTRL-4",
			},
			[29] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "CTRL-5",
			},
			[30] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "CTRL-6",
			},
			[31] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
				["key1"] = "CTRL-7",
			},
			[32] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
				["key1"] = "CTRL-8",
			},
			[33] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
				["key1"] = "CTRL-9",
			},
			[34] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
				["key1"] = "CTRL-0",
			},
			[35] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
				["key1"] = "CTRL--",
			},
			[36] = {
				["suboption"] = 3,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
				["key1"] = "CTRL-=",
			},
			[37] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "ALT-1",
			},
			[38] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
				["key1"] = "ALT-2",
			},
			[39] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
				["key1"] = "ALT-3",
			},
			[40] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
				["key1"] = "ALT-4",
			},
			[41] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
				["key1"] = "ALT-5",
			},
			[42] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
				["key1"] = "ALT-6",
			},
			[43] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
				["key1"] = "ALT-7",
			},
			[44] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
				["key1"] = "ALT-8",
			},
			[45] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
				["key1"] = "ALT-9",
			},
			[46] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
				["key1"] = "ALT-0",
			},
			[47] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
				["key1"] = "ALT--",
			},
			[48] = {
				["suboption"] = 4,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
				["key1"] = "ALT-=",
			},
			[49] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 1,
				["down"] = 1,
			},
			[50] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 2,
				["down"] = 1,
			},
			[51] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 3,
				["down"] = 1,
			},
			[52] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 4,
				["down"] = 1,
			},
			[53] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 5,
				["down"] = 1,
			},
			[54] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 6,
				["down"] = 1,
			},
			[55] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 7,
				["down"] = 1,
			},
			[56] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 8,
				["down"] = 1,
			},
			[57] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 9,
				["down"] = 1,
			},
			[58] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 10,
				["down"] = 1,
			},
			[59] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 11,
				["down"] = 1,
			},
			[60] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 12,
				["down"] = 1,
			},
			[61] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 13,
				["down"] = 1,
			},
			[62] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 14,
				["down"] = 1,
			},
			[63] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 15,
				["down"] = 1,
			},
			[64] = {
				["suboption"] = 10,
				["option"] = 1,
				["suboption2"] = 16,
				["down"] = 1,
			},
			[65] = {
				["suboption"] = 120,
				["option"] = 13,
				["suboption2"] = 1,
				["down"] = 1,
				["key1"] = "SHIFT-`",
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
				["key1"] = "Z",
				["down"] = 1,
				["option"] = 0,
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
			[11] = 110,
			[12] = 109,
			[13] = 108,
			[14] = 107,
			[15] = 106,
			[16] = 105,
			[17] = 104,
			[18] = 103,
			[19] = 102,
			[20] = 101,
			[21] = 100,
			[22] = 99,
			[23] = 98,
			[24] = 97,
			[25] = 96,
			[26] = 95,
			[27] = 94,
			[28] = 93,
			[29] = 92,
			[30] = 91,
			[31] = 90,
			[32] = 89,
			[33] = 88,
			[34] = 87,
			[35] = 86,
			[36] = 85,
			[37] = 84,
			[38] = 83,
			[39] = 82,
			[40] = 81,
			[41] = 80,
			[42] = 79,
			[43] = 78,
			[44] = 77,
			[45] = 76,
			[46] = 75,
			[47] = 74,
			[48] = 73,
			[49] = 72,
			[50] = 71,
			[51] = 70,
			[52] = 69,
			[53] = 68,
			[54] = 67,
			[55] = 37,
			[56] = 50,
			[57] = 12,
			[58] = 11,
			[59] = 24,
			[60] = 23,
			[61] = 36,
			[62] = 35,
			[63] = 49,
			[64] = 48,
		},
		["CustomEvents"] = {
		},
		["KBGroups"] = {
		},
		["defaultFont"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\",
		["Bar"] = {
			[1] = {
				["unusablerecolor"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = 1,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Paging Top Right Bar",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
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
				["size"] = 35,
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
						[7] = {
						},
						[8] = {
						},
						[9] = {
						},
						[10] = {
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
					},
					[3] = {
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
					},
					[4] = {
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
					},
				},
				["rows"] = 1,
				["Conditions"] = {
				},
				["cbgroup"] = 1,
				["Keybinding"] = {
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["Anchor"] = {
					["y"] = 8,
					["x"] = 9,
					["point"] = "LEFT",
					["frame"] = "Minimap",
					["to"] = "RIGHT",
				},
				["skipPages"] = "",
				["numButtons"] = 10,
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
				["numBars"] = 4,
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
				["middleClick"] = 1,
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
				["frameStrata"] = "DIALOG",
				["pages"] = {
					[1] = {
						[1] = 1,
						[2] = 2,
						[3] = 3,
						[4] = 4,
						[5] = 5,
						[6] = 6,
						[7] = 7,
						[8] = 8,
						[9] = 9,
						[10] = 10,
					},
					[2] = {
						[1] = 11,
						[2] = 12,
						[3] = 13,
						[4] = 14,
						[5] = 15,
						[6] = 16,
						[7] = 17,
						[8] = 18,
						[9] = 19,
						[10] = 20,
					},
					[3] = {
						[1] = 21,
						[2] = 22,
						[3] = 23,
						[4] = 24,
						[5] = 25,
						[6] = 26,
						[7] = 27,
						[8] = 28,
						[9] = 29,
						[10] = 30,
					},
					[4] = {
						[1] = 31,
						[2] = 32,
						[3] = 33,
						[4] = 34,
						[5] = 35,
						[6] = 36,
						[7] = 37,
						[8] = 38,
						[9] = 39,
						[10] = 40,
					},
				},
				["vspacing"] = 0,
				["page"] = 1,
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
				["target"] = "player",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["size"] = 35,
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
				["numBars"] = 1,
				["rows"] = 1,
				["cbgroup"] = 2,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 8,
					["x"] = -10,
					["point"] = "RIGHT",
					["frame"] = "Minimap",
					["to"] = "LEFT",
				},
				["vspacing"] = 0,
				["expandHidden"] = 1,
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
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["hide"] = true,
					["right"] = 1,
					["edgeSize"] = 1,
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["bottom"] = 1,
					["top"] = 1,
					["text"] = "Top Left Bar",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["x"] = 0,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
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
				["Scripts"] = {
				},
				["manacolor"] = {
					["r"] = 0.2,
					["g"] = 0.2,
					["b"] = 1,
				},
				["numButtons"] = 10,
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
					},
				},
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["pages"] = {
					[1] = {
						[1] = 41,
						[2] = 42,
						[3] = 43,
						[4] = 44,
						[5] = 45,
						[6] = 46,
						[7] = 47,
						[8] = 48,
						[9] = 49,
						[10] = 50,
					},
				},
				["alpha"] = 1,
				["frameStrata"] = "LOW",
			},
			[3] = {
				["middleClick"] = 3,
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
				["pages"] = {
					[1] = {
						[1] = 51,
						[2] = 52,
						[3] = 53,
						[4] = 54,
						[5] = 55,
						[6] = 56,
						[7] = 57,
						[8] = 58,
						[9] = 59,
						[10] = 60,
					},
				},
				["size"] = 35,
				["rightClick"] = 3,
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
				["cbgroup"] = 3,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 9,
					["x"] = -10,
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
				["expandHidden"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bottom Left Bar",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
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
				["numButtons"] = 10,
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
					},
				},
				["alpha"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["frameStrata"] = "LOW",
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
			[4] = {
				["middleClick"] = 4,
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
				["pages"] = {
					[1] = {
						[1] = 61,
						[2] = 62,
						[3] = 63,
						[4] = 64,
						[5] = 65,
						[6] = 66,
						[7] = 67,
						[8] = 68,
						[9] = 69,
						[10] = 70,
					},
				},
				["size"] = 35,
				["rightClick"] = 4,
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
				["cbgroup"] = 4,
				["Conditions"] = {
				},
				["Anchor"] = {
					["y"] = 9,
					["x"] = 10,
					["point"] = "BOTTOMLEFT",
					["frame"] = "Minimap",
					["to"] = "BOTTOMRIGHT",
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
				["expandHidden"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bottom Right Bar",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
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
				["numButtons"] = 10,
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
					},
				},
				["alpha"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["frameStrata"] = "LOW",
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
			},
			[5] = {
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
					},
				},
				["size"] = 35,
				["rightClick"] = 5,
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
					},
				},
				["rows"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = 1,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bar 5",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 5,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "CENTER",
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
				["hide"] = 1,
				["Scripts"] = {
				},
				["numButtons"] = 0,
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
				["frameStrata"] = "LOW",
				["middleClick"] = 5,
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
				["numBars"] = 1,
				["highlightcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["alpha"] = 1,
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["page"] = 1,
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
				["unusablecolor"] = {
					["r"] = 0.6,
					["g"] = 0.6,
					["b"] = 0.6,
				},
				["pages"] = {
					[1] = {
					},
				},
				["size"] = 35,
				["rightClick"] = 6,
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
					},
				},
				["rows"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bar 6",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 6,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "CENTER",
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
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["expandHidden"] = 1,
				["hide"] = 1,
				["Scripts"] = {
				},
				["numButtons"] = 0,
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
				["numBars"] = 1,
				["page"] = 1,
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
			},
			[7] = {
				["middleClick"] = 7,
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
					},
				},
				["size"] = 35,
				["rightClick"] = 7,
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
					},
				},
				["rows"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bar 7",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 7,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "CENTER",
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
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["expandHidden"] = 1,
				["hide"] = 1,
				["Scripts"] = {
				},
				["numButtons"] = 0,
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
				["numBars"] = 1,
				["page"] = 1,
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
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
				["pages"] = {
					[1] = {
					},
				},
				["size"] = 35,
				["rightClick"] = 8,
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
					},
				},
				["rows"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bar 8",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 8,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "CENTER",
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
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["expandHidden"] = 1,
				["hide"] = 1,
				["Scripts"] = {
				},
				["numButtons"] = 0,
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
				["numBars"] = 1,
				["page"] = 1,
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
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
				["pages"] = {
					[1] = {
					},
				},
				["size"] = 35,
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
				["pageconditions"] = {
					[1] = {
					},
				},
				["rows"] = 1,
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
					["right"] = 1,
					["justifyV"] = "CENTER",
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["attachto"] = "TOP",
					["bgalpha"] = 1,
					["left"] = 1,
					["hide"] = true,
					["attachpoint"] = "BOTTOM",
					["bordcolor"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["x"] = 0,
					["text"] = "Bar 9",
					["alpha"] = 1,
					["width"] = 100,
					["y"] = 10,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 1,
					["top"] = 1,
					["height"] = 20,
					["justifyH"] = "CENTER",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				},
				["cbgroup"] = 9,
				["vspacing"] = 0,
				["Anchor"] = {
					["y"] = 0,
					["x"] = 0,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "CENTER",
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
					["bottompadding"] = 1,
					["tileSize"] = 1,
					["rightpadding"] = 1,
					["balpha"] = 1,
				},
				["expandHidden"] = 1,
				["hide"] = 1,
				["Scripts"] = {
				},
				["numButtons"] = 0,
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
				["numBars"] = 1,
				["page"] = 1,
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["alpha"] = 1,
			},
			[10] = {
				["middleClick"] = 10,
				["checked"] = "Interface\\Buttons\\CheckButtonHilight",
				["Keybinding"] = {
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["checkedcolor"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["unusablecolor"] = {
					["b"] = 0.6,
					["g"] = 0.6,
					["r"] = 0.6,
				},
				["target"] = "player",
				["pages"] = {
					[1] = {
						[1] = 71,
						[2] = 72,
						[3] = 73,
						[4] = 74,
						[5] = 75,
						[6] = 76,
						[7] = 77,
						[8] = 78,
						[9] = 79,
						[10] = 80,
						[11] = 81,
						[12] = 82,
						[13] = 83,
						[14] = 84,
						[15] = 85,
						[16] = 86,
					},
					[2] = {
						[1] = 87,
						[2] = 88,
						[3] = 89,
						[4] = 90,
						[5] = 91,
						[6] = 92,
						[7] = 93,
						[8] = 94,
						[9] = 95,
						[10] = 96,
						[11] = 97,
						[12] = 98,
						[13] = 99,
						[14] = 100,
						[15] = 101,
						[16] = 102,
					},
				},
				["size"] = 36,
				["rightClick"] = 10,
				["buttonbgcolor"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["Cooldown"] = {
					["color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
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
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
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
				["rows"] = 4,
				["cbgroup"] = 10,
				["highlightcolor"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["Anchor"] = {
					["y"] = 373.999985858798,
					["x"] = 1036.000021070242,
					["point"] = "CENTER",
					["frame"] = "UIParent",
					["to"] = "BOTTOMLEFT",
				},
				["vspacing"] = 0,
				["numButtons"] = 16,
				["frameStrata"] = "LOW",
				["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
				["manacolor"] = {
					["b"] = 1,
					["g"] = 0.2,
					["r"] = 0.2,
				},
				["alpha"] = 1,
				["Macro"] = {
					["color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["rangerecolor"] = 1,
				["page"] = 1,
				["unusablerecolor"] = 1,
				["rangecolor"] = {
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 1,
				},
				["manarecolor"] = 1,
				["Count"] = {
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["font"] = "Fonts\\FRIZQT__.TTF",
					["size"] = 10,
				},
				["numBars"] = 2,
				["Label"] = {
					["bgcolor"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["color"] = {
						["b"] = 0.1058823529411765,
						["g"] = 0.3333333333333333,
						["r"] = 1,
					},
					["attachpoint"] = "BOTTOM",
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
					["tileSize"] = 1,
					["attachto"] = "TOP",
					["justifyH"] = "CENTER",
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
					["fontsize"] = 15,
					["bordcolor"] = {
						["b"] = 0.3647058823529412,
						["g"] = 0.3607843137254902,
						["r"] = 0.3568627450980392,
					},
					["edgeSize"] = 1,
					["bottom"] = 1,
					["y"] = 0,
					["text"] = "Context Menu",
					["alpha"] = 0.79,
					["width"] = 102,
					["top"] = 1,
					["font"] = "Fonts\\FRIZQT__.TTF",
					["bordalpha"] = 0,
					["x"] = 0,
					["height"] = 20,
					["bgalpha"] = 0,
					["justifyV"] = "CENTER",
					["right"] = 1,
				},
				["Scripts"] = {
					[2] = "MazzleUI:ContextMenuClick()",
					[10] = "",
					[11] = "",
				},
				["Background"] = {
					["leftpadding"] = 1,
					["color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["right"] = 1,
					["left"] = 1,
					["btexture"] = "Interface\\AddOns\\DiscordLibrary\\MazzleUIChatBoxBorder",
					["tileSize"] = 1,
					["texture"] = "Interface\\AddOns\\DiscordLibrary\\MazzleUIChatBoxBackground",
					["rightpadding"] = 1,
					["bottom"] = 1,
					["bcolor"] = {
						["b"] = 0.9803921568627451,
						["g"] = 1,
						["r"] = 0.9764705882352941,
					},
					["alpha"] = 1,
					["top"] = 1,
					["hide"] = 1,
					["bottompadding"] = 1,
					["balpha"] = 1,
					["edgeSize"] = 1,
					["toppadding"] = 1,
				},
				["Conditions"] = {
				},
			},
		},
	}
    end
end