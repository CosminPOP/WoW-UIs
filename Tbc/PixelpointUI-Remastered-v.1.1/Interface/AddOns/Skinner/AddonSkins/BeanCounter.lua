
function Skinner:BeanCounter()
	if not self.db.profile.AuctionFrame then return end
--	self:Debug("BeanCounter Loaded: [%s]", AuctionFrame.numTabs)

	self:applySkin(BeanCounterBaseFrame)

	local uiFrame = BeanCounterUiFrame
	self:moveObject(self:getRegion(uiFrame, 1), nil, nil, "+", 10)
	self:keepFontStrings(uiFrame.selectbox.box)
	self:skinEditBox(uiFrame.searchBox, {9})
	self:moveObject(uiFrame.searchBox, nil, nil, "+", 10)
	self:skinUsingBD2(uiFrame.resultlist.sheet.panel.hScroll)
	self:skinUsingBD2(uiFrame.resultlist.sheet.panel.vScroll)
	self:applySkin(uiFrame.resultlist)

	if type(self["AucExtras"]) == "function" then self:AucExtras() end

end
