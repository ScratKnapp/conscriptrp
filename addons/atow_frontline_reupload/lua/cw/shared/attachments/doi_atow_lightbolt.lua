local att = {}
att.name = "doi_atow_lightbolt"
att.displayName = "Light Bolt"
att.displayNameShort = "LWB"

att.statModifiers = {DamageMult = -.1,
FireDelayMult = -.2,
RecoilMult = 0.35,
AimSpreadMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Reduced bolt weight.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
end

function att:detachFunc()
end

CustomizableWeaponry:registerAttachment(att)