local att = {}
att.name = "doi_atow_revsbandoler"
att.displayName = "Holster + Bandolier"
att.displayNameShort = "Bandolier"
att.isBG = true

att.statModifiers = {DrawSpeedMult = .25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/revbandolier")
	att.description = {[1] = {t = "Increases shell insert speed.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
self.InsertShellTime = .75
end

function att:detachFunc()
self.InsertShellTime = .95
end

CustomizableWeaponry:registerAttachment(att)