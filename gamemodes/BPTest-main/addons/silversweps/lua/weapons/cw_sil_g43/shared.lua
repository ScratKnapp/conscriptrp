if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "brMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G-43"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_g43")

	SWEP.Shell = "KK_INS2_762x54"
	SWEP.ShellDelay = 0.05

	SWEP.AttachmentModelsVM = {
		["kk_ins2_scope_zf4"] = {model = "models/weapons/upgrades/a_optic_zf4.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["sleeve"] = {model = "models/weapons/upgrades/a_clothwrap_g43.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		-- ["ani_body"] = {model = "models/weapons/v_g43.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, hideVM = true, active = true},
		-- ["kk_ins2_ww2_sling"] = {model = "models/weapons/upgrades/a_sling_g43.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, rel = "ani_body"},
		["kk_ins2_ww2_sling"] = {model = "models/weapons/upgrades/a_sling_g43.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_scope_zf4"] = {model = "models/weapons/upgrades/w_scope_g43.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["sleeve"] = {model = "models/weapons/upgrades/w_clothwrap_g43.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.BackupSights = {
		["kk_ins2_scope_zf4"] = {
			Vector(-2.4423, -2, 0.8812),
			Vector(0.0762, 0.0089, 0)
		},
	}

	SWEP.IronsightPos = Vector(-2.4423, -2, 0.8812)
	SWEP.IronsightAng = Vector(0.0762, 0.0089, 0)

	SWEP.KKINS2ScopeZF4Pos = Vector(-2.7179, -3, 0.3701)
	SWEP.KKINS2ScopeZF4Ang = Vector()

	SWEP.CustomizationMenuScale = 0.019
end

SWEP.MuzzleEffect = "muzzleflash_k98_1p"
SWEP.MuzzleEffectWorld = "muzzleflash_k98_3p"

SWEP.Attachments = {
	["+reload"] = {header = "Ammo", offset = {700, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "base_draw_empty",
	base_fire = {"base_fire_1","base_fire_2"},
	base_fire_aim = {"iron_fire_1", "iron_fire_2", "iron_fire_3"},
	base_fire_last = "base_fire_last",
	base_fire_last_aim = "iron_fire_last",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reloadfull",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_idle_empty = "empty_idle",
	base_holster = "base_holster",
	base_holster_empty = "base_holster_empty",
	base_sprint = "base_sprint",
	base_sprint_empty = "base_sprint_empty",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "base_down_empty",
	base_safe_empty_aim = "iron_down_empty",
	base_crawl = "base_crawl",
	base_crawl_empty = "base_crawl_empty",
	base_melee = "base_melee_bash",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Long Rifles"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_g43.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_g43.mdl"

SWEP.WMPos = Vector(11, 1.009, -2)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.ww2de
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.ww2de

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 60/500
SWEP.FireSound = "CW_KK_INS2_DOI_G43_FIRE"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
SWEP.Damage = 59

SWEP.FirstDeployTime = 1.9
SWEP.DeployTime = 1.2
SWEP.HolsterTime = 0.85

SWEP.RecoilToSpread = 0.8

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.KK_INS2_EmptyIdle = false

SWEP.WeaponLength = 22

SWEP.MuzzleVelocity = 776

SWEP.ReloadTimes = {
	base_reloadfull = {80/32, 3.3},
	base_reloadempty = {80/31, 5.3},

	base_melee_bash = {0.3, 0.9},
}

-- if CLIENT then
	-- function SWEP:updateStandardParts()
		-- self:setElementActive("sleeve", self.ActiveAttachments.kk_ins2_scope_zf4)
	-- end
-- end
