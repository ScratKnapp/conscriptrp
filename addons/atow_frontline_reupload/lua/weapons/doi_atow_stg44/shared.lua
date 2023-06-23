if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "arMag"

	CustomizableWeaponry.shells:addNew("khr79233", "models/khrcw2/doipack/shells/9x39mm.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "StG44"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_stg44")
	killicon.Add( "doi_atow_stg44", "vgui/inventory/killicons/weapon_stg44", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 140 * 39.37
	SWEP.DamageFallOff_Orig = .56
	
	SWEP.Shell = "khr79233"
	SWEP.ShellScale = .8
	SWEP.ShellDelay = .02
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -2, z = -.75}
	SWEP.ForeGripOffsetCycle_Draw = .1
	SWEP.ForeGripOffsetCycle_Reload = .7
	SWEP.ForeGripOffsetCycle_Reload_Empty = .7

	SWEP.IronsightPos = Vector(-2.316, -4.5, 0.58)
	SWEP.IronsightAng = Vector(0.2536, 0.0368, 0)
	
	SWEP.ZF4Pos = Vector(-2.3575, -3.5, 0.32)
	SWEP.ZF4Ang = Vector(0, 0.0186, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(11, -3, -2.2)
	SWEP.CustomizeAng = Vector(20, 44, 15)
	
	SWEP.AlternativePos = Vector(-0.4, -.5, -0.5)
	SWEP.AlternativeAng = Vector(0.2536, 0.0368, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 50.0455, -15.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .8
	SWEP.CustomizationMenuScale = 0.025 --  0.0275
	
	SWEP.AttachmentModelsVM = {
	["doi_atow_zf4"] = {model = "models/khrcw2/doipack/attachments/zf4scope.mdl", pos = Vector(-0.04, -4.2041, 5.525), angle = Angle(0, -90, 0), size = Vector(1.075, 1.075, 1.075), bone = "STG44"},
		["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(-.375, 16.7, 3.275), angle = Angle(0, -90, 0), size = Vector(1.5, 1.3, 1.3), bone = "STG44"},
	}
	
	SWEP.ForegripOverridePos = {
	["penos"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1, -.1, 1), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 5, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, 25, 0) }},
}
	
	SWEP.AP2XAxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.M823AxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = .45, pitch = 0.1}
end
end 

SWEP.MuzzleVelocity = 685

SWEP.SlingBGs = {main = 2, off = 0, on = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .875

SWEP.Attachments = {[1] = {header = "Accessory", offset = {-250, -175}, atts = {"doi_atow_sling"}},
[3] = {header = "Fire Control", offset = {650, 250}, atts = {"doi_atow_heavybolt", "doi_atow_lightbolt"}},
[2] = {header = "Finish", offset = {200, -300}, atts = {"doi_atow_normandycamo"}},
[4] = {header = "Optic", offset = {800, -275}, atts = {"doi_atow_zf4"}},
["+reload"] = {header = "Ammo", offset = {-50, 200}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 35

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto","semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 63
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/stg44.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_stg44.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_stg44.mdl"
SWEP.WMPos = Vector(-1.5, 10, -.25)
SWEP.WMAng = Vector(-6, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "7.92x33MM"
else
SWEP.Primary.Ammo			= "7.92x33MM"
end

SWEP.FireDelay = 60/560
SWEP.FireSound = "DOISTG44_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 1.2

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.006
SWEP.VelocitySensitivity = .55
SWEP.MaxSpreadInc = 0.047
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 34
SWEP.DeployTime = .48
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true

SWEP.RecoilToSpread = .75

SWEP.ReloadSpeed = 1.25
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3.1
SWEP.ReloadTime_Empty = 3.8
SWEP.ReloadHalt_Empty = 4.85

function SWEP:IndividualThink()
	
	if CLIENT then
		self.ForegripOverride = true
		self.ForegripParent = "penos"
	end
	
	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	self.EffectiveRange = 140 * 39.37
	self.DamageFallOff = .56
	
				if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 55 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .168))
end
	
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 25 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .2))
	else
	self.EffectiveRange = 140 * 39.37
	self.DamageFallOff = .39
end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.05
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end //*/

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

function SWEP:Holster(wep)
	-- can't switch if neither the weapon we want to switch to or the wep we're trying to switch to are not valid
	if not IsValid(wep) and not IsValid(self.SwitchWep) then
		self.SwitchWep = nil
		return false
	end
	
	local CT = CurTime()
	
	-- can't holster if we have a global delay on the weapon
	if CT < self.GlobalDelay or CT < self.HolsterWait then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
		self.dt.State = CW_HOLSTER_START
		self.dt.HolsterDelay = 0
	end
	
	if self.dt.HolsterDelay ~= 0 and CT < self.dt.HolsterDelay then
		return false
	end
	
	-- can't holster if there are sequenced actions
	if #self._activeSequences > 0 then
		return false
	end
	
	if self.ReloadDelay then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
		self.dt.State = CW_HOLSTER_START
		self.dt.HolsterDelay = 0
	end
	
	if self.dt.State ~= CW_HOLSTER_START then
		self.dt.HolsterDelay = CurTime() + self.HolsterTime
	end
	
	self.dt.State = CW_HOLSTER_START
	
	-- if holster sequence is over, let us select the desired weapon
	if self.SwitchWep and self.dt.State == CW_HOLSTER_START and CurTime() > self.dt.HolsterDelay then
		self.dt.State = CW_IDLE
		self.dt.HolsterDelay = 0
		
		return true
	end
	
	-- if it isn't, make preparations for it
	self.ShotgunReloadState = 0
	self.ReloadDelay = nil
	
	if self:filterPrediction() then
		if self.holsterSound then -- quick'n'dirty prediction fix
			self:EmitSound("CW_HOLSTER", 70, 100)
			self.holsterSound = false
			
			if IsFirstTimePredicted() then
				if self.holsterAnimFunc then
					self:holsterAnimFunc()
				else
					if self.Animations.holster then
						self:sendWeaponAnim("holster")
					end
				end
			end
		end
	end
	
	self.SwitchWep = wep
	self.SuppressTime = nil
	
	if self.dt.M203Active then
		if SERVER and SP then
			SendUserMessage("CW20_M203OFF", self.Owner)
		end
		
		if CLIENT then
			self:resetM203Anim()
		end
	end

	self.dt.M203Active = false
end

