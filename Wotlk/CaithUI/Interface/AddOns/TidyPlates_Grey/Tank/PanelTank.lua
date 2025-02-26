local theme = TidyPlatesThemeList["Grey/Tank"]
TidyPlatesGreyTankSavedVariables = {}
---------------
-- Helpers
---------------
local copytable = TidyPlatesUtility.copyTable
local updatetable = TidyPlatesUtility.updateTable
local PanelHelpers = TidyPlatesUtility.PanelHelpers

------------------------------------------------------------------
-- Interface Options Panel
------------------------------------------------------------------
local TextModes = { { text = "None", notCheckable = 1 },
					{ text = "Percent", notCheckable = 1 } ,
					{ text = "Actual", notCheckable = 1 } ,
					{ text = "Defecit", notCheckable = 1 } ,
					{ text = "Total & Percent", notCheckable = 1 } ,
					{ text = "Plus-and-Minus", notCheckable = 1 } ,
					}
-------------------
-- Main Panel
-------------------
local panel = PanelHelpers:CreatePanelFrame( "TidyPlatesGreyTank_InterfaceOptionsPanel", "Grey/Tank Theme" )
panel.parent = "Tidy Plates"
panel:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", insets = { left = 2, right = 2, top = 2, bottom = 2 },})
panel:SetBackdropColor(0.05, 0.05, 0.05, .7)

local column1, column2 = -90, -100
-------------------
-- Opacity
-------------------
-- Non-Targets Opacity Slider
panel.OpacityNonTarget = PanelHelpers:CreateSliderFrame("TidyPlatesGreyTank_OpacityNonTargets", panel, "Non-Target Opacity:", .5, 0, 1, .1)
panel.OpacityNonTarget:SetPoint("CENTER", -37+column1, 133)
-- Hide Neutral Units Checkbox
panel.OpacityHideNeutral = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_OpacityHideNeutral", panel, "Hide Neutral Units")
panel.OpacityHideNeutral:SetPoint("CENTER", -81+column1, 95)
-- Hide Non-Elites Checkbox
panel.OpacityHideNonElites = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_OpacityHideNonElites", panel, "Hide Non-Elites")
panel.OpacityHideNonElites:SetPoint("CENTER", -81+column1, 71)
-------------------
-- Scale
-------------------
-- General Scale
local adjustGeneral = 25
panel.ScaleGeneral = PanelHelpers:CreateSliderFrame("TidyPlatesGreyTank_ScaleGeneral", panel, "General Scale:", 1, .5, 2, .1)
panel.ScaleGeneral:SetPoint("CENTER", -35+column1, 34-adjustGeneral)
-- Loose Units Scale
panel.ScaleLoose = PanelHelpers:CreateSliderFrame("TidyPlatesGreyTank_ScaleLoose", panel, "Lost Unit Scale:", 1.5, 1, 2, .1)
panel.ScaleLoose:SetPoint("CENTER", -35+column1, -24-adjustGeneral)
-- Hide Non-Elites Checkbox
panel.ScaleIgnoreNonElite = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_ScaleIgnoreNonElite", panel, "Ignore Non-Elites")
panel.ScaleIgnoreNonElite:SetPoint("CENTER", -81+column1, -62-adjustGeneral)
-------------------
-- Threat Widget
-------------------
local widgetx, widgety = 175, 60
-- Description
panel.WidgetDesc = PanelHelpers:CreateDescriptionFrame("TidyPlatesGreyTank_WidgetDesc", panel, "Widgets:", "")
panel.WidgetDesc:SetPoint("CENTER", -11+column1+widgetx, -136+widgety)
-- Tug-o'-Threat
panel.WidgetTug = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_WidgetTug", panel, "Tug-o'-Threat")
panel.WidgetTug:SetPoint("CENTER", -74+column1+widgetx, -99+widgety)
-- Threat Wheel/Spinner
panel.WidgetWheel = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_WidgetWheel", panel, "Threat Wheel")
panel.WidgetWheel:SetPoint("CENTER", -74+column1+widgetx, -123+widgety)
-- Selection Box
panel.WidgetSelect = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_WidgetSelect", panel, "Selection Box")
panel.WidgetSelect:SetPoint("CENTER", -74+column1+widgetx, -147+widgety)
-------------------
-- Aggro
-------------------
panel.AggroDesc = PanelHelpers:CreateDescriptionFrame("TidyPlatesGreyTank_AggroDesc", panel, "Aggro Indicators:", "")
panel.AggroDesc:SetPoint("CENTER", 170+column2, 92)
-- Health Bar
panel.AggroHealth = PanelHelpers:CreateCheckButton("TidyPlatesGreyTank_AggroHealth", panel, "Health Bar Color")
panel.AggroHealth:SetPoint("CENTER", 112+column2, 126)
-- Border
panel.AggroBorder = PanelHelpers:CreateCheckButton("TTidyPlatesGreyTank_AggroBorder", panel, "Border Glow")
panel.AggroBorder:SetPoint("CENTER", 112+column2, 102)
-- Loose Units
panel.AggroLooseColor = PanelHelpers:CreateColorBox("TidyPlatesGreyTank_AggroLooseColor", panel, "Loose Color", 0, .5, 1, 1)
panel.AggroLooseColor:SetPoint("CENTER", 137+column2, 71)
-- Tanked Units
panel.AggroTankedColor = PanelHelpers:CreateColorBox("TidyPlatesGreyTank_AggroTanked", panel, "Tanking Color", 0, .5, 1, 1)
panel.AggroTankedColor:SetPoint("CENTER", 137+column2, 44)
-------------------
-- Health Text
-------------------
panel.HealthText = PanelHelpers:CreateDropdownFrame("TidyPlatesGreyTank_HealthText", panel, TextModes, 1, "Health Text Mode:")
panel.HealthText:SetPoint("CENTER", -87+column1, -160)
-------------------
-- Apply Button
-------------------
panel.apply = CreateFrame("Button", "TidyPlatesGreyTank_ApplyButton", panel, "UIPanelButtonTemplate2")
panel.apply:SetPoint("BOTTOMRIGHT", panel, -15, 15)
panel.apply:SetText("Apply")
panel.apply:SetWidth(80)

