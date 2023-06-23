local att = {}
att.name = "doi_atow_barhandguard"
att.displayName = "M1918 Handguard"
att.displayNameShort = "M1918"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/barhg")
	att.description = {[1] = {t = "Slim retro grip. Cosmetic only", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
	self:setBodygroup(self.GaurdBGs.main, self.GaurdBGs.on)
	
	self.ForegripOverridePos = {
	["bipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, -10), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},

	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-.5, -.15, .2), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 10) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-4, 4, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 0, 0) }},
}
end

function att:detachFunc()
	self:setBodygroup(self.GaurdBGs.main, self.GaurdBGs.off)
	
	self.ForegripOverridePos = {
	["bipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, -10), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-.5, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 10) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 0, 0) }},
}
end

CustomizableWeaponry:registerAttachment(att)
