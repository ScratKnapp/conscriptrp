if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SVU"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x54"
	SWEP.ShellDelay = 0.03

	SWEP.AttachmentModelsVM = {

		["kk_ins2_pbs1"] = {model = "models/weapons/upgrades/a_suppressor_ak.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_ins.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},

		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/a_pso1_scope.mdl", bone = "FAM_MAIN", rLight = true, pos = Vector(0, -2, 1.75), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/a_okp7_optic.mdl", bone = "FAM_MAIN", pos = Vector(0, 0, 1.75), angle = Angle(0, -90, 0), size = Vector(1.3, 1.3, 1.3), merge = false},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

	}

	SWEP.AttachmentModelsWM = {

		["kk_ins2_pbs1"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl",  pos = Vector(-18,1.25,15.2), angle = Angle(0,0,0), size = Vector(1, 1, 1), bone = "A_Suppressor"},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_ins_foregrip.mdl", pos = Vector(-14,1,0), angle = Angle(0,0,-90), size = Vector(1, 1, 1), attachment = "Foregrip"},

		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/w_pso1_scope.mdl", bone = "R Hand", pos = Vector(-60, -0.4, -6.25), angle = Angle(0, 0, 5), size = Vector(1, 1, 1), merge = false},
		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/w_okp7_optic.mdl", bone = "R Hand", pos = Vector(-39.5, 0.4, -21.25), angle = Angle(0, 0, 0), size = Vector(1.3, 1.3, 1.3), merge = false},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(3.5,8.33,1.02), angle = Angle(0,180,90), size = Vector(1, 1, 1), attachment = "laser"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(3.5,8.33,1.02), angle = Angle(0,180,90), size = Vector(1, 1, 1), attachment = "laser"},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

	}

	SWEP.IronsightPos = Vector(-2.5851, -2, 1.7672)
	SWEP.IronsightAng = Vector()

	SWEP.CWSILPSO1Pos = Vector(-2.5542, 1, 1.156)
	SWEP.CWSILPSO1Ang = Vector(0, 0, 0)
	
	SWEP.CWSILOKP7Pos = Vector(-2.5542, 1, 0.756)
	SWEP.CWSILOKP7Ang = Vector(0, 0, 0)
	
	SWEP.CWSILEKPPos = Vector(-2.9502, 1, -0.286)
	SWEP.CWSILEKPAng = Vector(0, 0, 0)

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sks_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_sks_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -500}, atts = {"cw_sil_pso1_scope", "cw_sil_okp7_optic"}},
	{header = "Barrel", offset = {-200, -500}, atts = {"kk_ins2_pbs1"}},
	{header = "Under", offset = {-500, 0}, atts = {"kk_ins2_vertgrip"}},
	{header = "Lasers", offset = {125, 300}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_last = "base_fire",
	base_fire_last_aim = "iron_fire",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_idle_empty = "base_idle",
	base_holster = "base_holster",
	base_holster_empty = "base_holster",
	base_sprint = "base_sprint",
	base_sprint_empty = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "base_down",
	base_safe_empty_aim = "iron_down",
	base_crawl = "base_crawl",
	base_crawl_empty = "base_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_draw_empty = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_last = "foregrip_fire",
	foregrip_fire_last_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "base_idle",
	foregrip_idle_empty = "base_idle",
	foregrip_holster = "foregrip_holster",
	foregrip_holster_empty = "foregrip_holster",
	foregrip_sprint = "foregrip_sprint",
	foregrip_sprint_empty = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_safe_empty = "foregrip_down",
	foregrip_safe_empty_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",
	foregrip_crawl_empty = "foregrip_crawl",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Long Rifles"

SWEP.Author			= "Lt. Taylor & Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_svu.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_svu.mdl"

SWEP.WMPos = Vector(6, 2.309, -1)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 60/400
SWEP.FireSound = "CW_KK_INS2_SVD_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_SVD_FIRE_SUPPRESSED"
SWEP.Recoil = 2.3

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 1
SWEP.SpreadCooldown = 1.8
SWEP.Shots = 1
SWEP.Damage = 90

SWEP.FirstDeployTime = 1.5
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.RecoilToSpread = 0.8

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.WeaponLength = 22

SWEP.KK_INS2_EmptyIdle = true

SWEP.MuzzleVelocity = 830

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.3},
	base_reloadempty = {2.3, 4.6},

	foregrip_reload = {2.3, 3.3},
	foregrip_reloadempty = {2.3, 4.6},

	deployed_reload = {2.3, 3.3},
	deployed_reloadempty = {2.3, 4.6},
}