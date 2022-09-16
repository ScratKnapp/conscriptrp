if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

CustomizableWeaponry:registerAmmo(".338 Lapua", ".338 Lapua Rounds", .338, 51)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AWM"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x54"
	SWEP.NoShells = true
	SWEP.DrawAmmo = false

	SWEP.AttachmentModelsVM = {
		["cw_menu_muzzle"] = {model = "models/maxofs2d/cube_tool.mdl", bone = "Weapon", pos = Vector(0.048, 15, 1.325), angle = Angle(0, -90, 0), size = Vector(), active = true},
		
		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_ins_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_ins_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/a_optic_mosin.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_pilad.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_leupold.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(-3,9.4,0), angle = Angle(0,180,90), size = Vector(1, 1, 1), attachment = "laser"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(-3,9.4,0), angle = Angle(0,180,90), size = Vector(1, 1, 1), attachment = "laser"},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/w_scope_mosin.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_pilad.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_leupold.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.ForegripOverridePos = {
		["none"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(), angle = Angle()}
		},

		["LeftHandFix"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(-100, 0, 0), angle = Angle()}
		},
	}

	SWEP.IronsightPos = Vector(-2.6353, -2, 0.4)
	SWEP.IronsightAng = Vector(0.35, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.6353, -2, 0.4)
	SWEP.KKINS2KobraAng = Vector(0, 0.02, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2EoTechAng = Vector(0, 0.02, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2AimpointAng = Vector(0, 0.02, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.632, -5, 0.41)
	SWEP.KKINS2ElcanAng = Vector(0, 0, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.5715, -5.5, 0.61)
	SWEP.KKINS2PO4Ang = Vector(0, 0.02, 0)

	SWEP.KKINS2ScopeMosinPos = Vector(-2.608, -5.5, 0.955)
	SWEP.KKINS2ScopeMosinAng = Vector(0, 0.02, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.628, -5.5, 0.508)
	SWEP.KKINS2MagnifierAng = Vector(0, 0.02, 0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2CSTMCMoreAng = Vector(0, 0.02, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2CSTMBarskaAng = Vector(0, 0.02, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0, 0.02, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0, 0.02, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.6353, -2, 0.5)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0, 0.02, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.632, -5, 0.41)
	SWEP.KKINS2CSTMACOGAng = Vector(0, 0.02, 0)
	
	SWEP.KKINS2ScopeM40Pos = Vector(-2.6631, -1, 0.6989)
	SWEP.KKINS2ScopeM40Ang = Vector()	
	
	SWEP.CWSILPILADPos = Vector(-2.6631, -1, 0.6989)
	SWEP.CWSILPILADAng = Vector()	
	
	SWEP.CWSILLEUPOLDPos = Vector(-2.6631, -1, 0.6989)
	SWEP.CWSILLEUPOLDAng = Vector()

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sks_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_sks_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {500, -450}, atts = {"cw_sil_pilad_scope", "cw_sil_leupold_scope", "kk_ins2_scope_m40", "kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_elcan", "kk_ins2_po4", "kk_ins2_scope_mosin", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s", "kk_ins2_cstm_acog"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_suppressor_sec"}},
	{header = "Lasers", offset = {400, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "More Sight", offset = {1100, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	["+use"] = {header = "Sight Contract", offset = {500, -0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire_start",
	base_fire_aim = "iron_fire_start",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_bolt = "base_fire_end",
	base_bolt_aim = "iron_fire_end",
	base_insert = "reload_insert",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Long Rifles"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_l96.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_l96.mdl"

SWEP.WMPos = Vector(4.036, 0.786, -1.213)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".338 Lapua"

SWEP.FireDelay = 0.3 // 60/37
SWEP.FireSound = "CW_KK_INS2_AWM_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_AWM_FIRE_SUPPRESSED"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.5
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 2
SWEP.Shots = 1
SWEP.Damage = 110

SWEP.FirstDeployTime = 3
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.Chamberable = true
SWEP.SnapToIdlePostReload = false
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.2
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.WeaponLength = 38

SWEP.MuzzleVelocity = 865

SWEP.ReloadTimes = {
	base_fire_end = {14/30, 1.5},
	iron_fire_end = {19/28.5, 1.7},

	base_reload = {2.3, 3.3},
	base_reloadempty = {2.3, 4.6},
}

if CLIENT then
	local att
	local muz = {}

	function SWEP:getMuzzlePosition()
	
		if self.MuzzleAttachment != 0 then
			return self.CW_VM:GetAttachment(self.MuzzleAttachment)
		end
		
		if self.CustomizeMenuAlpha > 0 then
			muz.Pos = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetPos()
			muz.Ang = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetAngles()
			return muz
		end

		muz.Pos = self.Owner:EyePos()
		muz.Ang = self.Owner:EyeAngles()
		return muz
	end
end