local att = {}
att.name = "doi_atow_stenmk5"
att.displayName = "Sten Mk.V"
att.displayNameShort = "Mk.V"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {VelocitySensitivityMult = -0.25,
DrawSpeedMult = -0.1,
RecoilMult = -0.15,
MaxSpreadIncMult = -0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/stenmk5")
	att.description = {[1] = {t = "Features a full stock and foregrip.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	--self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
	self.ForegripOverride = true
	self.ForegripParent = "grip"
end

function att:detachFunc()
	--self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
	self.ForegripOverride = true
	self.ForegripParent = "none"
end

CustomizableWeaponry:registerAttachment(att)