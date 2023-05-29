local att = {}
att.name = "doi_atow_c96cshortbarrel"
att.displayName = "Short Barrel"
att.displayNameShort = "Short"
att.FOVModifier = 10
att.isBG = true

att.statModifiers = {AimSpreadMult = 1.25,
HipSpreadMult = -0.15,
RecoilMult = 0.45,
ReloadSpeedMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96barrel")
		att.description = {}
end
	
function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.on)
	self.MuzzleAttachmentName = 3
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("ShortBarrel")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.off)
	self.MuzzleAttachmentName = 1
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)