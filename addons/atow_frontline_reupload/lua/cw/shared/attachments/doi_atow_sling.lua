local att = {}
att.name = "doi_atow_sling"
att.displayName = "Rifle Sling"
att.displayNameShort = "Sling"
att.isBG = true

att.statModifiers = {DrawSpeedMult = .275}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/default_sling")
	att.description = {[1] = {t = "Assists weapon switching speed.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.SlingBGs.main, self.SlingBGs.on)
end

function att:detachFunc()
	self:setBodygroup(self.SlingBGs.main, self.SlingBGs.off)
end

CustomizableWeaponry:registerAttachment(att)
