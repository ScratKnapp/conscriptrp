if not CustomizableWeaponry then return end

if CustomizableWeaponry_KK.HOME then
	AddCSLuaFile("_gitign_go.lua")
	include("_gitign_go.lua")
end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Zarya Stun Grenade"
	SWEP.CSMuzzleFlashes = true

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m67")

	SWEP.AttachmentModelsVM = {
		["kk_counter"] = {model = "models/weapons/stattrack.mdl", bone = "Spoon", rel = "", pos = Vector(-1.209, 0.05, -0.149), angle = Angle(0, 90, 20), size = Vector(0.419, 0.419, 0.419)},
	}

	SWEP.AttachmentModelsWM = {}

	SWEP.MoveType = 2
	SWEP.ViewModelMovementScale = 0.8
	SWEP.DisableSprintViewSimulation = true
end

SWEP.Attachments = CustomizableWeaponry_KK.ins2.slowGrenadeMenu

SWEP.CanRestOnObjects = false
SWEP.projectileClass = "cw_kk_ins2_projectile_m84"

SWEP.Animations = {
	pullpin = "pullbackhigh",
	throw = "throw",

	pull_cook = "pullbackhighbake",
	throw_cook = "bakethrow",

	pull_short = "pullbacklow",
	throw_short = "lowthrow",

	base_pickup = "draw",
	base_draw = "draw",
	base_idle = "idle",
	base_holster = "holster",
	base_sprint = "sprint",
	base_safe = "down",
	base_crawl = "crawl",
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
SWEP.ViewModel		= "models/silver/stalker/weapons/v_zarya.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_zarya.mdl"

SWEP.WMPos = Vector(3.891, 2.295, -1.765)
SWEP.WMAng = Angle(-28.962, 155.365, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.Ammo			= "Flash Grenades"

SWEP.fuseTime = 1.8

SWEP.timeToThrow = 0.9

SWEP.timeToThrowCook = 1.3

SWEP.timeToThrowShort = 0.9

if true then return end