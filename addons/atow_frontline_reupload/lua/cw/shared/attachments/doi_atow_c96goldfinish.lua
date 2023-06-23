local att = {}
att.name = "doi_atow_c96goldfinish"
att.displayName = "Gold Plated"
att.displayNameShort = "Gold"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96gold")
	att.description = {
	[2] = {t = "(in Console) mat_specular must be set to 1", c = CustomizableWeaponry.textColors.NEUTRAL},
	[1] = {t = "Map must have cubemaps to work", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(1)
	end
end

function att:detachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(0)
	end
end

CustomizableWeaponry:registerAttachment(att)