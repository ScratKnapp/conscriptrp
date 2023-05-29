local att = {}
att.name = "doi_atow_bipod"
att.displayName = "Heavy Bipod"
att.displayNameShort = "Bipod"

att.statModifiers = {
	OverallMouseSensMult = -0.1,
	DrawSpeedMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bipod")
	att.description = {
		[1] = {t = "When deployed:", c = CustomizableWeaponry.textColors.REGULAR},
		[2] = {t = "Decreases recoil by 70%", c = CustomizableWeaponry.textColors.POSITIVE},
		[3] = {t = "Greatly increases aimed accuracy.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self.BipodInstalled = true
	
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self.BipodInstalled = false
end

CustomizableWeaponry:registerAttachment(att)
