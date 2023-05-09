local att = {}
att.name = "am_atow_lowvel"
att.displayName = "Low Velocity rounds"
att.displayNameShort = "LV"

att.statModifiers = {AimSpreadMult = 0.5,
HipSpreadMult = -0.4}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
	att.description = {{t = "Sacrifices long range accuracy for hit consistency in close quarters.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
end

function att:detachFunc()
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)