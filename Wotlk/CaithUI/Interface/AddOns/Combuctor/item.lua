--[[
	item.lua
		An item button
--]]

--libs/other jambers
local InvData = Combuctor:GetModule('InventoryData')

--that's classy
local Item = Combuctor:NewClass('Button')
Item.SIZE = 37
Combuctor.Item = Item


--[[
	Dummy Slot
		A hack, used to provide a tooltip for cached items without tainting other item code
--]]

do
	local slot = CreateFrame('Button')
	slot:RegisterForClicks('anyUp')
	slot:SetToplevel(true)
	slot:Hide()

	local function Slot_OnEnter(self)
		local parent = self:GetParent()
		local link = parent.hasItem

		parent:LockHighlight()
		if parent.cached and link then
			Item.AnchorTooltip(self)
			GameTooltip:SetHyperlink(link)
			GameTooltip:Show()
		end
	end

	local function Slot_OnLeave(self)
		GameTooltip:Hide()
		self:Hide()
	end

	local function Slot_OnHide(self)
		local parent = self:GetParent()
		if parent then
			parent:UnlockHighlight()
		end
	end

	local function Slot_OnClick(self, button)
		self:GetParent():OnModifiedClick(button)
	end

	slot.UpdateTooltip = Slot_OnEnter
	slot:SetScript('OnClick', Slot_OnClick)
	slot:SetScript('OnEnter', Slot_OnEnter)
	slot:SetScript('OnLeave', Slot_OnLeave)
	slot:SetScript('OnShow', Slot_OnEnter)
	slot:SetScript('OnHide', Slot_OnHide)

	Item.dummySlot = slot
end


--[[
	The item widget
--]]

local id = 1
function Item:New()
	local item = self:Bind(self:GetBlizzard(id) or CreateFrame('Button', 'CombuctorItem' .. id, nil, 'ContainerFrameItemButtonTemplate'))

	--add a quality border texture
	--add a quality border texture
	local border = item:CreateTexture(nil, 'OVERLAY')
	--border:SetWidth(67)
	--border:SetHeight(67)
    border:SetAllPoints(item)
	-- border:SetPoint('CENTER', item)
	border:SetTexture("Interface\\Buttons\\UI-ActionButton-Glow")
	-- border:SetBlendMode('ADD')
	border:Hide()
	item.border = border

	--hack, make sure the cooldown model stays visible
	item.cooldown = _G[item:GetName() .. 'Cooldown']
	item.cooldown:SetFrameLevel(4)

	--get rid of any registered frame events, and use my own
	item:UnregisterAllEvents()
	item:SetScript('OnEvent', nil)
	item:SetScript('OnEnter', self.OnEnter)
	item:SetScript('OnHide', self.OnHide)
	item:SetScript('PostClick', self.PostClick)
	item.UpdateTooltip = nil

	id = id + 1

	return item
end

function Item:GetBlizzard(id)
	local bag = ceil(id / MAX_CONTAINER_ITEMS)
	local slot = (id-1) % MAX_CONTAINER_ITEMS + 1
	local item = _G[format('ContainerFrame%dItem%d', bag, slot)]

	if item then
		item:SetID(0)
		item:ClearAllPoints()
		return item
	end
end

--item pool methods
do
	local unused = {}

	function Item:Get()
		local item = next(unused)
		if item then
			unused[item] = nil
			return item
		end
		return self:New()
	end

	function Item:Release()
		unused[self] = true

		self.cached = nil
		self.hasItem = nil
		self:SetParent(nil)
		self:Hide()
	end
end

--dummy bag, a hack to enforce the internal blizzard rule that item:GetParent():GetID() == bagID
function Item:GetDummyBag(parent, id)
	local dummyBags = parent.dummyBags

	--metatable magic to create a new frame on demand
	if not dummyBags then
		dummyBags = setmetatable({}, {
			__index = function(t, k)
				local f = CreateFrame('Frame', nil, parent)
				f:SetID(k)
				t[k] = f
				return f
			end
		})
		parent.dummyBags = dummyBags
	end

	return dummyBags[id]
