if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "PPSh-41"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.Shell = "KK_INS2_9x19"
	SWEP.ShellDelay = 0

	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
	SWEP.ShellWorldAngleAlign = {Forward = 0, Right = 0, Up = 0}

	SWEP.AttachmentModelsVM = {
		["std_mag"] = {model = "models/silver/stalker/weapons/attachments/a_ppsh41_mag.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cw_sil_ppsh41_drum"] = {model = "models/silver/stalker/weapons/attachments/a_ppsh41_drum.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["std_mag"] = {model = "models/silver/stalker/weapons/attachments/w_ppsh41_mag.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cw_sil_ppsh41_drum"] = {model = "models/silver/stalker/weapons/attachments/w_ppsh41_drum.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-1.8171, -2, 0.8168)
	SWEP.IronsightAng = Vector(-0.3968, 0.0228, 0)

end

SWEP.MuzzleEffect = "muzzleflash_mp5_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_mp5_3rd"

SWEP.Attachments = {
	{header = "Magazine", offset = {-300, -200}, atts = {"cw_sil_ppsh41_drum"}},
	["+reload"] = {header = "Ammo", offset = {-300, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "base_draw_empty",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	base_fire_last = "base_fire_last",
	base_fire_last_aim = "iron_fire_last",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_reload_mm = "base_reload_drum",
	base_reload_empty_mm = "base_reloadempty_drum",
	base_idle = "base_idle",
	base_idle_empty = "base_idle_empty",
	base_holster = "base_holster",
	base_holster_empty = "base_holster_empty",
	base_sprint = "base_sprint",
	base_sprint_empty = "base_sprint_empty",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_firemode_empty = "base_fireselect_empty",
	base_firemode_empty_aim = "iron_fireselect_empty",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "base_down_empty",
	base_safe_empty_aim = "iron_down_empty",
	base_crawl = "base_crawl",
	base_crawl_empty = "base_crawl_empty",
}

SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - SMGs"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_ppsh41.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_ppsh41.mdl"

SWEP.WMPos = Vector(6.176, 0.5, 0)
SWEP.WMAng = Vector(-15, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.rgd5
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.b2keh
SWEP.CW_KK_40MM_MDL = "models/weapons/w_grenade_kar98k.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 35
SWEP.Primary.DefaultClip	= 35
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x25MM"

SWEP.FireDelay = 60/1250
SWEP.FireSound = "CW_KK_INS2_NAM_PPSH_FIRE"
SWEP.Recoil = 0.77

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 25

SWEP.FirstDeployTime = 1.6
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.7

SWEP.Chamberable = false

SWEP.WeaponLength = 16

SWEP.KK_INS2_EmptyIdle = true

SWEP.ReloadTimes = {
	base_reload = {3.3, 3.9},
	base_reloadempty = {3.3, 5.2},

	base_reload_drum = {4.8, 5.7},
	base_reloadempty_drum = {4.8, 6.6},
}

SWEP.MuzzleVelocity = 488

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("std_mag", !self.ActiveAttachments.cw_sil_ppsh41_drum)
	end
end
