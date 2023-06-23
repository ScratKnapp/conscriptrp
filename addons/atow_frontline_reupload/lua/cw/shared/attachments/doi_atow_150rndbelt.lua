local att = {}
att.name = "doi_atow_150rndbelt"
att.displayName = "150rnd Belt"
att.displayNameShort = "150Rnd"
att.isBG = true
att.SpeedDec = -2

att.statModifiers = {ReloadSpeedMult = 0.15,
DrawSpeedMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/150rndbelt")
	att.description = {[1] = {t = "A mid capacity belt, decreasing weight.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 150
	self.Primary.ClipSize_Orig = 150
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)