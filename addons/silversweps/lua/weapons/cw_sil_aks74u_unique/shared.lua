if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AKS-74UN (Custom)"
	SWEP.CSMuzzleFlashes = true
	SWEP.Shell = "KK_INS2_545x39"
	SWEP.ShellDelay = 0.06

	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.3082, -1, -1.5245),
			Vector(-0.5, 0, 0)
		},
	}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/a_suppressor_aks.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/a_okp7_optic.mdl", bone = "A_Optic", pos = Vector(0, -0.2, 0), angle = Angle(90, 90, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/a_ekp_new_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.5, 0), angle = Angle(90, 90, 0), size = Vector(1.1, 1.1, 1.1), merge = false},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/a_pso2_scope.mdl", bone = "A_Optic", pos = Vector(0, 0.25, -2.75), angle = Angle(90, 90, 0 ), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/a_ip29_scope.mdl", bone = "A_Optic", pos = Vector(0, -0.25, -1.75), angle = Angle(90, 90, 0 ), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pk1_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.25, -0.25), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/a_pka_optic.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0.25, -0.25), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip78_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_ip78.mdl", bone = "A_Optic", pos = Vector(0, -0.25, -1.75), angle = Angle(90, 90, 0 ), size = Vector(0.9, 0.9, 0.9), merge = false},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl", bone = "R Hand", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["cw_sil_okp7_optic"] = {model = "models/silver/stalker/weapons/attachments/w_okp7_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -23), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ekp_optic"] = {model = "models/silver/stalker/weapons/attachments/w_ekp_new_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pso1_scope"] = {model = "models/silver/stalker/weapons/attachments/w_pso2_scope.mdl", bone = "R Hand", pos = Vector(-56.5, -17.5, 5), angle = Angle(4, -4, 100), size = Vector(1, 1, 1), merge = false},
		["cw_sil_ip29_scope"] = {model = "models/silver/stalker/weapons/attachments/w_ip29_scope.mdl", bone = "R Hand", pos = Vector(-56.5, -5, -9.75), angle = Angle(4, -4, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pk1_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pk1_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_pka_optic"] = {model = "models/silver/stalker/weapons/attachments/w_pka_optic.mdl", bone = "R Hand", pos = Vector(-36.5, -3.5, -22), angle = Angle(4, -4, 0), size = Vector(1.3, 1.3, 1.3), merge = false},
		["cw_sil_ip78_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_ip78.mdl", bone = "R Hand", pos = Vector(-56.5, -5, -9.75), angle = Angle(4, -4, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.IronsightPos = Vector(-2.2358, -2, 0.5763)
	SWEP.IronsightAng = Vector(0.0713, -0.0056, 0)
	
	SWEP.CWSILPSO1Pos = Vector(-2.1976, 2, -0.1398)
	SWEP.CWSILPSO1Ang = Vector()
	
	SWEP.CWSILIP29Pos = Vector(-2.2976, 2, -0.2398)
	SWEP.CWSILIP29Ang = Vector()

	SWEP.CWSILOKP7Pos = Vector(-2.2611, 3, -0.0139)
	SWEP.CWSILOKP7Ang = Vector()

	SWEP.CWSILEKPPos = Vector(-2.2114, 3, -0.6725)
	SWEP.CWSILEKPAng = Vector()
	
	SWEP.CWSILPK1Pos = Vector(-2.2114, 3, -0.1725)
	SWEP.CWSILPK1Ang = Vector()
	
	SWEP.CWSILPKAPos = Vector(-2.2114, 3, 0.3725)
	SWEP.CWSILPKAAng = Vector()
	
	SWEP.CWSILIP78Pos = Vector(-2.2276, 2, -0.2398)
	SWEP.CWSILIP78Ang = Vector()


	SWEP.CustomizationMenuScale = 0.0145
end

SWEP.MuzzleEffect = "muzzleflash_mp40_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_mp40_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"cw_sil_okp7_optic", "cw_sil_ekp_optic", "cw_sil_pk1_optic", "cw_sil_pka_optic", "cw_sil_ip78_scope",  "cw_sil_ip29_scope", "cw_sil_pso1_scope"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_pbs5"}},
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

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = {"foregrip_iron_fire", "foregrip_iron_fire_2"},
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire",
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
SWEP.ViewModel		= "models/silver/stalker/weapons/v_aks74u_unique.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_aks74u_unique.mdl"

SWEP.WMPos =Vector(5.524, 0.66, -1.188)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/700
SWEP.FireSound = "CW_SIL_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_SIL_AK74_FIRE_SUPPRESSED"
SWEP.Recoil = 3.2

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 36

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.FirstDeployTime = 2
SWEP.WeaponLength = 16

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},

	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35}
}

SWEP.MuzzleVelocity = 735

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("handguardStandard", !self.ActiveAttachments.kk_ins2_vertgrip)
	end
end
