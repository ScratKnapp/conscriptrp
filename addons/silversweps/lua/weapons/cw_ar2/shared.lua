AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Pulse Rifle"
	SWEP.CSMuzzleFlashes = true

	SWEP.SelectIcon = surface.GetTextureID("icons/select/ar2.vtf")
	killicon.Add("cw_ar2", "icons/select/ar2.vtf", Color(255, 255, 255, 0))

	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = true
	SWEP.NoShells = false
	SWEP.Shell = "smallshell"

	SWEP.ShellOffsetMul = 1.5
	SWEP.ShellScale = 0.5
	SWEP.ShellPosOffset = Vector(2,1,-1)

	SWEP.IronsightPos = Vector(-6.101, -5.954, 1.212)
	SWEP.IronsightAng = Vector(0, -1.556, 0)

	SWEP.AimpointPos = Vector(-5.64, -7.055, 0.237)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(2.2, -1.81, 1.019)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.KobraPos = Vector(2.177, -8.7, 1.111)
	SWEP.KobraAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(6.504, -5.106, -1.223)
	SWEP.SprintAng = Vector(0, 39.076, 0)
	
	SWEP.CustomizePos = Vector(9.984, -16.292, 1.355)
	SWEP.CustomizeAng = Vector(0, 44.629, 0)

	SWEP.AlternativePos = Vector(0.763, 1.863, 0.791)
	SWEP.AlternativeAng = Vector(0.076, 0, 0)
	
	SWEP.ViewModelMovementScale = 0.2
	SWEP.FullAimViewmodelRecoil = true
	SWEP.DontHoldWhenReloading = true
	SWEP.HUD_MagText = "MAGAZINE: "

	SWEP.CustomizationMenuScale = 0.007
	SWEP.DisableSprintViewSimulation = true

	SWEP.AttachmentModelsVM = {
		["md_tundra9mm"] = { model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "Base", pos = Vector(0.028, 1.161, 24.447), angle = Angle(-1.621, 180, 90.117), size = Vector(1.034, 1.034, 1.034)},
	}
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)
	


end


SWEP.CanRestOnObjects = true

SWEP.Attachments = {
	--	[1] = {header = "Silencer", offset = {-400, 150}, atts = {"md_tundra9mm"}},
	--	["+reload"] = {header = "Match", offset = {1200, 200}, atts = {"am_matchgrade""}},
	}
	

SWEP.Animations = {fire = {"IR_fire"},
	reload = "IR_reload",
	idle = "IR_idle",
	draw = "IR_draw"}

SWEP.Sounds = {
    IR_reload = {
	[1] = {time = 0.2, sound = "CW_AR_ROTATE"},
	[2] = {time = 0.6, sound = "CW_AR_PUSH"},
}}


SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "normal"
SWEP.AddSafeMode = true
SWEP.FireModes = {"semi", "auto"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 HL2"


SWEP.Author			= "TGSKing"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.AddSafeMode = true
SWEP.ViewModelFOV = 54
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/c_irifle.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo		= "AR2"

SWEP.FireDelay = 0.09
SWEP.FireSound = "CW_AR_FIRE"
SWEP.FireSoundSuppressed = "CW_AR_FIRE_SUPPRESSED"
SWEP.Recoil = 0.5
SWEP.RecoilToSpread = 0.05

SWEP.HipSpread = 0.03
SWEP.AimSpread = 0.0075
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.0035
SWEP.SpreadCooldown = 0.10
SWEP.Shots = 1
SWEP.Damage = 8
SWEP.DeployTime = 0.1
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.0
SWEP.ReloadHalt = 2.1

SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true
