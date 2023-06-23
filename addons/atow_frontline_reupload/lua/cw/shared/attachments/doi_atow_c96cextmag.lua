local att = {}
att.name = "doi_atow_c96cextmag"
att.displayName = "40rnd Mag"
att.displayNameShort = "40rnd"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.15,
ReloadSpeedMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/magazine_extended_c96")
	att.description = {
	[1] = {t = "Increases capacity by twenty rounds.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
	self:unloadWeapon()
	self.Primary.ClipSize = 40
	self.Primary.ClipSize_Orig = 40
	self.Animations = {fire = {"base_fire_2"},
	fire_aim = {"iron_fire_3","iron_fire_2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_ext",
	reload_empty = "base_reloadempty_ext",
	idle = "base_idle",
	draw = "base_draw"}
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Animations = {fire = {"base_fire_2"},
	fire_aim = {"iron_fire_3","iron_fire_2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

CustomizableWeaponry:registerAttachment(att)