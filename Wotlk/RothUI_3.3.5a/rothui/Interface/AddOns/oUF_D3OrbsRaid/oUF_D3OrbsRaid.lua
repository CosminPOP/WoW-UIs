  
  -- config
  
  local size = 40
  local myname, _ = UnitName("player")
  local _, myclass = UnitClass("player")
  local d3font = "FONTS\\FRIZQT__.ttf"  
  
  -- shall frames be moved
  -- set this to 0 to reset all frame positions
  local allow_frame_movement = 0
  
  -- set this to 1 after you have moved everything in place
  -- THIS IS IMPORTANT because it will deactivate the mouse clickablity on that frame.
  local lock_all_frames = 1
  
  -- config end
  
  ----------------
  -- VALUE FORMAT
  ---------------- 
  
  local function do_format(v)
    local string = ""
    if v > 1000000 then
      string = (floor((v/1000000)*10)/10).."m"
    elseif v > 1000 then
      string = (floor((v/1000)*10)/10).."k"
    else
      string = v
    end  
    return string
  end
  
  local function d3o2_createAuraWatch(self,unit)
    local auras = CreateFrame("Frame", nil, self)
    auras:SetAllPoints(self.Health)
    local spellIDs = { 
      48440, --reju
      48443, --regrowth
      48450, --lifebloom
      53249, --wildgrowth
      27808, --kel iceblock
      32407, --strange aura
      28408, --kel sheep heroic
    }
    
    auras.presentAlpha = 1
    auras.missingAlpha = 0
    --auras.hideCooldown = true
    --auras.PostCreateIcon = d3o2_createAuraIcon
    auras.icons = {}
    
    for i, sid in pairs(spellIDs) do
      local icon = CreateFrame("Frame", nil, auras)
      icon.spellID = sid
		  local cd = CreateFrame("Cooldown", nil, icon)
		  cd:SetAllPoints(icon)
		  cd:SetReverse()
		  --cd:SetAlpha(0)
		  icon.cd = cd
      if i > 4 then
        icon.anyUnit = true
        icon:SetWidth(20)
        icon:SetHeight(20)
        icon:SetPoint("CENTER",0,0)
      else
        icon:SetWidth(10)
        icon:SetHeight(10)
        local tex = icon:CreateTexture(nil, "BACKGROUND")
        tex:SetAllPoints(icon)
        tex:SetTexture("Interface\\AddOns\\oUF_D3OrbsRaid\\indicator")
        if i == 1 then
          icon:SetPoint("BOTTOMLEFT",0,0)
          tex:SetVertexColor(200/255,100/255,200/255)
        elseif i == 2 then
          icon:SetPoint("TOPLEFT",0,0)
          tex:SetVertexColor(50/255,200/255,50/255)
        elseif i == 3 then          
          icon:SetPoint("TOPRIGHT",0,0)
          tex:SetVertexColor(100/255,200/255,50/255)
          local count = icon:CreateFontString(nil, "OVERLAY")
          count:SetFont(NAMEPLATE_FONT,10,"THINOUTLINE")
          count:SetPoint("CENTER", -6, 0)
          --count:SetAlpha(0)
          icon.count = count
        elseif i == 4 then
          icon:SetPoint("BOTTOMRIGHT",0,0)
          tex:SetVertexColor(200/255,100/255,0/255)
        end
        icon.icon = tex
      end  
      auras.icons[sid] = icon
    end
    self.AuraWatch = auras
  end
  
  local function check_threat(self,event,unit)
    if unit then
      if self.unit ~= unit then
        return
      end
      local threat = UnitThreatSituation(unit)
  		if threat == 3 then
  		  self.glosst:SetVertexColor(1,0,0)
  		elseif threat == 2 then
  		  self.glosst:SetVertexColor(1,0.6,0)
  		else
  		  self.glosst:SetVertexColor(0.47,0.4,0.4)
  		end
	  end
  end
  
  local function updateHealth(self, event, unit, bar, min, max)
  
    local tmpunitname
    if unit then
      tmpunitname = UnitName(unit)
    end
    
    local c = max - min
    local d = floor(min/max*100)
    
    local newmin = do_format(min)
    local newmax = do_format(max)
    local diff = do_format(max-min)
    
    local color = RAID_CLASS_COLORS[select(2, UnitClass(unit))]

    bar:SetStatusBarColor(0.15,0.15,0.15,1)
    if color then
      bar.bg:SetVertexColor(color.r,color.g,color.b,1)
    else
      bar.bg:SetVertexColor(1,0.3,0.3,1)
    end
    
    if UnitLevel(unit) == 0 then
      self.Name:SetTextColor(0.4,0.4,0.4)
      self.Name:SetText("Oo")    
      bar.bg:SetVertexColor(0,0,0,0.4)
    elseif UnitIsConnected(unit) ~= 1 then
      self.Name:SetTextColor(0.4,0.4,0.4)
      self.Name:SetText("off")    
      bar.bg:SetVertexColor(0,0,0,0.4)
    elseif UnitIsDeadOrGhost(unit) == 1 then
      self.Name:SetTextColor(0.4,0.4,0.4)
      self.Name:SetText("dead")    
      bar.bg:SetVertexColor(0,0,0,0.4)
    elseif d == 100 then
      if color then
        self.Name:SetTextColor(color.r,color.g,color.b)
      end
      self.Name:SetText(tmpunitname)
    elseif min > 1 then
      self.Name:SetTextColor(1,1,1)
      self.Name:SetText("-"..diff)
    else
      self.Name:SetTextColor(0.4,0.4,0.4)
      self.Name:SetText("Oo")    
      bar.bg:SetVertexColor(0,0,0,0.4)
    end
    

    
  end
  
  local stylefunc = function(self, unit)
  
    self:SetScript("OnEnter", UnitFrame_OnEnter)
    self:SetScript("OnLeave", UnitFrame_OnLeave)
  
    --self:SetHeight(size)
    --self:SetWidth(size)
    self:SetAttribute('initial-height', size)
	  self:SetAttribute('initial-width', size)
    --self:SetFrameStrata("LOW")

    self.DebuffHighlight = self:CreateTexture(nil, "BACKGROUND")
    self.DebuffHighlight:SetPoint("TOPLEFT",self,"TOPLEFT",-5,5)
    self.DebuffHighlight:SetPoint("BOTTOMRIGHT",self,"BOTTOMRIGHT",5,-5)
    self.DebuffHighlight:SetTexture("Interface\\AddOns\\rTextures\\simplesquare_glow")
    self.DebuffHighlight:SetVertexColor(0, 0, 0, 0.7) -- set alpha to 0 to hide the texture
    self.DebuffHighlightAlpha = 1
    self.DebuffHighlightFilter = true
  
    self.Health = CreateFrame("StatusBar",nil,self)
    self.Health:SetFrameStrata("LOW")
    self.Health:SetPoint("TOPLEFT",self,"TOPLEFT",2,-2)
    self.Health:SetPoint("BOTTOMRIGHT",self,"BOTTOMRIGHT",-2,2)
    self.Health:SetStatusBarTexture("Interface\\AddOns\\oUF_D3OrbsRaid\\statusbar")
    self.Health:SetOrientation("VERTICAL") 
  
    self.Health.bg = self.Health:CreateTexture(nil, "BACKGROUND")
    self.Health.bg:SetAllPoints(self.Health)
    self.Health.bg:SetTexture("Interface\\AddOns\\oUF_D3OrbsRaid\\statusbar")
  
    self.Name = self.Health:CreateFontString(nil, "OVERLAY")
    --self.Name:SetPoint("CENTER", 0, 0)
    self.Name:SetPoint("LEFT", 2, 0)
    self.Name:SetPoint("RIGHT", -2, 0)
    self.Name:SetFont(NAMEPLATE_FONT,11,"THINOUTLINE")
    self.Name:SetShadowColor(0,0,0,0)
    self.Name:SetTextColor(1, 1, 1)
    
    self.glossf = CreateFrame("Frame",nil,self.Health)
    self.glossf:SetPoint("TOPLEFT",self.Health,"TOPLEFT",-2,2)
    self.glossf:SetPoint("BOTTOMRIGHT",self.Health,"BOTTOMRIGHT",2,-2)
    
    self.glosst = self.glossf:CreateTexture(nil, "ARTWORK")
    self.glosst:SetAllPoints(self.glossf)
    self.glosst:SetTexture("Interface\\AddOns\\rTextures\\simplesquare_roth")
    self.glosst:SetVertexColor(0.47,0.4,0.4)
    
    self:RegisterEvent('UNIT_THREAT_SITUATION_UPDATE', check_threat)
    
    if myclass == "DRUID" then
      d3o2_createAuraWatch(self,unit)
    end
  
    local ricon = self.Health:CreateTexture(nil, "OVERLAY")
    ricon:SetHeight(10)
    ricon:SetWidth(10)
    ricon:SetPoint("BOTTOM", self.Name, "TOP", 0, -1)
    ricon:SetTexture"Interface\\TargetingFrame\\UI-RaidTargetingIcons"
    self.RaidIcon = ricon
      
    if (not unit) then
      self.Range = true
      self.outsideRangeAlpha = 0.4
      self.inRangeAlpha = 1
    end
  
    self.PostUpdateHealth = updateHealth
  
    return self
  end
  
  local actstyle = "d3orbraid"
 
  oUF:RegisterStyle(actstyle, stylefunc)
  oUF:SetActiveStyle(actstyle)
  
  local function make_me_movable(f)
    if allow_frame_movement == 0 then
      f:IsUserPlaced(false)
    else
      f:SetMovable(true)
      f:SetUserPlaced(true)
      if lock_all_frames == 0 then
        f:EnableMouse(true)
        f:RegisterForDrag("LeftButton","RightButton")
        f:SetScript("OnDragStart", function(self) if IsAltKeyDown() and IsShiftKeyDown() then self:StartMoving() end end)
        f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
      end
    end  
  end
  
  local oUF_D3Orbs_RaidDragFrame = CreateFrame("Frame","oUF_D3Orbs_RaidDragFrame",UIParent)
  oUF_D3Orbs_RaidDragFrame:SetWidth(40)
  oUF_D3Orbs_RaidDragFrame:SetHeight(40)
  if lock_all_frames == 0 then
    oUF_D3Orbs_RaidDragFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", edgeFile = "", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
  end
  oUF_D3Orbs_RaidDragFrame:SetPoint("TOPLEFT",20,-20)
  make_me_movable(oUF_D3Orbs_RaidDragFrame)
  
  local raid = {}
  for i = 1, 8 do
    table.insert(raid, oUF:Spawn("header", "oUF_Raid"..i))
    if i == 1 then
      raid[i]:SetPoint("TOPLEFT", "oUF_D3Orbs_RaidDragFrame", "TOPLEFT", 0, 0)
    else
      raid[i]:SetPoint("TOPLEFT", raid[i-1], "TOPRIGHT", 5, 0)    
    end
    raid[i]:SetAttribute("showRaid", true)    
    raid[i]:SetAttribute("yOffset", -5)
    raid[i]:SetAttribute("groupFilter", i)    
    raid[i]:Show()
  end
