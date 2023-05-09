local att = {}
att.name = "doi_atow_suomi71rnd"
att.displayName = "71rnd Drum"
att.displayNameShort = "71rnd"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {DrawSpeedMult = -0.1,
ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thom50rnd")
	att.description = {
	[1] = {t = "Increases capacity by 41.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.on)
	self:unloadWeapon()
	self.Primary.ClipSize = 71
	self.Primary.ClipSize_Orig = 71
	self.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_extmag",
	reload_empty = "base_reloadempty_extmag",
	idle = "base_idle",
	draw = "base_draw"}
	self.ReloadTime = 1.775
	self.ReloadHalt = 2.6
	self.ReloadTime_Empty = 3.325
	self.ReloadHalt_Empty = 4.25
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.off)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	self.ReloadTime = 1.775
	self.ReloadHalt = 2.3
	self.ReloadTime_Empty = 3.1
	self.ReloadHalt_Empty = 3.8
end

CustomizableWeaponry:registerAttachment(att)