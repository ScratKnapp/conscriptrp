local att = {}
att.name = "doi_atow_altsight"
att.displayName = "Alternate Sight"
att.displayNameShort = "Alt"
att.FOVModifier = 10
att.isBG = true

att.statModifiers = {
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/altsight")
	att.description = {[1] = {t = "May improve sight picture.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.on)
	self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("AltIron")
	end
end

function att:detachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.off)
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)
