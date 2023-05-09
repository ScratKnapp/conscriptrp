local att = {}
att.name = "doi_atow_thompsonrc"
att.displayName = "Compensator"
att.displayNameShort = "Comp"
att.isBG = true

att.statModifiers = {RecoilMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thomrc")
	att.description = {[1] = {t = "Significantly reduces muzzle rise.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self.MuzzleEffect = "muzzleflash_ak74"
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self.MuzzleEffect = "muzzleflash_ak47"
end

CustomizableWeaponry:registerAttachment(att)