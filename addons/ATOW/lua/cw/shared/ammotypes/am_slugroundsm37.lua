local att = {}
att.name = "am_slugroundsm37"
att.displayName = "Slug shells"
att.displayNameShort = "Slug"

att.statModifiers = {DamageMult = 5.5,
	RecoilMult = .25,
	AimSpreadMult = -.3}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/slugrounds")
	att.description = {{t = "Accurately deals damage at range.", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Increases penetration by 100%", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Fires a single projectile per shot.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	self.Shots = 1
	self.ClumpSpread = nil
	self.MuzzleEffect = "muzzleflash_ak47"
	self:unloadWeapon()
end

function att:detachFunc()
	self.CrosshairParts = {left = true, right = true, upper = false, lower = true}
	self.Shots = self.Shots_Orig
	self.ClumpSpread = self.ClumpSpread_Orig
	self.MuzzleEffect = "muzzleflash_m3"
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)