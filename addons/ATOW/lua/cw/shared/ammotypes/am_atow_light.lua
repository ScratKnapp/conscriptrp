local att = {}
att.name = "am_atow_light"
att.displayName = "Match rounds"
att.displayNameShort = "MAT"

att.statModifiers = {AimSpreadMult = -0.45,
DamageMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {{t = "Increases range by 50%", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Decreases surface penetration by 40%", c = CustomizableWeaponry.textColors.NEGATIVE},}
end

function att:attachFunc()
	self.PenMod = 0.55
	self:unloadWeapon()
end

function att:detachFunc()
	self.PenMod = 1
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)