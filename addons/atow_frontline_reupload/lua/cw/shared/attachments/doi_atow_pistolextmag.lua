local att = {}
att.name = "doi_atow_pistolextmag"
att.displayName = "14rnd Mag"
att.displayNameShort = "14rnd"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.15,
ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("vgui/inventory/magazine_extended_c96")
	att.description = {
	[1] = {t = "Increases capacity by seven rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL * 2
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL * 2
	self.Animations = {fire = {"base_fire","base_fire2","base_fire3"},
	fire_aim = {"iron_fire","iron_fire2","iron_fire3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_extmag",
	reload_empty = "base_reloadempty_extmag",
	idle = "base_idle",
	draw = "base_draw"}
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Animations = {fire = {"base_fire","base_fire2","base_fire3"},
	fire_aim = {"iron_fire","iron_fire2","iron_fire3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
end

CustomizableWeaponry:registerAttachment(att)