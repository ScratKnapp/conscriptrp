local att = {}
att.name = "doi_atow_greasedboltwelrod"
att.displayName = "Machined Bolt"
att.displayNameShort = "Machined"
att.isBG = true

att.statModifiers = {FireDelayMult = -.16}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/welrodbolt")
	att.description = {[1] = {t = "When every round-per-minute counts.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self.Animations = {fire = "base_fire_greased",
	fire_aim = "iron_fire_greased",
	fire_last = "base_firelast",
	fire_last_aim = "iron_firelast",
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

function att:detachFunc()
	self.Animations = {fire = "base_fire",
	fire_aim = "iron_fire",
	fire_last = "base_firelast",
	fire_last_aim = "iron_firelast",
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

CustomizableWeaponry:registerAttachment(att)