local att = {}
att.name = "doi_atow_m2carbineconv"
att.displayName = "Select-fire receiver"
att.displayNameShort = "Auto"

att.statModifiers = {FireDelayMult = -.286,
MaxSpreadIncMult = 0.1,
HipSpreadMult = 0.3}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/fullautorec")
	att.description = {[1] = {t = "Adds a full-auto firemode.", c = CustomizableWeaponry.textColors.VPOSITIVE},
[2] = {t = "Change firemode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe","auto"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self:CycleFiremodes()
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)