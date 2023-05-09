local att = {}
att.name = "doi_atow_thompson50rnd"
att.displayName = "50rnd Drum"
att.displayNameShort = "50rnd"
att.isBG = true
att.SpeedDec = 5

att.statModifiers = {
DrawSpeedMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/thom50rnd")
	att.description = {
	[1] = {t = "Increases capacity by thirty rounds.", c = CustomizableWeaponry.textColors.VPOSITIVE},
	[2] = {t = "Decreases reload speed by 200%.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.fifty)
	self:unloadWeapon()
	self.Primary.ClipSize = 50
	self.Primary.ClipSize_Orig = 50
	self.Animations = {fire = {"base_fire_1"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_drum",
	reload_empty = "base_reload_drum",
	idle = "base_idle",
	draw = "base_draw"}
	self.ReloadTime = 3.8
	self.ReloadHalt = 5.3
	self.ReloadTime_Empty = 3.8
	self.ReloadHalt_Empty = 5.3
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.twenty)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	self.Animations = {fire = {"base_fire_1"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reload",
	idle = "base_idle",
	draw = "base_draw"}
	self.ReloadTime = 2.4
	self.ReloadHalt = 3.2
	self.ReloadTime_Empty = 2.4
	self.ReloadHalt_Empty = 3.2
end

CustomizableWeaponry:registerAttachment(att)