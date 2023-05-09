local att = {}
att.name = "doi_atow_zfg42"
att.displayNameShort = "ZfG-42 4x"
att.displayName = "ZfG-42"
att.aimPos = {"ZFG42Pos", "ZFG42Ang"}
att.FOVModifier = 15 
att.isSight = true
att.withoutRail = true

att.statModifiers = {
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/optic_scope_4x")
	att.description = {
		[1] = {t = "German 1.5x-4x magnification scope.", c = CustomizableWeaponry.textColors.POSITIVE},
		[2] = {t = "For medium range.", c = CustomizableWeaponry.textColors.POSITIVE},
		[3] = {t = "Scroll to adjust.", c = CustomizableWeaponry.textColors.NEUTRAL}
	}
	
	att.telescopicsFOVRange = {
		25, 
		18, 
		12
	}
	
	-- note that the FOVs in this table are inverted, that's because the FOV setup in CalcView subtracts the simple telescopics value
	-- instead of over-writing it
	att.newTelescopicsFOV = true
	att.simpleTelescopicsFOVRange = {
		60,
		45,
		30
	}

	local old, x, y, ang
	local reticle = surface.GetTextureID("models/khrcw2/doipack/gewehr43/zf4_crosshair")
	
	att.zoomTextures = {[1] = {tex = reticle, offset = {0, 1}}}
	
	local lens = surface.GetTextureID("cw2/gui/lense")
	local lensMat = Material("cw2/gui/lense")
	local cd, alpha = {}, 0.5
	local Ini = true
	
	-- render target var setup
	cd.x = 0
	cd.y = 0
	cd.w = 1024
	cd.h = 1024
	cd.fov = 10
	cd.drawviewmodel = false
	cd.drawhud = false
	cd.dopostprocess = false
	
	att.newTelescopicsFOV = true
	-- default shadow mask config
	att.shadowMaskConfig = {		
		w = 1024, -- base width of the texture, should match the texture size
		h = 1024, -- same, but height
		wOff = 384, -- width offset for the mask texture
		hOff = 384, -- height offset for the mask texture
		maxOffset = 130, -- maximum pixel offset for the 'shadow' effect
		maskMaxStrength = 1, -- at what point will the shadow mask reach peak strength?
		maxZoom = 416, -- how many pixels can we zoom in at most based on the difference between our base viewmodel position and aim position?
		posX = 1, -- shadow offset position multiplier, X
		posY = 1, -- shadow offset position multiplier, Y
		flipAngles = false -- whether we should swap pitch with yaw when calculating the shadow mask offset
	}
	
	function att:drawRenderTarget()
		local complexTelescopics = self:canUseComplexTelescopics()
		
		-- if we don't have complex telescopics enabled, don't do anything complex, and just set the texture of the lens to a fallback 'lens' texture
		if not complexTelescopics then
			self.TSGlass:SetTexture("$basetexture", lensMat:GetTexture("$basetexture"))
			return
		end
		
		if self:canSeeThroughTelescopics(att.aimPos[1]) then
			alpha = math.Approach(alpha, 0, FrameTime() * 5)
		else
			alpha = math.Approach(alpha, 1, FrameTime() * 5)
		end
		
		x, y = ScrW(), ScrH()
		old = render.GetRenderTarget()
	
		ang = self:getTelescopeAngles()
		
			ang:RotateAroundAxis(ang:Right(), 0)
			ang:RotateAroundAxis(ang:Up(), 0)
			ang:RotateAroundAxis(ang:Forward(), 0)
		
	
		local size = self:getRenderTargetSize()

		cd.w = size
		cd.h = size
		cd.angles = ang
		cd.origin = self.Owner:GetShootPos()
		
		self:adjustTelescopicsFOV(cd)
		
		render.SetRenderTarget(self.ScopeRT)
		render.SetViewPort(0, 0, size, size)
			if alpha < 1 or Ini then
				render.RenderView(cd)
				Ini = false
			end
					
			ang = self.Owner:EyeAngles()
			ang.p = ang.p + self.BlendAng.x
			ang.y = ang.y + self.BlendAng.y
			ang.r = ang.r + self.BlendAng.z
			ang = -ang:Forward()
			
			local light = render.ComputeLighting(self.Owner:GetShootPos(), ang)
			
			cam.Start2D()				
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetTexture(reticle)
				surface.DrawTexturedRect(0, 0, size, size)
				
				if alpha < 1 then
					self:drawLensShadow(size, size)
				end
				
				surface.SetDrawColor(150 * light[1], 150 * light[2], 150 * light[3], 255 * alpha)
				surface.SetTexture(lens)
				surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size, size, 90)
			cam.End2D()
		render.SetViewPort(0, 0, x, y)
		render.SetRenderTarget(old)
		
		if self.TSGlass then
			self.TSGlass:SetTexture("$basetexture", self.ScopeRT)
		end
	end
end

function att:attachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.off)
	self.OverrideAimMouseSens = 0.6
	self.SimpleTelescopicsFOV = 12
	self.AimViewModelFOV = 50
	self.BlurOnAim = true
	self.ZoomTextures = att.zoomTextures
end

function att:detachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.on)
	self.OverrideAimMouseSens = nil
	self.SimpleTelescopicsFOV = nil
	self.AimViewModelFOV = self.AimViewModelFOV_Orig
	self.BlurOnAim = false
end

CustomizableWeaponry:registerAttachment(att)