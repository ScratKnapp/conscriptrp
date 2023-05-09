local att = {}
att.name = "doi_atow_c96stock"
att.displayName = "Wooden Stock"
att.displayNameShort = "Stock"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.2,
OverallMouseSensMult = -0.05,
FireDelayMult = -.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/c96stock")
	att.description = {[1] = {t = "Significantly reduces muzzle rise.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self.Animations = {fire = {"iron_fire_1"},
	fire_aim = {"iron_fire_1"},
	fire_last = {"iron_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_clip",
	reload_empty = "base_reload_empty_clip",
	idle = "base_idle",
	draw = "base_draw"}
	self.ForegripOverride = true
	self.ForegripParent = "2hand"
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self.Animations = {fire = {"base_fire_1","base_fire_2","base_fire_3"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_clip",
	reload_empty = "base_reload_empty_clip",
	idle = "base_idle",
	draw = "base_draw"}
	self.ForegripOverride = true
	self.ForegripParent = "nah"
end

CustomizableWeaponry:registerAttachment(att)