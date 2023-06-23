local att = {}
att.name = "am_atow_riot"
att.displayName = "Shotshell rounds"
att.displayNameShort = "Riot"

att.statModifiers = {HipSpreadMult = 0.5,
	AimSpreadMult =  0.7,
	DamageMult = -0.8,
	RecoilMult = -.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/riot")
	att.description = {{t = "Exchanges bullet for a wad & four pellets.", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Ineffective against armored targets.", c = CustomizableWeaponry.textColors.NEGATIVE}}
end

function att:attachFunc()
	self.CrosshairParts = {left = true, right = true, upper = false, lower = true}
	self.ClumpSpread = 0.11
	self.ClumpSpread_Orig = 0.11
	self.Shots = 4
	self.PenMod = .1
	self:unloadWeapon()
end

function att:detachFunc()
	self.CrosshairParts = {left = true, right = true, upper = true, lower = true}
	self.ClumpSpread = nil
	self.Shots = self.Shots_Orig
	self.PenMod = 1
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)