local att = {}
att.name = "doi_atow_stripperclips"
att.displayName = "Stripper Clip"
att.displayNameShort = "Clip"

att.statModifiers = {
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/magazine_stripper_clips")
	att.description = {[1] = {t = "Consistent reload speed.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Cannot be used with a scope.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
self.ShotgunReload = false
end

function att:detachFunc()
self.ShotgunReload = true
end

CustomizableWeaponry:registerAttachment(att)
