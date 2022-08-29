local att = {}
att.name = "am_penetrator"
att.displayName = "Penetrator"
att.displayNameShort = "Penetrator"

att.statModifiers = {DamageMult = 8,
	AimSpreadMult = 4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/slugrounds")
	att.description = {{t = "Greatly increases accuracy.", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Fires out only 1 pellet.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Shots = 1
	self.ClumpSpread = nil
	self:unloadWeapon()
	self.Primary.Ammo = "23mm Shell -P-"
end

function att:detachFunc()
	self:unloadWeapon()
	self.Shots = self.Shots_Orig
	self.ClumpSpread = self.ClumpSpread_Orig
	self.Primary.Ammo = "23mm Shell"
end

CustomizableWeaponry:registerAttachment(att)