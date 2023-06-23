local att = {}
att.name = "doi_atow_bhpcomp"
att.displayName = "Compensator"
att.displayNameShort = "Comp"
att.isBG = true

att.statModifiers = {RecoilMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bhpcomp")
	att.description = {[1] = {t = "Vents gases upwards, reducing muzzle rise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.CompBGs.main, self.CompBGs.on)
end

function att:detachFunc()
	self:setBodygroup(self.CompBGs.main, self.CompBGs.off)
end

CustomizableWeaponry:registerAttachment(att)