if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "RGM-40 Kastet"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15


	SWEP.NoShells = true
	SWEP.Shell = "KK_INS2_556x45"
	SWEP.ShellDelay = 0.06

	SWEP.Shell2ViewAngleAlign = {Forward = 0, Right = -90, Up = 0}
	SWEP.Shell2WorldAngleAlign = {Forward = 0, Right = -90, Up = 0}

	SWEP.AttachmentModelsVM = {

	}

	SWEP.AttachmentModelsWM = {

	}

	SWEP.IronsightPos = Vector(-2.8, -2, 0.6828)
	SWEP.IronsightAng = Vector(-0.3628, 0.0389, 0)
	
end

SWEP.MuzzleEffect = "ins_weapon_m203"

SWEP.Attachments = {

}

SWEP.Animations = {
	base_pickup = "glsetup_draw",
	base_draw = "glsetup_draw",
	base_fire = "glsetup_fire",
	base_fire_aim = "glsetup_iron_fire",
	base_fire_empty = "glsetup_dryfire",
	base_fire_empty_aim = "glsetup_iron_dryfire",
	base_reload = "glsetup_reload",
	base_reload_empty = "glsetup_reload",
	base_idle = "glsetup",
	base_holster = "glsetup_holster",
	base_firemode = "glsetup",
	base_firemode_aim = "glsetup",
	base_sprint = "glsetup_sprint",
	base_safe = "glsetup_down",
	base_safe_aim = "glsetup_iron_down",
	base_crawl = "glsetup_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = {"foregrip_iron_fire","foregrip_iron_fire_a","foregrip_iron_fire_b","foregrip_iron_fire_c","foregrip_iron_fire_d","foregrip_iron_fire_e","foregrip_iron_fire_f"},
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

SWEP.Slot = 5
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Grenades"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_rgm40.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_rgm40.mdl"

SWEP.WMPos = Vector(5.219, 0.554, -0.893)
SWEP.WMAng = Vector(-10, -1, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "40MM"

SWEP.FireDelay = 0.3
SWEP.FireSound = "CW_KK_INS2_GP30_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M4A1_FIRE_SUPPRESSED"
SWEP.Recoil = 0.9975

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 33

SWEP.FirstDeployTime = 2.25
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 12

SWEP.SightBGs = {main = 0, foldsight = 0}

SWEP.MuzzleVelocity = 250

SWEP.ReloadTimes = {
	base_reload = {2.9, 3.8},
	base_reloadempty = {3, 4.5},

	foregrip_reload = {2.9, 3.8},
	foregrip_reloadempty = {3, 4.5},

	gl_reload = {2.9, 3.8},
	gl_reloadempty = {3, 4.5},

	glsetup_in = {0.7, 0.7},
	glsetup_out = {0.8, 0.8},

	glsetup_reload = {2.95, 3.85},
}

function SWEP:FireBullet(Damage, CurCone, ClumpSpread, Shots)
	if Shots == 1 then
		local target = CustomizableWeaponry.grenadeTypes.registered[self.Grenade40MM]

		if not target then
			CustomizableWeaponry.grenadeTypes.defaultFireFunc(self)
		else
			target.fireFunc(self)
		end

		CustomizableWeaponry.grenadeTypes.selectFireSound(self, target)
	else
		weapons.GetStored("cw_base").FireBullet(self, Damage, CurCone, ClumpSpread, Shots)
	end
end
