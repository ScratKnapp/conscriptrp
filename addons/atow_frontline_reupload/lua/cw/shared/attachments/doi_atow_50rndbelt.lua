local att = {}
att.name = "doi_atow_50rndbelt"
att.displayName = "50rnd Belt"
att.displayNameShort = "50Rnd"
att.isBG = true
att.SpeedDec = -6

att.statModifiers = {ReloadSpeedMult = 0.25,
DrawSpeedMult = 0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/50rndbelt")
	att.description = {[1] = {t = "A low capacity belt, decreasing weight significantly.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 50
	self.Primary.ClipSize_Orig = 50
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)