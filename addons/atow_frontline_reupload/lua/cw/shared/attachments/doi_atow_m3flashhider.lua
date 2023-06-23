local att = {}
att.name = "doi_atow_m3flashhider"
att.displayName = "Flash Cone"
att.displayNameShort = "Cone"
att.isBG = true

att.statModifiers = {RecoilMult = -0.05,
HipSpreadMult = 0.1,
AimSpreadMult = 0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m3flash")
	att.description = {[1] = {t = "Reduces muzzle flash.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
self.MuzzleEffect = "muzzleflash_pistol"
end

function att:detachFunc()
self.MuzzleEffect = "muzzleflash_ak47"
end

CustomizableWeaponry:registerAttachment(att)