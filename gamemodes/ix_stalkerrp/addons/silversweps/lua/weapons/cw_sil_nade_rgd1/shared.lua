if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_soundscript.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "RDG-1 Smoke Grenade"
	SWEP.CSMuzzleFlashes = true

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_nam_rdg1")

	SWEP.AttachmentModelsVM = {}
	SWEP.AttachmentModelsWM = {}

	SWEP.MoveType = 2
	SWEP.DisableSprintViewSimulation = true

	SWEP.HUD_3D2DOffset = Vector(0, 0, 0)
	SWEP.CustomizationMenuScale = 0.006

	SWEP.ViewModelMovementScale = 0.8

	SWEP.HUD_3D2DBone = 54
end

SWEP.Attachments = CustomizableWeaponry_KK.ins2.slowGrenadeMenu

SWEP.CanRestOnObjects = false
SWEP.projectileClass = "cw_kk_ins2_projectile_m18"

SWEP.Animations = {
	pull_cook = "pullbackhigh",
	throw_cook = "throw",

	pull_short = "pullbacklow",
	throw_short = "lowthrow",

	base_idle = "base_idle",
	base_draw = "base_draw",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_crawl = "base_crawl",
}

SWEP.SpeedDec = 5

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "grenade"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base_nade"
SWEP.Category = "Silver's SWEPs - Grenades"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_rgd1.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_rgd1.mdl"

SWEP.WMPos = Vector(3.891, 2.295, -1.765)
SWEP.WMAng = Angle(-28.962, 155.365, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.rgd5
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.b2keh
SWEP.CW_KK_40MM_MDL = "models/weapons/w_grenade_kar98k.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.Ammo			= "Smoke Grenades"

SWEP.fuseTime = 3.5

SWEP.spoonTime = 0.85
SWEP.timeToThrowCook = 0.9
SWEP.maxVelDelayCook = 1.6

SWEP.spoonTimeShort = 0.85
SWEP.timeToThrowShort = 1.2
SWEP.maxVelDelayShort = 1.6

SWEP.mustCook = true

-- if CLIENT then
	-- CustomizableWeaponry_KK.ins2.welementThink:add("cw_kk_ins2_nam_nade_rdg1", "grenade")
-- end
