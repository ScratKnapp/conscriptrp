local att = {}
att.name = "doi_atow_m1carbine30rnd"
att.displayName = "30 Round Mag"
att.displayNameShort = "30rnd"
att.isBG = true

att.statModifiers = {DrawSpeedMult = -0.1,
ReloadSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/m1c30rnd")
	att.description = {[1] = {t = "Increases capacity by 15.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.thirty)
	self:unloadWeapon()
	self.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload_ext",
	reload_empty = "base_reloadempty_ext",
	idle = "base_idle",
	draw = "base_draw"}
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.fifteen)
	self:unloadWeapon()
	self.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)