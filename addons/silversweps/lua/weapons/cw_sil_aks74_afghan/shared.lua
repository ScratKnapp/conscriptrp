if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AKS-74 (Custom)"
	SWEP.CSMuzzleFlashes = true

	SWEP.ViewModelMovementScale = 1.15

	SWEP.Shell = "KK_INS2_545x39"
	SWEP.ShellDelay = 0.05
	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = -30}

	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.3004, -3, -1.4735),
			Vector(-0.5597, 0, 0)
		},
	}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/a_suppressor_aks.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_gl_gp25"] = {model = "models/weapons/upgrades/a_gl_gp25.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/a_okp7_optic.mdl", bone = "A_Optic", pos = Vector(0, -0.25, -1.25), angle = Angle(90, 90, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/a_ekp_new_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.25, -0.75), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pk1_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.25, -1), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pka_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.25, -1.25), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/a_pso2_scope.mdl", bone = "A_Optic", pos = Vector(0, 0.25, -3.75), angle = Angle(90, 90, 0 ), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/a_ip29_scope.mdl", bone = "A_Optic", pos = Vector(0, -0.25, -2.75), angle = Angle(90, 90, 0 ), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip78_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_ip78.mdl", bone = "A_Optic", pos = Vector(0.15, -0.25, -2.75), angle = Angle(90, 90, 0 ), size = Vector(0.9, 0.9, 0.9), merge = false},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_gl_gp25"] = {model = "models/weapons/upgrades/w_gp25.mdl", attachment = "gl", pos = Vector(-10.75,0.2,0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1)},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/w_okp7_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -23), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/w_ekp_new_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pk1_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pka_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/w_pso2_scope.mdl", bone = "R Hand", pos = Vector(-56.5, -17.5, 5), angle = Angle(4, -4, 100), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/w_ip29_scope.mdl", bone = "R Hand", pos = Vector(-56.5, -5, -9.75), angle = Angle(4, -4, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip78_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_ip78.mdl", bone = "R Hand", pos = Vector(-56.5, -5, -9.75), angle = Angle(4, -4, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.IronsightPos = Vector(-2.2729, -2, 0.7304)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.M203Pos = Vector(-1.0384, -4, 0.8356)
	SWEP.M203Ang = Vector(1.0405, -0.0059, 0)

	SWEP.CWSILPSO1Pos = Vector(-2.1976, 2, -0.1398)
	SWEP.CWSILPSO1Ang = Vector()

	SWEP.CWSILIP29Pos = Vector(-2.2976, 2, -0.2398)
	SWEP.CWSILIP29Ang = Vector()

	SWEP.CWSILOKP7Pos = Vector(-2.2611, 3, -0.0139)
	SWEP.CWSILOKP7Ang = Vector()

	SWEP.CWSILEKPPos = Vector(-2.2114, 3, -0.2725)
	SWEP.CWSILEKPAng = Vector()
	
	SWEP.CWSILPK1Pos = Vector(-2.2514, 3, -0.2225)
	SWEP.CWSILPK1Ang = Vector()
	
	SWEP.CWSILPKAPos = Vector(-2.2514, 3, 0.3625)
	SWEP.CWSILPKAAng = Vector()
	
	SWEP.CWSILIP78Pos = Vector(-2.3976, 1.25, -0.2398)
	SWEP.CWSILIP78Ang = Vector()
	
	SWEP.CustomizationMenuScale = 0.016
end

SWEP.MuzzleEffect = "muzzleflash_ak74_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_ak74_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"cw_sil_okp7_optic", "cw_sil_ekp_optic", "cw_sil_pk1_optic", "cw_sil_pka_optic", "cw_sil_ip29_scope", "cw_sil_ip78_scope", "cw_sil_pso1_scope"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_pbs5"}},
	{header = "Lasers", offset = {200, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "foregrip_ready",
	base_draw = "foregrip_draw",
	base_fire = "foregrip_fire",
	base_fire_aim = {"foregrip_dryfire"},
	base_fire_empty = "foregrip_dryfire",
	base_fire_empty_aim = "foregrip_dryfire",
	base_reload = "foregrip_reload",
	base_reload_empty = "foregrip_reloadempty",
	base_idle = "foregrip_idle",
	base_holster = "foregrip_holster",
	base_firemode = "foregrip_fireselect",
	base_firemode_aim = "foregrip_fireselect",
	base_sprint = "foregrip_sprint",
	base_safe = "foregrip_down",
	base_safe_aim = "foregrip_down",
	base_crawl = "foregrip_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foergrip_iron_dryfire", // like srsly?
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

	gl_off_pickup = "gl_ready",
	gl_off_draw = "gl_draw",
	gl_off_fire = "gl_fire",
	gl_off_fire_aim = {"gl_iron_fire","gl_iron_fire_a","gl_iron_fire_b","gl_iron_fire_c","gl_iron_fire_d","gl_iron_fire_e","gl_iron_fire_f"},
	gl_off_fire_empty = "gl_dryfire",
	gl_off_fire_empty_aim = "gl_iron_dryfire",
	gl_off_reload = "gl_reload",
	gl_off_reload_empty = "gl_reloadempty",
	gl_off_idle = "gl_holster",
	gl_off_holster = "gl_holster",
	gl_off_firemode = "gl_fireselect",
	gl_off_firemode_aim = "gl_iron_fireselect",
	gl_off_sprint = "gl_sprint",
	gl_off_safe = "gl_down",
	gl_off_safe_aim = "gl_iron_down",
	gl_off_crawl = "gl_crawl",

	gl_on_draw = "glsetup_draw",
	gl_on_fire = "glsetup_fire",
	gl_on_fire_aim = "glsetup_iron_fire",
	gl_on_fire_empty = "glsetup_dryfire",
	gl_on_fire_empty_aim = "glsetup_iron_dryfire",
	gl_on_reload = "glsetup_reload",
	gl_on_idle = "glsetup",
	gl_on_holster = "glsetup_holster",
	gl_on_sprint = "glsetup_sprint",
	gl_on_safe = "glsetup_down",
	gl_on_safe_aim = "glsetup_iron_down",
	gl_on_crawl = "glsetup_crawl",

	gl_turn_on = "glsetup_in",
	gl_turn_off = "glsetup_out",
}

SWEP.SpeedDec = 30

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
SWEP.ViewModel		= "models/silver/stalker/weapons/v_aks74n_afghan.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_aks74n_afghan.mdl"

SWEP.WMPos = Vector(5.666, 0.66, -1.055)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha
SWEP.CW_KK_40MM_MDL = "models/weapons/upgrades/a_projectile_gp25.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/625
SWEP.FireSound = "CW_SIL_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_SIL_AK74_FIRE_SUPPRESSED"
SWEP.Recoil = 1.1

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 33

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.FirstDeployTime = 2.1
SWEP.WeaponLength = 22

SWEP.MuzzleVelocity = 900

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},

	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35},

	gl_reload = {2.2, 3.15},
	gl_reloadempty = {2.2, 4.35},

	glsetup_in = {0.6, 0.6},
	glsetup_out = {0.7, 0.7},

	glsetup_reload = {1.75, 2.67}
}

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("handguardStandard", !self.ActiveAttachments.kk_ins2_vertgrip)
	end
end
