local att = {}
att.name = "doi_atow_heavybolt"
att.displayName = "Heavy Bolt"
att.displayNameShort = "HWB"

att.statModifiers = {FireDelayMult = .35,
MaxSpreadIncMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/3burstrec")
	att.description = {[1] = {t = "Increased bolt weight.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)