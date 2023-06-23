local att = {}
att.name = "doi_atow_burstconv"
att.displayName = "Burst-fire receiver"
att.displayNameShort = "Burst"

att.statModifiers = {FireDelayMult = -.35,
AimSpreadMult = 0.2,
HipSpreadMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/3burstrec")
	att.description = {[1] = {t = "Adds two & three-burst firemodes.", c = CustomizableWeaponry.textColors.POSITIVE},
[2] = {t = "Change firemode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"2burst","safe", "3burst"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"auto","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)