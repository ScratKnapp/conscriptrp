local att = {}
att.name = "doi_atow_onehand"
att.displayName = "Single-handed"
att.displayNameShort = "SH"
att.isBG = true

att.statModifiers = {RecoilMult = 0.40,
AimSpreadMult = 0.3,
ReloadSpeedMult = 0.1,
DrawSpeedMult = .24}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/onehand")
	att.description = {[1] = {t = "Allows firing while sprinting.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.ForegripOverride = true
	self.ForegripParent = "onehand"
	self.NormalHoldType = "pistol"
	self.HolsterOnLadder = false
	self.SprintingEnabled = false
	self.ShootWhileProne = true
end

function att:detachFunc()
	self.ForegripOverride = true
	self.ForegripParent = "nah"
	self.NormalHoldType = "revolver"
	self.HolsterOnLadder = true
	self.SprintingEnabled = true
	self.ShootWhileProne = false
end

CustomizableWeaponry:registerAttachment(att)