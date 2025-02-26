﻿--$Id: nbNO.lua 32044 2007-04-07 14:51:37Z rabbit $-- 
-- nbNO localization by vhaarr

if not getglobal("NBNO") then
	setglobal("NBNO", "Norwegian (Bokmål)")
end

local L = AceLibrary("AceLocale-2.2"):new("OneBag")
L:RegisterTranslations("nbNO", function()
   return {
      ["Frame"]	= "Ramme",
      ["Frame Options"]	= "Rammevalg",
      ["Columns"]	= "Kolonner",
      ["Sets the number of columns to use"]	= "Antall kolonner",
      ["Scale"]	= "Størrelse",
      ["Sets the scale of the frame"]	= "Setter størrelsen på rammene",
      ["Strata"]	= "Nivå",
      ["Sets the strata of the frame"]	= "Setter hvilket nivå rammen skal ligge på",
      ["Alpha"]	= "Gjennomsiktighet",
      ["Sets the alpha of the frame"]	= "Setter hvor gjennomsiktig rammen skal være",
      ["Locked"]	= "Låst",
      ["Toggles the ability to move the frame"]	= "Hvorvidt rammen skal kunne flyttes eller ikke",
      ["Clamped"]	= "Innenfor skjerm",
      ["Toggles the ability to drag the frame off screen."]	= "Setter om rammen skal kunne flyttes utenfor skjermen",
      ["Bag Break"] = "Posebryting",
      ["Sets wether to start a new row at the beginning of a bag."] = "Hvorvidt det skal være en ny rad mellom hver pose",
      ["Vertical Alignment"] = "Loddrett justering",
      ["Sets wether to have the extra spaces on the top or bottom."] = "Setter om det skal justeres litt ekstra plass over og under posene",
      ["Top"] = "Toppen",
      ["Bottom"] = "Bunnen",

      ["Show"]	= "Vis",
      ["Various Display Options"]	= "Visningsvalg",
      ["Counts"]	= "Tellere",
      ["Toggles showing the counts for special bags."]	= "Vis tellere for spesialposer.",
      ["Direction"]	= "Retning",
      ["Forward"]	= "Fremover",
      ["Toggles direction the bags are shown"]	= "Setter retningen på posene",
      ["|cffff0000Reverse|r"]	= "|cffff0000Omvendt|r",
      ["|cff00ff00Forward|r"]	= "|cff00ff00Fremover|r",
      ["Ammo Bag"]	= "Ammunisjonsposen",
      ["Turns display of ammo bags on and off."]	= "Skrur av og på ammunisjonsposen.",
      ["Soul Bag"]	= "Sjeleposen",
      ["Turns display of soul bags on and off."]	= "Skrur av og på sjeleposen.",
      ["Profession Bag"]	= "Yrkesposen",
      ["Turns display of profession bags on and off."]	= "Skrur av og på yrkesposen.",
      ["Backpack"] = "Ryggsekk",
      ["Turns display of your backpack on and off."] = "Skrur av og på ryggsekken.",
      ["First Bag"] = "Første pose",
      ["Turns display of your first bag on and off."] = "Skrur av og på den første posen.",
      ["Second Bag"] = "Andre pose",
      ["Turns display of your second bag on and off."] = "Skrur av og på den andre posen.",
      ["Third Bag"] = "Tredje pose",
      ["Turns display of your third bag on and off."] = "Skrur av og på den tredje posen.",
      ["Fourth Bag"] = "Fjerde pose",
      ["Turns display of your fourth bag on and off."] = "Skrur av og på den fjerde posen.",
      ["'s Bags"] = "'s poser",

      ["Colors"]	= "Farger",
      ["Different color code settings."]	= "Forskjellige fargevalg.",
      ["Mouseover Color"]	= "Farge ved mus",
      ["Changes the highlight color for when you mouseover a bag slot."]	= "Forandrer fargen på en pose når du holder musen over den.",
      ["Ammo Bag Color"]	= "Fargen på ammunisjonsposen",
      ["Changes the highlight color for Ammo Bags."]	= "Forandrer fargen på ammunisjonsposen.",
      ["Soul Bag Color"]	= "Fargen på sjeleposen",
      ["Changes the highlight color for Soul Bags."]	= "Forandrer fargen på sjeleposen.",
      ["Profession Bag Color"]	= "Fargen på yrkesposen",
      ["Changes the highlight color for Profession Bags."]	= "Forandrer fargen på yrkesposen.",
      ["Background Color"]	= "Bakgrunnsfarge",
      ["Changes the background color for the frame."]	= "Forandrer bakgrunnsfargen til rammen.",
      ["Highlight Glow"]	= "Fremhevingsglød",
      ["Turns hightlight glow on and off."]	= "Skrur fremhevingsgløden av og på.",
      ["Rarity Coloring"]	= "Raritetsfarging",
      ["Turns rarity coloring on and off."]	= "Skrur raritetsfarging av og på.",

      ["Reset"]	= "Tilbakestill",
      ["Reset the different colors."]	= "Tilbakestiller alle fargene.",
      ["Mouseover Color"]	= "Farge ved mus",
      ["Returns your mouseover color to the default."]	= "Tilbakestiller fargen for når musen er over en pose.",
      ["Ammo Slot Color"]	= "Ammunisjonsposen",
      ["Returns your ammo slot color to the default."]	= "Tilbakestiller fargen for ammunisjonsposen.",
      ["Soul Slot Color"]	= "Sjeleposen",
      ["Returns your soul slot color to the default."]	= "Tilbakestiller fargen for sjeleposen.",
      ["Profession Slot Color"]	= "Yrkesposen",
      ["Returns your profession slot color to the default."]	= "Tilbakestiller fargen for yrkesposen.",
      ["Background"]	= "Bakgrunn",
      ["Returns your frame background to the default."]	= "Tilbakestiller bakgrunnsfargen.",
      ["Plow!"]	= "Plog!",
      ["Organizes your bags."]	= "Organiserer innholdet i posene dine.",
      ["- Note: This option only appears if you have MrPlow installed"]	= "Legg merke til at dette valget bare føres opp om MrPlow er installert.",
      
      ["Pick Locale"] = "Velg språk", 
      ["Sets the locale to use.  Will not take effect until you reload your UI."] =  "Hvilket språk du vil bruke. Tar ikke effekt før du laster grensesnittet på nytt.",

      ["Normal used: %s, Soul used: %s, Prof used: %s, Ammo used %s, Ammo quantity %s."]	= "Brukte luker: %s, Sjeleluker: %s, Yrkesluker: %s, Ammunisjonsluker: %s, Total ammunisjon: %s.",
      ["%s/%s Slots"]	= "%s/%s luker",
      ["%s/%s Ammo"]	= "%s/%s ammunisjon",
      ["%s/%s Soul Shards"]	= "%s/%s sjeleskår",
      ["%s/%s Profession Slots"]	= "%s/%s yrkesluker",
      
      ["Menu"] = "Meny"
   }
end)

