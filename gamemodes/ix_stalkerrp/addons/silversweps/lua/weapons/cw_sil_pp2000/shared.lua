AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "PP-2000"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "x"
	killicon.AddFont("cw_mp5", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.87
	
	SWEP.IronsightPos = Vector(1.48, 2.68, 1.259)
	SWEP.IronsightAng = Vector(0.1, 0, 0)
	
	SWEP.KKINS2KobraPos = Vector(1.48, 2.68, -0.059)
	SWEP.KKINS2KobraAng = Vector(0, -0.087, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.3252, -2, -0.2142)
	SWEP.KKINS2EoTechAng = Vector(0, -0.087, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.3357, -1, -0.2176)
	SWEP.KKINS2AimpointAng = Vector(0, -0.087, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.3299, -1, -0.4836)
	SWEP.KKINS2ElcanAng = Vector(0, -0.087, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.2805, -2, -0.1772)
	SWEP.KKINS2PO4Ang = Vector(0, -0.087, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.328, -1, -0.2111)
	SWEP.KKINS2MagnifierAng = Vector(0, -0.087, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.3299, -1, -0.2093)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0, -0.087, 0)
	
	SWEP.MicroT1Pos = Vector(1.48, 2.68, 0.32)
	SWEP.MicroT1Ang = Vector(0, 0, 0)	
		
	SWEP.EoTechPos = Vector(1.48, 2.68, 0.22)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(1.48, 2.68, 0.33)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(1.48, 2.68, 0.75)
	SWEP.ReflexAng = Vector(-1.668, 0, 0)	
	
	SWEP.CmorePos = Vector(1.48, 2.68, 0.7)
	SWEP.CmoreAng = Vector(-1.668, 0, 0)	
	
	SWEP.SprintPos = Vector(-4.444, -1, 0.082)
	SWEP.SprintAng = Vector(-12.849, -39.23, 0)

	SWEP.CustomizePos = Vector(-8.174, -1.27, -1.288)
	SWEP.CustomizeAng = Vector(17.954, -40.578, -18.357)
	
	SWEP.AlternativePos = Vector(0, 1.325, -0.801)
	SWEP.AlternativeAng = Vector(0, 0, 0)
		
	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "body", pos = Vector(-0.21, -2.5, -2.75), angle = Angle(0, 0, 180), adjustment = {min = -1.5, max = -0.2, axis = "y", inverse = true}, size = Vector(0.449, 0.449, 0.449)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "body", pos = Vector(-0.48, -14, 8.15), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "body", pos = Vector(0.03, -8.5, 2.5), angle = Angle(0, 180, 180), size = Vector(0.899, 0.899, 0.899)},
		["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "body", pos = Vector(-0.2, 9, -2.6), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "body", rel = "", pos = Vector(-0.19, 0, -2.8), angle = Angle(0, 180, 180), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "body", rel = "", pos = Vector(-0.19, -2.5, -2.5), angle = Angle(0, 180, 180), size = Vector(0.749, 0.749, 0.749), color = Color(255, 255, 255, 0)},
		
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint_m.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1), retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech_m.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore_m.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 180, 180), size = Vector(1, 1, 1)},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s_m.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1_m.mdl", bone = "body", pos = Vector(-0.2, -4, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska_m.mdl", bone = "body", pos = Vector(-0.2, -2.5, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps_m.mdl", bone = "body", pos = Vector(-0.2, -4, -2.5), angle = Angle(0, 270, 180), size = Vector(1, 1, 1)},
	}
	
	SWEP.LaserPosAdjust = {x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = {p = 2, y = 180, r = 0}
	SWEP.SightWithRail = false
	SWEP.CustomizationMenuScale = 0.012
	
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(3, 0, 0)
	SWEP.OffsetBoltOnBipodShoot = true
end

SWEP.BarrelBGs = {main = 2, sd = 1, k = 2, regular = 0}
SWEP.StockBGs = {main = 1, regular = 0, retractable = 1, none = 2}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.MagBGs = {main = 4, round15 = 0, round30 = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.Attachments = {["+reload"] = {header = "Ammo", offset = {700, 0}, atts = {"am_zoneloaded", "am_matchgrade"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0.1, sound = "CW_OUTBREAK_PP2000_BOLT"}},

	reload = {[1] = {time = 0.4, sound = "CW_OUTBREAK_PP2000_MAGOUT"},
	[2] = {time = 2.8, sound = "CW_OUTBREAK_PP2000_MAGIN"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.HoldType = "smg"
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "Silver's SWEPs - SMGs"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/silver/outbreak/weapons/v_pp2000.mdl"
SWEP.WorldModel		= "models/silver/outbreak/weapons/w_pp2000.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/silver/outbreak/weapons/w_pp2000.mdl"
SWEP.WMPos = Vector(-1, -2, 0)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60/600
SWEP.FireSound = "CW_OUTBREAK_PP2000_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_MP5A4_FIRE_SUPPRESSED"
SWEP.Recoil = 1.1

SWEP.HealthDamage = 0.1
SWEP.HealthEffect = 0.05

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.0153
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.4
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.4
SWEP.Shots = 1
SWEP.Damage = 19
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 3

SWEP.Chamberable = false