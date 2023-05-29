local att = {}
att.name = "doi_atow_stensuppressor"
att.displayName = "Integrated Suppressor"
att.displayNameShort = "Suppress"
att.isSuppressor = true

att.statModifiers = {
RecoilMult = -0.15,
DrawSpeedMult = -.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/stenmk2sup")
	att.description = {[1] = {t = "Greatly reduces firing signature.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Decreases effective range.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
	self:setBodygroup(self.SuppressorBGs.main, self.SuppressorBGs.on)
end

function att:detachFunc()
	self:resetSuppressorStatus()
	self:setBodygroup(self.SuppressorBGs.main, self.SuppressorBGs.off)
end

CustomizableWeaponry:registerAttachment(att)