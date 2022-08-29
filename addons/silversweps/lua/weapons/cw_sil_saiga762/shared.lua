if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Saiga 7.62"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x39"
	SWEP.ShellDelay = 0.03

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_04.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_pbs1"] = {model = "models/weapons/upgrades/a_suppressor_ak.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/a_bipod_sks.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/a_pso2_scope.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0, -1.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 0.85},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_4.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_pbs1"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl", pos = Vector(-32.7,0,11.9), angle = Angle(), size = Vector(1, 1, 1), attachment = "silencer"},

		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/w_bipod_mosin.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/w_pso2_scope.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-2.6751, -3.5, 1.65)
	SWEP.IronsightAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.6751, -1, 0.72)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2KobraPos = Vector(-2.6751, -2, 0.69)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.6751, -1, 0.72)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.6751, -2.5, 0.55)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.6251, -2.4, 0.96)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.CWSILPSO1Pos = Vector(-2.630, -1, 0.994)
	SWEP.CWSILPSO1Ang = Vector(0, 0, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.6751, -1.5, 0.73)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.KKINS2CSTMCMorePos = Vector(-2.6751, -2, 0.73)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.6751, -2, 0.73)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.6751, -2, 0.73)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.6751, -2, 0.73)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.6751, -2, 0.73)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.6751, -2, 0.60)
	SWEP.KKINS2CSTMACOGAng = Vector()

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sks_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_sks_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -500}, atts = {"kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_elcan", "kk_ins2_po4", "cw_sil_pso1_scope", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s", "kk_ins2_cstm_acog"}},
	{header = "Barrel", offset = {-200, -500}, atts = {"kk_ins2_pbs1"}},
	{header = "Under", offset = {-500, 0}, atts = {"kk_ins2_bipod"}},
	{header = "Lasers", offset = {125, 300}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "More Sight", offset = {1000, -50}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	["+use"] = {header = "Sight Contract", offset = {400, -50}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "empty_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_last = "base_firelast",
	base_fire_last_aim = "iron_firelast",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_idle_empty = "empty_idle",
	base_holster = "base_holster",
	base_holster_empty = "empty_holster",
	base_sprint = "base_sprint",
	base_sprint_empty = "empty_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "empty_down",
	base_safe_empty_aim = "iron_empty_down",
	base_crawl = "base_crawl",
	base_crawl_empty = "empty_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_draw_empty = "foregrip_empty_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire_b",
	foregrip_fire_last = "foregrip_firelast",
	foregrip_fire_last_aim = "foregrip_iron_firelast_b",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire_b",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "foregrip_holster",
	foregrip_idle_empty = "foregrip_empty_idle",
	foregrip_holster = "foregrip_holster",
	foregrip_holster_empty = "foregrip_empty_holster",
	foregrip_sprint = "foregrip_sprint",
	foregrip_sprint_empty = "foregrip_empty_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_safe_empty = "foregrip_empty_down",
	foregrip_safe_empty_aim = "foregrip_empty_iron_down",
	foregrip_crawl = "foregrip_crawl",
	foregrip_crawl_empty = "foregrip_empty_crawl",

	bipod_in = "deployed_in",
	bipod_in_empty = "deployed_empty_in",
	bipod_fire = "deployed_fire",
	bipod_fire_last = "deployed_firelast",
	bipod_fire_empty = {"deployed_dryfire","deployed_empty_dryfire"},
	bipod_fire_aim = "deployed_iron_fire",
	bipod_fire_last_aim = "deployed_iron_fire_last",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reloadempty",
	bipod_out = "deployed_out",
	bipod_out_empty = "deployed_empty_out",

}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Long Rifles"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_saiga762.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_saiga762.mdl"

SWEP.WMPos = Vector(5, 0.89, -1)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 60/400
SWEP.FireSound = "CW_KK_INS2_SKS_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_SKS_FIRE_SUPPRESSED"
SWEP.Recoil = 1.08

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 35

SWEP.FirstDeployTime = 1.5
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.RecoilToSpread = 0.8

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.WeaponLength = 22

SWEP.KK_INS2_EmptyIdle = true

SWEP.MuzzleVelocity = 735

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.3},
	base_reloadempty = {2.3, 4.6},

	foregrip_reload = {2.3, 3.3},
	foregrip_reloadempty = {2.3, 4.6},

	deployed_reload = {2.3, 3.3},
	deployed_reloadempty = {2.3, 4.6},
}