local att = {}
att.name = "am_cal_9x19"
att.displayName = "Caliber Swap: 9x19MM"
att.displayNameShort = "9x19"

att.statModifiers = {DamageMult = 0.15,
	RecoilMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/magnumrounds")
	att.description = {}
end

function att:attachFunc()
	self:unloadWeapon()
	if (string.EndsWith(self.Primary.Ammo, " AP")) then
		self.Primary.Ammo_ORIG = string.TrimRight(self.Primary.Ammo, " AP")
		self.Primary.Ammo = "9x19MM AP"
	elseif (string.EndsWith(self.Primary.Ammo, " MG")) then
		self.Primary.Ammo_ORIG = string.TrimRight(self.Primary.Ammo, " MG")
		self.Primary.Ammo = "9x19MM MG"
	elseif (string.EndsWith(self.Primary.Ammo, " -ZL-")) then
		self.Primary.Ammo_ORIG = string.TrimRight(self.Primary.Ammo, " -ZL-")
		self.Primary.Ammo = "9x19MM -ZL-"
	else
		self.Primary.Ammo_ORIG = self.Primary.Ammo
		self.Primary.Ammo = "9x19MM"
	end
end

function att:detachFunc()
	self:unloadWeapon()
	if (string.EndsWith(self.Primary.Ammo, " AP")) then
		self.Primary.Ammo = self.Primary.Ammo_ORIG .. " AP"
	elseif (string.EndsWith(self.Primary.Ammo, " MG")) then
		self.Primary.Ammo = self.Primary.Ammo_ORIG .. " MG"
	elseif (string.EndsWith(self.Primary.Ammo, " -ZL-")) then
		self.Primary.Ammo = self.Primary.Ammo_ORIG .. " -ZL-"
	else
		self.Primary.Ammo = self.Primary.Ammo_ORIG
	end
end

CustomizableWeaponry:registerAttachment(att)