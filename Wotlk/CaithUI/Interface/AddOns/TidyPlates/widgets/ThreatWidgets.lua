
--local threatfont = "Interface\\Addons\\TidyPlates\\Media\\LiberationSans-Regular.ttf"
local threatfont =					"FONTS\\arialn.ttf"
---------------
-- General Functions
---------------

local function SetFade(frame)
	if GetTime() > frame.FadeTime then
		frame:Hide()
		frame:SetScript("OnUpdate", nil)
	end
end

-- /script print(RaidTankList)
-- /script print(select(RaidTankList)
RaidTankList = {}
local function IsRaidTank(unitid)
	return RaidTankList[UnitName(unitid)]
end

---------------
-- Threat Functions
---------------
local function GetThreatSegment(threat)
	if not threat then return nil end
	if threat > 133 then return "HIGHTANK"
	elseif threat > 116 then return "MEDIUMTANK"
	elseif threat > 100 then return "LOWTANK"
	elseif threat > 83 then return "HIGHDPS"
	elseif threat > 66 then return "MEDIUMDPS"
	else return "LOWDPS"  end
end

local GetRelativeThreat = TidyPlatesUtility.GetRelativeThreat

---------------
-- Roster Monitor
---------------
do
	local function UpdateRoster()
		local index, size
		if UnitInRaid("player") then
			size = GetNumRaidMembers() - 1
			for index = 1, size do
				local raidid = "raid"..tostring(index)
				local isAssigned = GetPartyAssignment("MAINTANK", raidid)
				if isAssigned then RaidTankList[UnitName(raidid)] = true 
				else RaidTankList[UnitName(raidid)] = nil end
				-- Testing
				--print("Is Tank?", UnitName(raidid), isAssigned)
				-- Testing
			end
		else wipe(RaidTankList)
		end
		
		-- TESTING
		--RaidTankList["Boognish"] = true
		-- TESTING
	end

	local RosterMonitor  = CreateFrame("Frame")
	RosterMonitor:RegisterEvent("RAID_ROSTER_UPDATE")
	RosterMonitor:RegisterEvent("PARTY_CONVERTED_TO_RAID")
	RosterMonitor:RegisterEvent("PLAYER_ENTERING_WORLD")
	--PARTY_CONVERTED_TO_RAID
	--PLAYER_ENTERING_WORLD
	--
	RosterMonitor:SetScript("OnEvent", UpdateRoster)
end
	
	
---------------
-- Threat Circle Widget
---------------
do
	local threatSpinnerWidgetArt = "Interface\\Addons\\TidyPlates\\Widgets\\ThreatSpinner\\SpinnerArt"

	local THREATWIDGET_SEGMENT_ART = {
		HIGHTANK = 		{.75,1,.5,1},
		MEDIUMTANK = 	{.5,.75,.5,1},
		LOWTANK = 		{.25,.5,.5,1},
		HIGHDPS = 		{0,.25,.5,1},
		MEDIUMDPS = 	{.75,1,0,.5},
		LOWDPS = 		{.5,.75,0,.5},
		UNKNOWN = 		{.25,.5,0,.5},
	}

	local function UpdateThreatWheelWidget(frame, unit)
		local unitid
		if unit.reaction == "FRIENDLY" or (not InCombatLockdown()) then frame:Hide(); return end
		if unit.isTarget and UnitExists("target") then unitid = "target"
		elseif unit.isMouseover then unitid = "mouseover" end
		
		if unitid then
			local threat, topholder = GetRelativeThreat(unitid) 
			local threatsegment = GetThreatSegment(threat)
			if threatsegment then
				-- Set Indicator
				frame:Show()
				--frame.ThreatIcon:SetTexture(THREATWIDGET_SEGMENT_ART[threatsegment])
				frame.ThreatIcon:SetTexCoord(unpack(THREATWIDGET_SEGMENT_ART[threatsegment]))
				frame.ThreatText:SetText(floor(threat))
				if topholder then frame.TargetText:SetText(UnitName(topholder))
				else frame.TargetText:SetText("") end
				-- Set Fading
				frame:Show()
				frame.FadeTime = GetTime() + 3
				frame:HideIn(frame.FadeTime)
			else frame:Hide() end
		elseif (GetTime() > frame.FadeTime) then frame:Hide() end
	end

	local function CreateThreatWheelWidget(parent)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetWidth(64)
		frame:SetHeight(64)
		-- Icon
		frame.ThreatIcon = frame:CreateTexture(nil, "OVERLAY")
		frame.ThreatIcon:SetAllPoints(frame)
		frame.ThreatIcon:SetTexture(threatSpinnerWidgetArt)
		-- Threat Text
		frame.ThreatText = frame:CreateFontString(nil, "OVERLAY")
		frame.ThreatText:SetFont(threatfont, 8, "NONE")
		frame.ThreatText:SetPoint("CENTER",frame.ThreatIcon,"CENTER", -1, 0)
		frame.ThreatText:SetWidth(20)
		frame.ThreatText:SetHeight(20)
		-- Target Text
		frame.TargetText = frame:CreateFontString(nil, "OVERLAY")
		frame.TargetText:SetFont(threatfont, 8, "NONE")
		frame.TargetText:SetShadowOffset(1, -1)
		frame.TargetText:SetShadowColor(0,0,0,1)
		frame.TargetText:SetPoint("BOTTOM",frame,"TOP", 1, -25)
		frame.TargetText:SetWidth(50)
		frame.TargetText:SetHeight(20)
		-- Setup
		frame.HideIn = TidyPlatesWidgets.HideIn
		frame.FadeTime = 0
		frame:Hide()
		frame.Update = UpdateThreatWheelWidget
		return frame
	end

	TidyPlatesWidgets.CreateThreatWheelWidget = CreateThreatWheelWidget
end


---------------
-- Threat Line Widget
---------------
do
	local THREATWIDGET_LOW_COLOR = { r = .14, g = .75, b = 1}
	local THREATWIDGET_HIGH_COLOR = {r = 1, g = .67, b = .14}
	local artpath = "Interface\\Addons\\TidyPlates\\Widgets\\ThreatLine\\"
	local threatcolor
	
	local function UpdateThreatLineWidget(frame, unit)
		local unitid
		if unit.reaction == "FRIENDLY" or (not InCombatLockdown()) then frame:Hide(); return end
		if unit.isTarget and UnitExists("target") then unitid = "target"
		elseif unit.isMouseover then unitid = "mouseover" end
		
		if unitid then
			local threat, topholder = GetRelativeThreat(unitid) 
			local middledot, outerdot = "Left", "Right"
			if threat and threat > 0 then
				local lineAnchor, dotAnchor, lineWidth = "RIGHT", "LEFT", 0
				-- Get Positions and Size
				if threat > 100 then
					-- While tanking
					lineWidth = ceil((threat - 100)/2)
					lineAnchor, dotAnchor = "LEFT", "RIGHT"
					--print("Tanking")
					threatcolor = THREATWIDGET_HIGH_COLOR
					frame.TargetText:SetText("")
				else 
					-- While NOT tanking
					lineWidth = ceil((100 - threat)/2)
					threatcolor = THREATWIDGET_LOW_COLOR
					middledot, outerdot = "Right", "Left"
				end
				if topholder then 
					frame.TargetText:SetText(UnitName(topholder)) 
					
					----------------------------------------------------------------------------------------------------------------
					if IsRaidTank(topholder) then frame.TargetText:SetTextColor(29/255, 144/255, 201/255, 1)
					else frame.TargetText:SetTextColor(1,1, 1, 1) end
					--else frame.TargetText:SetTextColor(255/255,219/255, 48/255, 1) end
					----------------------------------------------------------------------------------------------------------------
				else frame.TargetText:SetText("") end
				-- Set Size
				frame.Line:ClearAllPoints()
				frame.Line:SetPoint(lineAnchor, frame.Middle, "CENTER")
				frame.Line:SetWidth(lineWidth)
				frame.Dot:ClearAllPoints()
				frame.Dot:SetPoint("CENTER", frame.Line, dotAnchor)
				-- Set Colors
				frame.Dot:SetVertexColor(threatcolor.r, threatcolor.g, threatcolor.b)
				frame.Line:SetVertexColor(threatcolor.r, threatcolor.g, threatcolor.b)
				frame.Middle:SetVertexColor(threatcolor.r, threatcolor.g, threatcolor.b)
				-- Set Textures
				frame.Middle:SetTexture(artpath..middledot.."Dot")
				frame.Dot:SetTexture(artpath..outerdot.."Dot")
				-- Set Fading
				frame:Show()
				frame.FadeTime = GetTime() + 2
				frame:HideIn(frame.FadeTime)
			else frame:Hide() end
		elseif (GetTime() > frame.FadeTime) then frame:Hide() end
	end

	local function CreateThreatLineWidget(parent, showname, hangtime, art)
		local frame = CreateFrame("Frame", nil, parent)
		frame:SetWidth(100)
		frame:SetHeight(24)
		-- Threat Center
		frame.Middle = frame:CreateTexture(nil, "OVERLAY")
		frame.Middle:SetPoint("CENTER")
		frame.Middle:SetWidth(32)
		frame.Middle:SetHeight(32)
		-- Threat Dot
		frame.Dot = frame:CreateTexture(nil, "OVERLAY")
		frame.Dot:SetWidth(32)
		frame.Dot:SetHeight(32)
		-- Threat Line
		frame.Line = frame:CreateTexture(nil, "OVERLAY")
		frame.Line:SetTexture(artpath.."Threatline")
		frame.Line:SetWidth(32)
		frame.Line:SetHeight(32)
		-- Target Text
		frame.TargetText = frame:CreateFontString(nil, "OVERLAY")
		frame.TargetText:SetFont(threatfont, 9, "NONE")
		frame.TargetText:SetPoint("BOTTOM",frame.Dot,"TOP", 0, -15)
		frame.TargetText:SetShadowOffset(1, -1)
		frame.TargetText:SetShadowColor(0,0,0,1)
		frame.TargetText:SetWidth(50)
		frame.TargetText:SetHeight(20)
		-- Mechanics/Setup
		frame.HideIn = TidyPlatesWidgets.HideIn
		frame.FadeTime = 0
		frame:Hide()
		frame.Update = UpdateThreatLineWidget
		frame.UpdateThreat = UpdateThreatLineWidget
		return frame
	end
	
	TidyPlatesWidgets.CreateThreatLineWidget = CreateThreatLineWidget
end

---------------
-- Tanked Widget
---------------

--[[
do
	local Tanks = {}
	local RosterMonitor
	local artpath = "Interface\\Addons\\TidyPlates\\Widgets\\MainTanked\\"

	local function UpdateRoster()
		local Index, raidcount
		if UnitInRaid("player") then
			for Index = 1, raidcount do
				local raidid = "raid"..tostring(Index)
				local isAssigned = GetPartyAssignment("MAINTANK", raidid)
				if isAssigned then Tanks[UnitName(raidid)] = true 
				else Tanks[UnitName(raidid)] = nil end
			end
		end
		
		-- TESTING PURPOSES
		print("Tanks:")
		for x, y in pairs(Tanks) do
			if y then print(x) end
		end
		-- TESTING PURPOSES
	end

	local function CreateRosterMonitor()
		local frame = CreateFrame("Frame")
		-- Register Events
		frame:RegisterEvent("RAID_ROSTER_UPDATE")
		frame:SetScript("OnEvent", UpdateRoster)
		UpdateRoster()
		return frame
	end

	local tankedwidgetpath = "\\"
	
	local function UpdateTankedWidget(frame, unit)
		-- "mouseovertarget" 
		local unitid, targetname
		if unit.reaction == "FRIENDLY" or (not InCombatLockdown()) then frame:Hide(); return end
		if unit.isTarget then unitid = "target"
		elseif unit.isMouseover then unitid = "mouseover" end

		if unitid then
			targetname = UnitName(unitid.."target")
			if targetname then 
				frame.FadeTime = GetTime() + 2
				frame:HideIn(frame.FadeTime)
				frame:Show()
				if Tanks[targetname] then frame.tank:Show(); frame.squishy:Hide()
				else frame.tank:Hide(); frame.squishy:Show() end
			else frame:Hide() end
		elseif (GetTime() > frame.FadeTime) then frame:Hide() end
	end

	local function CreateTankedWidget(parent)		
		-- Start Roster Monitor
		if not RosterMonitor then RosterMonitor = CreateRosterMonitor() end
		-- Init Widget
		local frame = CreateFrame("Frame", nil, parent)
		frame.FadeTime = 0
		frame:SetWidth(64)
		frame:SetHeight(64)
		-- Tank Icon
		frame.tank = frame:CreateTexture(nil, "OVERLAY")
		frame.tank:SetTexture(artpath.."Shield")
		frame.tank:SetAllPoints(frame)
		frame.tank:Hide()
		-- Squishy Icon
		frame.squishy = frame:CreateTexture(nil, "OVERLAY")
		frame.squishy:SetTexture(artpath.."Knife")
		frame.squishy:SetAllPoints(frame)
		frame.squishy:Hide()
		-- Update
		frame.HideIn = TidyPlatesWidgets.HideIn
		frame.Update = UpdateTankedWidget
		frame:Hide()
		return frame
	end
	
	TidyPlatesWidgets.CreateTankedWidget = CreateTankedWidget
end
--]]



