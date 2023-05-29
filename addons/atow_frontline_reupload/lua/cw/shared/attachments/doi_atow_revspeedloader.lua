local att = {}
att.name = "doi_atow_revspeedloader"
att.displayName = "6rnd Speedloader"
att.displayNameShort = "Spd Load"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/revspeedloaders")
	att.description = {[1] = {t = "Consistent reload speed.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.ShotgunReload = false
end

function att:detachFunc()
	self.ShotgunReload = true
end

CustomizableWeaponry:registerAttachment(att)