end


--[[ Update Methods ]]--

function Item:Set(parent, bag, slot)
	self:SetParent(self:GetDummyBag(parent, bag))
	self:SetID(slot)
	self:Update()
	return item
end

-- Update the texture, lock status, and other information about an item
function Item:Update()
	local player, bag, slot = self:GetSlotInfo()
	local link, count, texture, quality, locked, readable, cached = InvData:GetItemInfo(bag, slot, player)

	self.readable = readable
	self.cached = cached
	self.hasItem = texture and link

	SetItemButtonDesaturated(self, locked)
	SetItemButtonTexture(self, texture or 'Interface/PaperDoll/UI-Backpack-EmptySlot')
	SetItemButtonCount(self, count)

	self:UpdateBorder(quality)
	self:UpdateCooldown()

	if GameTooltip:IsOwned(self) then
		self:UpdateTooltip()
	end
end

--colors the item border based on the quality of the item.  hides it for common/poor items
function Item:UpdateBorder(quality)
	local border = self.border
	local link = self.hasItem

	if link and quality and quality > 1 then
		local r, g, b = GetItemQualityColor(quality)
		border:SetVertexColor(r, g, b, 0.5)
		border:Show()
	else
		border:Hide()
	end
end

function Item:UpdateLock(locked)
	local player, bag, slot = self:GetSlotInfo()
	local locked = select(3, GetContainerItemInfo(bag, slot))
	SetItemButtonDesaturated(self, locked)
end

function Item:UpdateCooldown()
	if (not self.cached) and self.hasItem then
		local player, bag, slot = self:GetSlotInfo()
		local start, duration, enable = GetContainerItemCooldown(bag, slot)
		CooldownFrame_SetTimer(self.cooldown, start, duration, enable)
	elseif self.cooldown:IsShown() then
		CooldownFrame_SetTimer(self.cooldown, 0, 0, 0)
	end
end

--fade out slots, if not true
function Item:Highlight(enable)
	if enable then		
		self:LockHighlight()
	else
		self:UnlockHighlight()
	end
end


--[[ Frame Events ]]--

function Item:OnDragStart()
	if self.cached and CursorHasItem() then
		ClearCursor()
	end
end

function Item:OnModifiedClick(button)
	if self.cached and self.hasItem then
		local player, bag, slot = self:GetSlotInfo()
		HandleModifiedItemClick(InvData:GetItemLink(bag, slot, player))
	end
end

function Item:OnHide()
	if self.hasStackSplit and self.hasStackSplit == 1 then
		StackSplitFrame:Hide()
	end
end


--[[ Tooltip Methods ]]--

function Item:OnEnter()
	if self.cached then
		self.dummySlot:SetParent(self)
		self.dummySlot:SetAllPoints(self)
		self.dummySlot:Show()
	else
		self.dummySlot:Hide()

		--boo for special case bank code
		local player, bag, slot = self:GetSlotInfo()
		if bag == BANK_CONTAINER then
			if self.hasItem then
				self:AnchorTooltip()
				GameTooltip:SetInventoryItem('player', BankButtonIDToInvSlotID(slot))
				GameTooltip:Show()
			end
		else
			ContainerFrameItemButton_OnEnter(self)
		end
	end
end

Item.UpdateTooltip = Item.OnEnter


--[[ Convenience Functions ]]--

function Item:GetPlayer()
	local bag = self:GetParent()
	if bag then
		local frame = bag:GetParent()
		return frame and frame:GetPlayer()
	end
	return UnitName('player')
end

function Item:GetBag()
	local bag = self:GetParent()
	return bag and bag:GetID()
end

function Item:GetSlotInfo()
	return self:GetPlayer(), self:GetBag(), self:GetID()
end

function Item:AnchorTooltip()
	if self:GetRight() >= (GetScreenWidth() / 2) then
		GameTooltip:SetOwner(self, 'ANCHOR_LEFT')
	else
		GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
	end
end