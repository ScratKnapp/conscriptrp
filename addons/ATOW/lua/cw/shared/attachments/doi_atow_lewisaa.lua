local att = {}
att.name = "doi_atow_lewisaa"
att.displayName = "Suppressive"
att.displayNameShort = "97rnd"
att.isBG = true
att.SpeedDec = 10

att.statModifiers = {
DrawSpeedMult = -0.15,
ReloadSpeedMult = -0.125,
SpreadPerShotMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lewis97")
	att.description = {[1] = {t = "Increases capacity by fifty rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.on)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.on)
	self:unloadWeapon()
	self.Primary.ClipSize = 97
	self.Primary.ClipSize_Orig = 97
	self:setupCurrentIronsights(self.AltIronPos, self.AltIronAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("Ironsight2")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self:setBodygroup(self.FSightBGs.main, self.FSightBGs.off)
	self:setBodygroup(self.RSightBGs.main, self.RSightBGs.off)
	self:unloadWeapon()
	self.Primary.ClipSize = 47
	self.Primary.ClipSize_Orig = 47
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)