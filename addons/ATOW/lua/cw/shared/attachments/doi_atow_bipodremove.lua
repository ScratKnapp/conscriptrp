local att = {}
att.name = "doi_atow_bipodremove"
att.displayName = "Bipod Remove"
att.displayNameShort = "Bipod"
att.SpeedDec = -5

att.statModifiers = { DrawSpeedMult = 0.1,
RecoilMult = 0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bipod")
	att.description = {
	}
end

function att:attachFunc()
	self.BipodInstalled = false
	self.CanRestOnObjects = true
end

function att:detachFunc()
	self.BipodInstalled = true
	self.CanRestOnObjects = false
end

CustomizableWeaponry:registerAttachment(att)
