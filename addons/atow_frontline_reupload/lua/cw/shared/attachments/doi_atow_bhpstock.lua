local att = {}
att.name = "doi_atow_bhpstock"
att.displayName = "Wooden Stock"
att.displayNameShort = "Stock"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {RecoilMult = -0.3,
OverallMouseSensMult = -0.05,
FireDelayMult = -.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bhpstock")
	att.description = {[1] = {t = "Significantly reduces muzzle rise.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.on)
	self.ForegripOverride = true
	self.ForegripParent = "2hand"
	self.Animations = {fire = {"iron_fire3"},
	fire_aim = {"iron_fire3"},
	fire_last = {"iron_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

function att:detachFunc()
	self:setBodygroup(self.BodyBGs.main, self.BodyBGs.off)
	self.ForegripOverride = true
	self.ForegripParent = "nah"
	self.Animations = {fire = {"base_fire","base_fire2"},
	fire_aim = {"iron_fire","iron_fire2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

CustomizableWeaponry:registerAttachment(att)