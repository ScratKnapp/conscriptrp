local att = {}
att.name = "cw_sil_ip29_scope"
att.displayName = "IP29"
att.displayNameShort = "IP29"
att.aimPos = {"CWSILIP29Pos", "CWSILIP29Ang"}
att.FOVModifier = 0
att.AimViewModelFOV = 25
att.isSight = true

-- att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_SIGHT

att.statModifiers = {
	// OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/" .. att.name)
	att.description = {
		[1] = {t = "Provides 4x magnification.", c = CustomizableWeaponry.textColors.POSITIVE},
		[2] = {t = "Narrow scope reduces awareness. A lot.", c = CustomizableWeaponry.textColors.NEGATIVE},
		[3] = {t = "Can be disorienting at close range.", c = CustomizableWeaponry.textColors.NEGATIVE}
	}

	local path = "models/silver/stalker/weapons/attachments/ip29_reticle"

	att.zoomTextures = {
		{tex = surface.GetTextureID(path), offset = {0, 1}},
	}

	att._rtFov = 15
	att._rtReticle = surface.GetTextureID(path)
	att._reticleMat = Material(path)

	att.zoomDesired = 4

	function att:drawRenderTarget()
		local scopeEnt = self.AttachmentModelsVM[att.name].ent
		if self:isAiming() then
			scopeEnt:SetSequence(1)
		else
			scopeEnt:SetSequence(2)
		end

		CustomizableWeaponry_KK.ins2.rtSight:renderTarget(self, att)
	end

	function att:elementRender()
		CustomizableWeaponry_KK.ins2.rtSight:stencil(self, att)
	end
end

function att:attachFunc()
	self.OverrideAimMouseSens = 0.25
	self.SimpleTelescopicsFOV = 70
	self.AimViewModelFOV = 50
	self.BlurOnAim = true
	self.ZoomTextures = att.zoomTextures
end

function att:detachFunc()
	self.OverrideAimMouseSens = nil
	self.SimpleTelescopicsFOV = nil
	self.AimViewModelFOV = self.AimViewModelFOV_Orig
	self.BlurOnAim = false
end

CustomizableWeaponry:registerAttachment(att)
