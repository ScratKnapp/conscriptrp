if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

CustomizableWeaponry:registerAmmo("12.7x55mm", "12.7x55mm STs-130", 12.7, 55)
CustomizableWeaponry:registerAmmo("12.7x55mm -AP-", "12.7x55mm STs-130 -AP-", 12.7, 55)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "ASh-12"
	SWEP.CSMuzzleFlashes = true
	SWEP.AimBreathingEnabled = true
	SWEP.IconLetter = "b"
	SWEP.DrawAmmo = false
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.Shell = "KK_INS2_762x54"
	SWEP.ShellDelay = 0.06
	
	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.839, -3.0138, -2.9812),
			Vector(-0.5, 0, 0)
		},
	}
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_iron"] = {model = "models/silver/outbreak/weapons/attachments/a_ash12_sight.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_sec.mdl", pos = Vector(0, 0, -1.5), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_rail.mdl", pos = Vector(0.4, -1, 1.3), angle = Angle(0, 270, 90), size = Vector(1, 1, 1), attachment = "Laser"},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_rail.mdl", pos = Vector(0.4, -1, 1.3), angle = Angle(0, 270, 90), size = Vector(1, 1, 1), attachment = "Laser"},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_rail.mdl", pos = Vector(0.4, -1, 1.3), angle = Angle(0, 270, 90), size = Vector(1, 1, 1), attachment = "Laser"},
		
		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit", retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(0, -1, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit", retSizeMult = 1.2},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		
		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(0, -0.8, 0), angle = Angle(180, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit", retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(0, -0.8, 0), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), attachment = "Modkit"},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_iron"] = {model = "models/silver/outbreak/weapons/attachments/w_ash12_sight.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_foregrip_sec1.mdl", pos = Vector(0, 1, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Foregrip"},
		["kk_ins2_gl_gp25"] = {model = "models/weapons/upgrades/w_gp25.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(-32, 13, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-42, 13, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", pos = Vector(-50, 14, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0, 17.75, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(-30, 21.5, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(-58, 13, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		
		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(-32, 21.25, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-42, 13.25, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(-42, 13.25, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(-50, 13, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), pos = Vector(0, 17.75, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(2, 2.25, 34.5), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), attachment = "Modkit"},
	}
	
	SWEP.IronsightPos = Vector(-2.8482, -4.0918, 0.2192)
	SWEP.IronsightAng = Vector(0.0713, -0.0056, 0)

	SWEP.KKINS2KobraPos = Vector(-2.8482, 0.0918, 0.9192)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.8482, 0.0918, 0.9192)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.8482, 0.0918, 0.9192)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.8482, -4.0918, 0.7192)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.8482, -4.0918, 0.9192)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.8482, -4.0918, 0.8192)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.CustomizationMenuScale = 0.0145
end

SWEP.MuzzleEffect = "muzzleflash_ak74_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_ak74_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_elcan", "kk_ins2_po4", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s", "kk_ins2_cstm_acog"}},
	{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip"}},
	{header = "Lasers", offset = {100, 300}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_zoneloaded", "am_matchgrade"}}
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
SWEP.ViewModel		= "models/silver/outbreak/weapons/v_ash12.mdl"
SWEP.WorldModel		= "models/silver/outbreak/weapons/w_ash12.mdl"

SWEP.WMPos = Vector(-1, 0.96, -0.50)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "12.7x55mm"

SWEP.FireDelay = 60/600
SWEP.FireSound = "CW_OUTBREAK_ASH12_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_GROZA_FIRE_SUPPRESSED"

SWEP.Recoil = 3
SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 120

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

SWEP.MuzzleVelocity = 720

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("handguardStandard", !self.ActiveAttachments.kk_ins2_vertgrip)
	end
end