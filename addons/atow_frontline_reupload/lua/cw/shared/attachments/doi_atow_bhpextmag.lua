local att = {}
att.name = "doi_atow_bhpextmag"
att.displayName = "20rnd Mag"
att.displayNameShort = "20rnd"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/magazine_extended_c96")
	att.description = {
	[1] = {t = "Increases capacity by eight rounds.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
	self:unloadWeapon()
	self.Primary.ClipSize = 20
	self.Primary.ClipSize_Orig = 20
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)