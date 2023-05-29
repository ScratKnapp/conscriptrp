local att = {}
att.name = "doi_atow_revspeedstrip"
att.displayName = "Speed Strip"
att.displayNameShort = "Strip"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/magazine_stripper_clips_pistol")
	att.description = {[1] = {t = "Loads extra shells quickly.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)