if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

CustomizableWeaponry:registerAmmo("12 Gauge Slug", "12 Gauge Slug", 12, 71)
CustomizableWeaponry:registerAmmo("12 Gauge Flechette", "12 Gauge Flechette", 12, 71)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MTs255 Revolver Shotgun"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.NoShells = false
	SWEP.Shell = "KK_INS2_12guage"

	SWEP.AttachmentModelsVM = {
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_sec_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(0.5, 0.5, 0.5), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_sec_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(0.5, 0.5, 0.5), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(0.5, 0.5, 0.5), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", pos = Vector(0,0.24,1), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(0,0.24,1), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", pos = Vector(0,0.25,1), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(0,0.24,1), angle = Angle(90,0,90), size = Vector(1, 1, 1), retSizeMult = 1.2, merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(0,0.25,-0.1), angle = Angle(0,180,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", pos = Vector(0,0.24,0.5), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", pos = Vector(0,0.24,-0.3), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(0,0.24,0.5), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(0,0.24,-1), angle = Angle(90,0,90), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(-32.8,10.5,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-43,10.5,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,15,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(-33.5,18.85,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(-33.5,18.6,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-43,10.5,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-43,10.5,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,15,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(0.7,-0.55,34.45), angle = Angle(-90,0,-90), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-3.348, -2.5, 1.135)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-3.328, -2.5, 0)
	SWEP.KKINS2KobraAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2EoTechPos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2EoTechAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2AimpointPos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2AimpointAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2MagnifierPos = Vector(-3.3284, -4, 00.076)
	SWEP.KKINS2MagnifierAng = Vector(0, 0, 0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2CSTMCMoreAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2CSTMBarskaAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0.02, 0.015, 0)
	
	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-3.328, -2.5, 00.1)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0.02, 0.015, 0)

	SWEP.CustomizationMenuScale = 0.015
end

SWEP.MuzzleEffect = "muzzleflash_m590_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_m590_3rd"


SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s"}},
	{header = "Lasers", offset = {125, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	["+use"] = {header = "Sight Contract", offset = {400, 0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Shotguns"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/mc255/v_mc255.mdl"
SWEP.WorldModel		= "models/weapons/mc255/w_mc255.mdl"

SWEP.WMPos = Vector(3.463, 0.935, -1.245)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.2
SWEP.FireSound = "CW_KK_INS2_MC255_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M590_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.Chamberable = false
SWEP.SnapToIdlePostReload = false
SWEP.ShotgunReload = false
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.3
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.023
SWEP.SpreadPerShot = 0.05
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 9
SWEP.Damage = 6.5

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 18

SWEP.MuzzleVelocity = 260

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},

	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35}
}