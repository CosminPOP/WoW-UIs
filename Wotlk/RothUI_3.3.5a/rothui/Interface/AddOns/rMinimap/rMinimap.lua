  
  local rm_player_name, _ = UnitName("player")
  local _, rm_player_class = UnitClass("player")
   
  -----------------------------
  -- configure map style here --
  -----------------------------

  -- map_style
  -- 0 = diablo3
  -- 1 = futuristic orb rotating
  -- 2 = square runits style
  local map_style
  if rm_player_name == "Astone" and rm_player_class == "WARLOCK" then
    map_style = 0
  else
    map_style = 0
  end

  -- map scale
  local mapscale = 0.82
  
  -- size of icons (tracking icon for example)
  local iconsize = 20

  -- position map and symbols here
  local map_positions
  if map_style == 2 then
    map_positions = {
      position = {
        [1] = { frame = "Minimap",                  anchor1 = "TOPRIGHT",     anchor2 = "TOPRIGHT",     anchorframe = "UIParent",   posx = -20,   posy = -20 },
        [2] = { frame = "MiniMapTracking",          anchor1 = "TOPLEFT",      anchor2 = "TOPLEFT",      anchorframe = "Minimap",    posx = 5,     posy = -5 },
        [3] = { frame = "MiniMapMailFrame",         anchor1 = "BOTTOMRIGHT",  anchor2 = "BOTTOMRIGHT",  anchorframe = "Minimap",    posx = -5,    posy = 5 },
        [4] = { frame = "MiniMapBattlefieldFrame",  anchor1 = "BOTTOMLEFT",   anchor2 = "BOTTOMLEFT",   anchorframe = "Minimap",    posx = 5,     posy = 5 },
        [5] = { frame = "GameTimeFrame",            anchor1 = "TOPRIGHT",     anchor2 = "TOPRIGHT",     anchorframe = "Minimap",    posx = -5,    posy = -5 },
        [6] = { frame = "TimeManagerClockButton",   anchor1 = "BOTTOM",       anchor2 = "BOTTOM",       anchorframe = "Minimap",    posx = 0,    posy = -2 },
      },
    }
  else
    map_positions = {
      position = {
        [1] = { frame = "Minimap",                  anchor1 = "TOPRIGHT",     anchor2 = "TOPRIGHT",   anchorframe = "UIParent",   posx = -35,   posy = -15 },
        [2] = { frame = "MiniMapTracking",          anchor1 = "CENTER",       anchor2 = "CENTER",     anchorframe = "Minimap",    posx = 68,     posy = 28 },
        [3] = { frame = "MiniMapMailFrame",         anchor1 = "CENTER",          anchor2 = "CENTER",     anchorframe = "Minimap",    posx = 75,    posy = 0 },
        [4] = { frame = "MiniMapBattlefieldFrame",  anchor1 = "CENTER",          anchor2 = "CENTER",     anchorframe = "Minimap",    posx = -75,   posy = 0 },
        [5] = { frame = "GameTimeFrame",            anchor1 = "CENTER",          anchor2 = "CENTER",     anchorframe = "Minimap",    posx = 52,    posy = 52 },
        [6] = { frame = "TimeManagerClockButton",   anchor1 = "BOTTOM",       anchor2 = "BOTTOM",     anchorframe = "Minimap",    posx = 0,    posy = 0 },
      },
    }
  end



  ----------------
  -- end config --
  ----------------
  
  local a = CreateFrame("Frame", nil, UIParent)
  local _G = getfenv(0)
  local dummy = function() end    
  
  a:RegisterEvent("PLAYER_LOGIN")
  
  a:SetScript("OnEvent", function (self,event,arg1)
    if(event=="PLAYER_LOGIN") then
      
      LoadAddOn("Blizzard_TimeManager")
      
      a:showhidestuff()

      if map_style == 0 then
        a:dostuff0()
      elseif map_style == 1 then
        a:dostuff1()
        a:rotateme()
      elseif map_style == 2 then
        a:dostuff2()
      end
      --zoomscript taken from pminimap by p3lim
      --http://www.wowinterface.com/downloads/info8389-pMinimap.html
      a:zoomscript()
      
      for index,value in ipairs(map_positions.position) do 
        local var = map_positions.position[index]
        a:positionme(var.frame,var.anchor1,var.anchorframe,var.anchor2,var.posx,var.posy)
      end

      Minimap:SetScale(mapscale)
    end
  end)  
  
  function a:dostuff0()
    local t = Minimap:CreateTexture(nil,"ARTWORK")
    t:SetTexture("Interface\\AddOns\\rTextures\\d3_map2")
    local d3mapscale = 1.3
    t:SetPoint("CENTER", Minimap, "CENTER", -2*d3mapscale, -11*d3mapscale)
    t:SetWidth(Minimap:GetHeight()*2*d3mapscale)
    t:SetHeight(Minimap:GetHeight()*d3mapscale)
    
    local t2 = Minimap:CreateTexture(nil,"BORDER")
    t2:SetTexture("Interface\\AddOns\\rTextures\\orb_gloss")
    t2:SetPoint("CENTER",0,0)
    t2:SetWidth(Minimap:GetHeight()*1.06)
    t2:SetHeight(Minimap:GetHeight()*1.06)
    t2:SetAlpha(1)
  end
  
  function a:dostuff2()
    Minimap:SetMaskTexture("Interface\\AddOns\\rMinimap\\mask")
    local t = Minimap:CreateTexture(nil,"Overlay")
    t:SetTexture("Interface\\AddOns\\rTextures\\minigloss")
    t:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -1, 1)
    t:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 1, -1)
  end
  
  function a:dostuff1()
    --nothing
  end
  
  function a:rotateme()
  
    --DEFAULT_CHAT_FRAME:AddMessage("ping")
    
    local r2, r42, realUpdate, colorTable = math.sqrt(0.5^2+0.5^2), math.sqrt(42), true, {[4]=0.9};
    
    local f = CreateFrame("Frame",nil,Minimap)
    f:SetWidth(194)
    f:SetHeight(194)
    f:SetPoint("CENTER",0,0)
    f:Show()
    
    local t = f:CreateTexture(nil,"BACKGROUND")
    t:SetTexture("Interface\\AddOns\\rTextures\\map_texture.tga")
    t:SetAllPoints(f)
    t:SetVertexColor(0.8,0.8,0.8,1)
    
    local totalElapsed = 0
    local degrees = 0
    
    local function OnUpdateFunc(self, elapsed)
      totalElapsed = totalElapsed + elapsed
      local update_timer = 1
      if (totalElapsed < update_timer) then 
        return 
      else
        totalElapsed = totalElapsed - floor(totalElapsed)
        
        t:SetTexCoord(
        0.5+r2*cos(degrees+135), 0.5+r2*sin(degrees+135),
        0.5+r2*cos(degrees-135), 0.5+r2*sin(degrees-135),
        0.5+r2*cos(degrees+45), 0.5+r2*sin(degrees+45),
        0.5+r2*cos(degrees-45), 0.5+r2*sin(degrees-45)
        )
        
        degrees = degrees+1
        
        if degrees > 360 then
          degrees = 0
        end

      end
    end
    
    f:SetScript("OnUpdate", OnUpdateFunc)
    
  end
  
  function a:showhidestuff()
    
    if TimeManagerClockButton then
      local timerframe = _G["TimeManagerClockButton"]
      local region1 = timerframe:GetRegions()
      region1:Hide()
      TimeManagerClockTicker:SetFont(NAMEPLATE_FONT, 14, "THINOUTLINE")

    end
  
    MiniMapWorldMapButton:Hide()
    
    MiniMapTrackingBackground:Hide()
    MiniMapTrackingButtonBorder:Hide()
    MiniMapTrackingButton:SetHighlightTexture("")
    
    MiniMapTracking:SetWidth(iconsize)
    MiniMapTracking:SetHeight(iconsize)
    
    MiniMapTrackingButton:SetAllPoints(MiniMapTracking)
    MiniMapTrackingButton:SetHighlightTexture("");
    MiniMapTrackingButton:SetPushedTexture("");
    
    local tftb = MiniMapTracking:CreateTexture(nil,"BACKGROUND")
    tftb:SetTexture("Interface\\AddOns\\rMinimap\\mask")
    tftb:SetVertexColor(0,0,0,1)
    tftb:SetPoint("TOPLEFT", MiniMapTracking, "TOPLEFT", 2, -2)
    tftb:SetPoint("BOTTOMRIGHT", MiniMapTracking, "BOTTOMRIGHT", -2, 2)
    --tftb:SetAllPoints(MiniMapTracking)
        
    MiniMapTrackingIcon:ClearAllPoints()
    MiniMapTrackingIcon:SetPoint("TOPLEFT", MiniMapTracking, "TOPLEFT", 2, -2)
    MiniMapTrackingIcon:SetPoint("BOTTOMRIGHT", MiniMapTracking, "BOTTOMRIGHT", -2, 2)
    --MiniMapTrackingIcon:SetAllPoints(MiniMapTracking)
    MiniMapTrackingIcon.SetPoint = dummy
    MiniMapTrackingIcon:SetTexCoord(0.1,0.9,0.1,0.9)

    local tft = MiniMapTracking:CreateTexture(nil,"OVERLAY")
    --tft:SetTexture("Interface\\AddOns\\rTextures\\gloss")
    tft:SetTexture("Interface\\AddOns\\rTextures\\minimap_button2")
    tft:SetPoint("TOPLEFT", MiniMapTracking, "TOPLEFT", -2, 2)
    tft:SetPoint("BOTTOMRIGHT", MiniMapTracking, "BOTTOMRIGHT", 2, -2)
    
    MinimapZoomOut:Hide()
    MinimapZoomIn:Hide()

    MiniMapMailBorder:Hide()
    MiniMapMailFrame:SetWidth(iconsize)
    MiniMapMailFrame:SetHeight(iconsize)
    
    MiniMapMailIcon:ClearAllPoints()
    MiniMapMailIcon:SetPoint("TOPLEFT", MiniMapMailFrame, "TOPLEFT", 1, -1)
    MiniMapMailIcon:SetPoint("BOTTOMRIGHT", MiniMapMailFrame, "BOTTOMRIGHT", -1, 1)
    MiniMapMailIcon:SetTexCoord(0.07,0.93,0.07,0.93)
    
    local mft = MiniMapMailFrame:CreateTexture(nil,"OVERLAY")
    --mft:SetTexture("Interface\\AddOns\\rTextures\\gloss")
    --mft:SetPoint("TOPLEFT", MiniMapMailFrame, "TOPLEFT", -0, 0)
    --mft:SetPoint("BOTTOMRIGHT", MiniMapMailFrame, "BOTTOMRIGHT", 0, -0)
    mft:SetTexture("Interface\\AddOns\\rTextures\\minimap_button2")
    mft:SetPoint("TOPLEFT", MiniMapMailFrame, "TOPLEFT", -2, 2)
    mft:SetPoint("BOTTOMRIGHT", MiniMapMailFrame, "BOTTOMRIGHT", 2, -2)
    
    

    
    MiniMapBattlefieldFrame:SetWidth(iconsize)
    MiniMapBattlefieldFrame:SetHeight(iconsize)
    
    MiniMapBattlefieldBorder:Hide()
    
    --local bftb = MiniMapBattlefieldFrame:CreateTexture(nil,"BACKGROUND")
    --bftb:SetTexture("Interface\\AddOns\\rMinimap\\mask")
    --bftb:SetVertexColor(0,0,0,1)
    --bftb:SetPoint("TOPLEFT", MiniMapBattlefieldFrame, "TOPLEFT", 1, -1)
    --bftb:SetPoint("BOTTOMRIGHT", MiniMapBattlefieldFrame, "BOTTOMRIGHT", -1, 1)
    
    local bft = MiniMapBattlefieldFrame:CreateTexture(nil,"ARTWORK")
    --bft:SetTexture("Interface\\AddOns\\rTextures\\gloss")
    bft:SetTexture("Interface\\AddOns\\rTextures\\minimap_button2")
    bft:SetPoint("TOPLEFT", MiniMapBattlefieldFrame, "TOPLEFT", -2, 2)
    bft:SetPoint("BOTTOMRIGHT", MiniMapBattlefieldFrame, "BOTTOMRIGHT", 2, -2)
    
    --MiniMapBattlefieldIcon:ClearAllPoints()
    --MiniMapBattlefieldIcon:SetAllPoints(MiniMapBattlefieldFrame)    
    --MiniMapBattlefieldIcon:SetTexCoord(0.07,0.93,0.07,0.93)
    
    --MinimapToggleButton:Hide()
    MinimapZoneTextButton:Hide()
    MinimapBorderTop:Hide()
    MinimapBorder:Hide()
    MinimapNorthTag:Hide()
    
    --movie recording >_<
    --doesn't work on pc
    --MiniMapRecordingButton:Show()
    --MiniMapRecordingButton.hide = dummy
    
    -- hack for the calendartime frame
    local bu = _G["GameTimeFrame"]
    bu:SetWidth(iconsize)
    bu:SetHeight(iconsize)
    bu:SetHitRectInsets(0, 0, 0, 0)
    
    select(5, GameTimeFrame:GetRegions()):SetTextColor(1, 1, 1)
    select(5, GameTimeFrame:GetRegions()):SetFont(NAMEPLATE_FONT,14,"THINOUTLINE")
    select(5, GameTimeFrame:GetRegions()):ClearAllPoints()
    select(5, GameTimeFrame:GetRegions()):SetPoint("CENTER",bu,"CENTER",0,1)
    
    local gtftb = bu:CreateTexture(nil,"BACKGROUND")
    gtftb:SetTexture("Interface\\AddOns\\rMinimap\\mask")
    gtftb:SetVertexColor(0,0,0,1)
    gtftb:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
    gtftb:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
    
    local gtft = bu:CreateTexture(nil,"ARTWORK")
    --gtft:SetTexture("Interface\\AddOns\\rTextures\\gloss")
    gtft:SetTexture("Interface\\AddOns\\rTextures\\minimap_button2")
    gtft:SetPoint("TOPLEFT", bu, "TOPLEFT", -2, 2)
    gtft:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", 2, -2)
   
    --the is no name for this texture so we need to workaround this
    nt = bu:GetNormalTexture()
    nt:SetTexCoord(0,1,0,1)
    nt:SetAllPoints(bu)
    
    pu = bu:GetPushedTexture()
    pu:SetTexCoord(0,1,0,1)
    pu:SetAllPoints(bu)
    
    --bu:SetNormalTexture("Interface\\AddOns\\rTextures\\gloss")
    --bu:SetPushedTexture("Interface\\AddOns\\rTextures\\gloss")
    --bu:SetHighlightTexture("Interface\\AddOns\\rTextures\\hover")
    
    bu:SetNormalTexture("")
    bu:SetPushedTexture("")
    bu:SetHighlightTexture("")
    
    --MiniMapMeetingStoneFrame:Hide()

  end
  
  function a:positionme(f,a1,af,a2,px,py)
    f = _G[f]
    af = _G[af]
    f:ClearAllPoints()
    f:SetPoint(a1,af,a2,px,py)
    f.SetPoint = dummy
  end
  
  function a:zoomscript()
    Minimap:EnableMouseWheel()
    Minimap:SetScript("OnMouseWheel", function(self, direction)
      if(direction > 0) then
        Minimap_ZoomIn()
      else
        Minimap_ZoomOut()
      end
    end)
  end