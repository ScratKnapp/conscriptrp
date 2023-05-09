local att = {}
att.name = "am_atow_ap"
att.displayName = "Tungsten-core rounds"
att.displayNameShort = "TC"

att.statModifiers = {DamageMult = -0.1,
RecoilMult = 0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/apammo")
	att.description = {{t = "Increases surface penetration by 80%", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.PenMod = 1.8
	self:unloadWeapon()
end

function att:detachFunc()
	self.PenMod = 1
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)