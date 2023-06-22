local att = {}
att.name = "cw_sil_saiga_10"
att.displayName = "10 round magazine"
att.displayNameShort = "10 RND"

att.statModifiers = {
	// OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/" .. att.name)
	att.description = {
		[1] = {t = "Increases mag size to 10 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 10
	self.Primary.ClipSize_Orig = 10
end

function att:detachFunc()
	self._KK_INS2_customReloadSuffix = ""
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)
