local att = {}
att.name = "doi_atow_altsightmk5"
att.displayName = "Mk.V Front Sight"
att.displayNameShort = "Mk.V Alt"
att.FOVModifier = 10
att.isBG = true

att.statModifiers = {
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mk5sight")
	att.description = {[1] = {t = "May improve sight picture.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.on)
	self:setBodygroup(self.IronBGs.main, self.IronBGs.on)
	self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("AltIron")
	end
end

function att:detachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.off)
	self:setBodygroup(self.IronBGs.main, self.IronBGs.off)
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)
