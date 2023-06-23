local att = {}
att.name = "doi_atow_m1928grip"
att.displayName = "Wooden Foregrip"
att.displayNameShort = "Foregrip"
att.isBG = true

att.statModifiers = {VelocitySensitivityMult = -0.2,
DrawSpeedMult = -0.05,
RecoilMult = -0.2,
MaxSpreadIncMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m1928grip")
	att.description = {}
	canModifyBones = true
end
function att:attachFunc()
	self:setBodygroup(self.GripBGs.main, self.GripBGs.on)
	self.ForegripOverride = true
	self.ForegripParent = "foregrip"
end

function att:detachFunc()
	self:setBodygroup(self.GripBGs.main, self.GripBGs.off)
	self.ForegripOverride = true
	self.ForegripParent = "nah"
end

CustomizableWeaponry:registerAttachment(att)