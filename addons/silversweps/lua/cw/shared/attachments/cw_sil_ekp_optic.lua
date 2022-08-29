local att = {}
att.name = "cw_sil_ekp_optic"
att.displayName = "EKP-8"
att.displayNameShort = "EKP-8"
att.aimPos = {"CWSILEKPPos", "CWSILEKPAng"}
att.FOVModifier = 0
att.AimViewModelFOV = 40
att.isSight = true

att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_SIGHT

att.statModifiers = {
	// OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/" .. att.name)
	att.description = {
		[1] = {t = "Provides a bright reticle to ease aiming.", c = CustomizableWeaponry.textColors.POSITIVE}
	}

	att.reticleCol = "models/silver/outbreak/weapons/attachments/ekp_dot"
	att.reticleTop = "models/silver/outbreak/weapons/attachments/ekp_dot"
	att._reticleCol = Material(att.reticleCol)
	att._reticleTop = Material(att.reticleTop)

	att.reticle = "models/silver/outbreak/weapons/attachments/ekp_dot"
	att._reticleSize = 6

	-- att.reticle = "models/weapons/optics/kobra_dot"
	-- att._reticleSize = 16

	function att:elementRender()
		-- CustomizableWeaponry_KK.ins2.stencilSight:elementRender(self, att)
		CustomizableWeaponry_KK.ins2.stencilSight:elementRenderColorable(self, att)
	end
end

CustomizableWeaponry:registerAttachment(att)
