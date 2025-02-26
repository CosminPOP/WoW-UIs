
function Skinner:Links()
	if not self.db.profile.Tooltips.skin then return end

	self:SecureHook(Links, "TriggerEvent", function(this, link, frame)
--		self:Debug("Links_TE: [%s, %s]", link, frame:GetName())
		if not frame.skinned then
			if Skinner.db.profile.Tooltips.style == 3 then frame:SetBackdrop(Skinner.backdrop) end
			Skinner:skinTooltip(frame)
			frame.skinned = true
		end
		frame:SetBackdropBorderColor(Skinner:setTTBBC())
	end)

	Links.NORMAL_COLOR   = CopyTable(self.bColour)
	Links.ANCHORED_COLOR = CopyTable(self.bColour)

end
