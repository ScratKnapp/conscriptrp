local att = {}
att.name = "doi_atow_m3a1suppressor"
att.displayName = "Integrated Suppressor"
att.displayNameShort = "Suppress"
att.isSuppressor = true

att.statModifiers = {
RecoilMult = -0.15,
DrawSpeedMult = -.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m3ggsuppressor")
	att.description = {[1] = {t = "Greatly reduces firing signature.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Decreases effective range.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)