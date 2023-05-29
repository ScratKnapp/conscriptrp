local att = {}
att.name = "am_flechettem37"
att.displayName = "Birdshot shells"
att.displayNameShort = "Bird"

att.statModifiers = {ClumpSpreadMult = -0.2,
	DamageMult = -0.6,
	RecoilMult = -.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/flechetterounds")
	att.description = {{t = "Increases chances to hit.", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Decreases penetration by 50%", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.Shots = 14
	self.PenMod = .5
	self:unloadWeapon()
end

function att:detachFunc()
	self.Shots = self.Shots_Orig
	self.PenMod = 1
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)