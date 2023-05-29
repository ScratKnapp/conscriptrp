AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Binoculars - German"
	SWEP.ViewModelMovementScale = .75
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_binoculars_german")
	killicon.AddFont("doi_atow_debinoculars", "vgui/inventory/weapon_binoculars_german", Color(255, 80, 0, 0))
	
	SWEP.OverrideAimMouseSens = 1
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/khrcw2/doipack/w_debinoculars.mdl"
	SWEP.WMPos = Vector(-5, -1.5, 3)
	SWEP.WMAng = Vector(120, -15, 170)

	SWEP.IronsightPos = Vector(-2.8, -7.3684, 1)
	SWEP.IronsightAng = Vector(45.0526, 6.5789, -6.5789)
	
	SWEP.SprintPos = Vector(1.786, 0, -1)
	SWEP.SprintAng = Vector(-10.778, 27.573, 0)
	
	--SWEP.AlternativePos = Vector(-2, 0, 0)
	--SWEP.AlternativeAng = Vector(0, 7.5789, -7.5789)
	
	SWEP.SwimPos = Vector(0, 0, 0)
	SWEP.SwimAng = Vector(-40.8947, 0, 0)
	
	SWEP.PronePos = Vector(0, -3, -3.1579)
	SWEP.ProneAng = Vector(10, 0, 0)
	
	SWEP.StretchOverlayToScreen = true
	SWEP.CrosshairEnabled = false
	SWEP.FadeDuringAiming = true
	SWEP.MoveWepAwayWhenAiming = true
	SWEP.AdjustableZoom = true
	SWEP.SnapZoom = true
	SWEP.DelayedZoom = true
	SWEP.MinZoom = 65
	SWEP.ZoomAmount = 75
	SWEP.MaxZoom = 85
	
	SWEP.AimOverlay = surface.GetTextureID("models/khrcw2/doipack/binoculars/binocs_overlay_german")
end

SWEP.Attachments = {}

SWEP.Animations = {draw = "base_draw",
	idle = "base_idle"}
	
SWEP.Sounds = {base_draw = {{time = .1, sound = "INS2SHARED_DRAW"}}
}

SWEP.SpeedDec = 5

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "slam"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"melee"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/debinoculars.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_debinoculars.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 0
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ""

SWEP.FireDelay = 0
SWEP.FireSound = "CW_L96_FIRE"
SWEP.Recoil = 0

SWEP.HipSpread = 0
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0
SWEP.SpreadPerShot = 0
SWEP.SpreadCooldown = 0
SWEP.Shots = 1
SWEP.Damage = 0
SWEP.DeployTime = .3
SWEP.HolsterTime = .25

SWEP.ReloadSpeed = 0
SWEP.ReloadTime = 0
SWEP.ReloadTime_Empty = 0
SWEP.ReloadHalt = 0
SWEP.ReloadHalt_Empty = 0

function SWEP:Reload() end

function SWEP:PrimaryAttack() end

local simpleTextColor = Color(255, 210, 0, 255)
local mod = 25

function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
	if self.SelectIcon then
		surface.SetTexture(self.SelectIcon)
		
		wide = wide - mod
		
		x = x + (mod / 2)
		y = y + (mod / 4) + (wide / 8)
		
		surface.SetDrawColor(255, 255, 255, alpha)
		
		surface.DrawTexturedRect(x, y, wide, (wide / 2))
	else
		simpleTextColor.a = alpha
		draw.SimpleText(self.IconLetter, self.SelectFont, x + wide / 2, y + tall * 0.2, simpleTextColor, TEXT_ALIGN_CENTER)
	end
end