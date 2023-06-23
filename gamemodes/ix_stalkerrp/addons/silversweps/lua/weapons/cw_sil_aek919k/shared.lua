if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_soundscript.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AEK-919k"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_9x19"

	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
	SWEP.ShellWorldAngleAlign = {Forward = 0, Right = 0, Up = 180}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_suppressor_pistol"] = {model = "models/weapons/upgrades/a_suppressor_pistol.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_suppressor_pistol"] = {model = "models/weapons/upgrades/w_sil_pistol.mdl", bone = "A_Laser", pos = Vector(), angle = Angle(), size = Vector(1.1, 2, 1.1), merge = true},
	}

	SWEP.IronsightPos = Vector(-2.158, -2, 0.9007)
	SWEP.IronsightAng = Vector(0.3131, 0, 0)

	SWEP.CustomizationMenuScale = 0.010
end

SWEP.MuzzleEffect = "muzzleflash_mp5_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_mp5_3rd"

SWEP.Attachments = {
	{header = "Barrel", offset = {-300, -700}, atts = {"kk_ins2_suppressor_pistol"}},
	["+reload"] = {header = "Ammo", offset = {0, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
}

SWEP.SpeedDec = 15

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "pistol"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - SMGs"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_aek919k.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_aek919k.mdl"

SWEP.WMPos = Vector(2.271, 4.967, -1.544)
SWEP.WMAng = Vector(-20, -30, 130)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 60/900
SWEP.FireSound = "CW_KK_INS2_MP5K_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_MP5K_FIRE_SUPPRESSED"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 12

SWEP.FirstDeployTime = 1.2
SWEP.DeployTime = 0.6
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 18

SWEP.MuzzleVelocity = 366

SWEP.ReloadTimes = {
	base_reload = {2.43, 3.1},
	base_reloadempty = {3.27, 4.45},
}