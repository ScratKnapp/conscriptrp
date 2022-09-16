if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "brMag"

CustomizableWeaponry:registerAmmo("Batteries", "Gauss Rounds", 0, 0)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Gauss Rifle Item 62"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.NoShells = true
	SWEP.DrawAmmo = false

	SWEP.AttachmentModelsVM = {
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_ins.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},

		["cw_sil_gauss_scope"] = {model = "models/silver/stalker/weapons/attachments/a_gauss_scope.mdl", bone = "A_Optic", rLight = true, pos = Vector(0, 0, 2), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_ins_foregrip.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), merge = true},

		["cw_sil_gauss_scope"] = {model = "models/silver/stalker/weapons/attachments/w_gauss_scope.mdl", bone = "R_Hand", pos = Vector(-56, 0, -6.25), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.IronsightPos = Vector(-2.485, -2, 0.47)
	SWEP.IronsightAng = Vector(0.0, 0.03, 0)

	SWEP.CWSILGaussPos = Vector(-2.4077, -1.5, -0.482)
	SWEP.CWSILGaussAng = Vector(0.03, 0.025, 0)

	SWEP.CustomizationMenuScale = 0.019
end

SWEP.MuzzleEffect = "muzzleflash_fal_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_fal_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {650, -500}, atts = {"cw_sil_gauss_scope"}},
	{header = "Under", offset = {-400, -25}, atts = {"kk_ins2_vertgrip"}},
}

SWEP.Animations = {
	base_pickup = "base_draw",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reload",
	base_reload_mm = "base_reload_ext",
	base_reload_empty_mm = "base_reload_ext",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	foregrip_pickup = "foregrip_draw",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire_b",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reload",
	foregrip_reload_mm = "foregrip_reload_ext",
	foregrip_reload_empty_mm = "foregrip_reload_ext",
	foregrip_idle = "blend_idle_foregrip",
	foregrip_holster = "foregrip_holster",
	foregrip_firemode = "foregrip_fireselect",
	foregrip_firemode_aim = "foregrip_iron_fireselect_b",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",

	bipod_in = "deployed_in",
	bipod_fire = "deployed_fire",
	bipod_fire_aim = "deployed_iron_fire",
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reload",
	bipod_reload_mm = "deployed_reload_ext",
	bipod_reload_empty_mm = "deployed_reload_ext",
	bipod_firemode = "deployed_fireselect",
	bipod_firemode_aim = "deployed_iron_fireselect",
	bipod_out = "deployed_out",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
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
SWEP.ViewModel		= "models/silver/stalker/weapons/v_gauss_rifle.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_gauss_rifle.mdl"

SWEP.WMPos = Vector(4.3, 1.116, -0.954)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "Batteries"

SWEP.FireDelay = 2.2
SWEP.FireSound = "CW_SIL_GAUSS_FIRE"
SWEP.FireSoundSuppressed = "CW_SIL_GAUSS_FIRE"
SWEP.Recoil = 2

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
SWEP.Damage = 2000

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.FirstDeployTime = 0.5
SWEP.WeaponLength = 28

SWEP.MuzzleVelocity = 840

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.4},
	base_reloadempty = {2.3, 3.4},
	base_reload_ext = {2.3, 3.4},
	base_reloadempty_ext = {2.3, 3.4},

	foregrip_reload = {2.3, 3.4},
	foregrip_reloadempty = {2.3, 3.4},
	foregrip_reload_ext = {2.3, 3.4},
	foregrip_reloadempty_ext = {2.3, 3.4},

	deployed_reload = {2.2, 3.27},
	deployed_reloadempty = {2.2, 3.27},
	deployed_reload_ext = {2.2, 3.27},
	deployed_reloadempty_ext = {2.2, 3.27},
}
