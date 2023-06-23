local att = {}
att.name = "doi_atow_c96longbarrel"
att.displayName = "Extended Barrel"
att.displayNameShort = "Ext."
att.aimPos = {"LongBarrelPos", "LongBarrelAng"}
att.FOVModifier = 10
att.isBG = true
att.isSight = true
att.withoutRail = true
att.SpeedDec = 3

att.statModifiers = {AimSpreadMult = -0.5,
RecoilMult = 0.15,
ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96barrel")
		att.description = {}
end
	
function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.on)
	self.MuzzleAttachmentName = 3
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.off)
	self.MuzzleAttachmentName = 1
end

CustomizableWeaponry:registerAttachment(att)