local function UpdateAggroColors()
	theme.options.showAggroGlow = TidyPlatesGreyTankVariables.AggroBorder
	theme.threatcolor.LOW = TidyPlatesGreyTankVariables.AggroLooseColor
	theme.threatcolor.MEDIUM = TidyPlatesGreyTankVariables.AggroLooseColor
	theme.threatcolor.HIGH = TidyPlatesGreyTankVariables.AggroTankedColor
	-- Force Style Update
	TidyPlates:ReloadTheme()
end

local function GetPanelValues()
	local index, value
	for index, value in pairs(TidyPlatesGreyTankVariables) do
		TidyPlatesGreyTankVariables[index] = panel[index]:GetValue()
		TidyPlatesGreyTankSavedVariables[index] = TidyPlatesGreyTankVariables[index]
	end
end

local function SetPanelValues()
	local index, value
	for index, value in pairs(TidyPlatesGreyTankVariables) do
		panel[index]:SetValue(TidyPlatesGreyTankVariables[index])
	end
end

local function GetSavedVariables()
	local index, value
	TidyPlatesGreyTankVariables = updatetable(TidyPlatesGreyTankVariables, TidyPlatesGreyTankSavedVariables)
end

-- Update Variables
panel.okay = function ()
	GetPanelValues()
	TidyPlates:ForceUpdate()
	UpdateAggroColors()
end

panel.apply:SetScript("OnClick",panel.okay)
panel.refresh = SetPanelValues

-- Login
panel:SetScript("OnEvent", function(self, event, ...) 
	if event == "PLAYER_LOGIN" then 
		InterfaceOptions_AddCategory(panel)
	elseif event == "PLAYER_ENTERING_WORLD" then -- "PLAYER_ENTERING_WORLD"
		GetSavedVariables()
		UpdateAggroColors()
	end
	
end)
panel:RegisterEvent("PLAYER_LOGIN")
panel:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Slash Command
function slash_TidyGrey(arg) InterfaceOptionsFrame_OpenToCategory(panel); end
SLASH_TIDYGREY1 = '/tidygrey'
SlashCmdList['TIDYGREY'] = slash_TidyGrey;


