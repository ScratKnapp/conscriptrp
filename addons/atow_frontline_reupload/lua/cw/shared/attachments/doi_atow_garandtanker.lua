local att = {}
att.name = "doi_atow_garandtanker"
att.displayName = "Short Barrel"
att.displayNameShort = "Tanker"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {DamageMult = -0.13,
RecoilMult = 0.23,
AimSpreadMult = 0.32,
ReloadSpeedMult = 0.075}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/garandtanker")
	att.description = {[1] = {t = "Last thing a kraut peering into your hatch wants to see.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.carbine)
	self.MuzzleEffect = "muzzleflash_sr25"
	self.MuzzleAttachmentName = 3
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.rifle)
	self.MuzzleEffect = "muzzleflash_m14"
	self.MuzzleAttachmentName = 1
end

CustomizableWeaponry:registerAttachment(att)