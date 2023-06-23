if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

CustomizableWeaponry:registerAmmo("9x39MM", "9x39MM Rounds", 9, 39)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AS VAL"
	SWEP.CSMuzzleFlashes = false
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x39"
	
	SWEP.BackupSights = { // GG
		["kk_ins2_elcan"] = {
			Vector(-2.676, 4.3453, -0.8619),
			Vector(-0.4377, 0, 0)
		},
	}
	
	SWEP.ViewModelBoneMods = { // GG
		["A_LaserFlashlight"] = {
			Vector(0, 4.9836, 0), 
			Vector(0, 0, -180)
		},
	}

	SWEP.AttachmentModelsVM = {
		["std_mag"] = {model = "models/silver/stalker/weapons/attachments/a_vss_20.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cw_sil_val_30"] = {model = "models/silver/stalker/weapons/attachments/a_val_30.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_sec2.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(-4.7834, 0, 0), angle = Angle(0, 0, -180), size = Vector(1, 1, 1), bone = "A_LaserFlashlight"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(-4.6, 0, 0), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), bone = "A_LaserFlashlight"},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(-4.898, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_LaserFlashlight"},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},

		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/a_pso2_scope.mdl", bone = "Weapon", rLight = true, pos = Vector(0, -7, 1.75), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/a_ip29_scope.mdl", bone = "Weapon", rLight = true, pos = Vector(0, -7, 1.75), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/a_okp7_optic.mdl", bone = "Weapon", pos = Vector(0, -4.5, 1.5), angle = Angle(0, -90, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/a_ekp_new_optic.mdl", bone = "Weapon", pos = Vector(0, -4.5, 2.5), angle = Angle(0, -90, 0), size = Vector(1.1, 1.1, 1.1), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pk1_optic.mdl", bone = "Weapon", pos = Vector(0, -4.5, 2.25), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pka_optic.mdl", bone = "Weapon", pos = Vector(0, -4.5, 2.25), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		
	}
	
	SWEP.AttachmentModelsWM = {
		["std_mag"] = {model = "models/silver/stalker/weapons/attachments/w_vss_20.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cw_sil_val_30"] = {model = "models/silver/stalker/weapons/attachments/w_val_30.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_foregrip_sec2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(-7.5,-1,-9), angle = Angle(0,180,0), size = Vector(1, 1, 1), attachment = "laser"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(-7.5,-1,-9), angle = Angle(0,180,0), size = Vector(1, 1, 1), attachment = "laser"},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/w_pso2_scope.mdl", bone = "R Hand", pos = Vector(-56, -12, 10), angle = Angle(0, 0, 110), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/w_ip29_scope.mdl", bone = "R Hand", pos = Vector(-56, -1, -7), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/w_okp7_optic.mdl", bone = "R Hand", pos = Vector(-35.5, -1, -21.25), angle = Angle(0, 0, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/w_ekp_new_optic.mdl", bone = "R Hand", pos = Vector(-35.5, -1, -20.25), angle = Angle(0, 0, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pk1_optic.mdl", bone = "R Hand", pos = Vector(-35.5, -1, -20.25), angle = Angle(0, 0, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pka_optic.mdl", bone = "R Hand", pos = Vector(-35.5, -1, -20.25), angle = Angle(0, 0, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		
	}
	
	SWEP.IronsightPos = Vector(-2.6415, -2, 1.0808)
	SWEP.IronsightAng = Vector(0, 0.03, 0)

	SWEP.CWSILPSO1Pos = Vector(-2.6282, 1, 0.186)
	SWEP.CWSILPSO1Ang = Vector(0, 0, 0)
	
	SWEP.CWSILIP29Pos = Vector(-2.7282, 1, -0.486)
	SWEP.CWSILIP29Ang = Vector(0, 0, 0)
	
	SWEP.CWSILOKP7Pos = Vector(-2.6282, 1, 0.056)
	SWEP.CWSILOKP7Ang = Vector(0, 0, 0)
	
	SWEP.CWSILEKPPos = Vector(-2.6282, 1, -0.756)
	SWEP.CWSILEKPAng = Vector(0, 0, 0)
	
	SWEP.CWSILPK1Pos = Vector(-2.6682, 1, -0.356)
	SWEP.CWSILPK1Ang = Vector(0, 0, 0)
	
	SWEP.CWSILPKAPos = Vector(-2.6682, 1, 0.256)
	SWEP.CWSILPKAAng = Vector(0, 0, 0)
	
	SWEP.CustomizationMenuScale = 0.019
end

SWEP.Attachments = {
	{header = "Magazine", offset = {-300, -200}, atts = {"cw_sil_val_30"}},
	{header = "Sight", offset = {400, -450}, atts = {"cw_sil_ip29_scope", "cw_sil_pso1_scope", "cw_sil_okp7_optic", "cw_sil_ekp_optic", "cw_sil_pk1_optic", "cw_sil_pka_optic"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_hoovy"}},
	{header = "Lasers", offset = {100, 350}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip"}},
	["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
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
	base_reload_mm = "base_reload",
	base_reload_empty_mm = "base_reloadempty",
	
	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "iron_dryfire",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "foregrip_holster",
	foregrip_holster = "foregrip_holster",
	foregrip_firemode = "foregrip_fireselect",
	foregrip_firemode_aim = "foregrip_iron_fireselect",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",
	foregrip_reload_mm = "foregrip_reload",
	foregrip_reload_empty_mm = "foregrip_reloadempty",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Assault Rifles"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_val.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_val.mdl"

SWEP.WMPos = Vector(4.072, 0.924, -0.937)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x39MM"

SWEP.FireDelay = 60/900
SWEP.FireSound = "CW_SIL_VSS_FIRE"
SWEP.FireSoundSuppressed = "CW_SIL_VSS_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 38

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.SnapToIdlePostReload = false

SWEP.FirstDeployTime = 1.5
SWEP.WeaponLength = 20

SWEP.MuzzleVelocity = 200

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.1},
	base_reloadempty = {2.3, 4.6},
	
	foregrip_reload = {2.3, 3.1},
	foregrip_reloadempty = {2.3, 4.6},
}

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("std_mag", !self.ActiveAttachments.cw_sil_val_30)
	end
end
