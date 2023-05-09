local att = {}
att.name = "doi_atow_mp3430rnd"
att.displayName = "32 Round Mag"
att.displayNameShort = "32Rnd"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.1,
ReloadSpeedMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thom30rnd")
	att.description = {[1] = {t = "Increases capacity by 12.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.thirty)
	self:unloadWeapon()
	self.Primary.ClipSize = 32
	self.Primary.ClipSize_Orig = 32
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.twenty)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)