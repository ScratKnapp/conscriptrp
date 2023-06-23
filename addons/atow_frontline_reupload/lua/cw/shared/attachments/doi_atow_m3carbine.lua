local att = {}
att.name = "doi_atow_m3carbine"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext."
att.isBG = true

att.statModifiers = {RecoilMult = -0.15,
AimSpreadMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m3barrel")
	att.description = {[1] = {t = "Increases effective range by 10M.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.carbine)
	self.MuzzleAttachmentName = 3
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.smg)
	self.MuzzleAttachmentName = 1
end

CustomizableWeaponry:registerAttachment(att)