if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "srMag"
	
	CustomizableWeaponry.shells:addNew("khr79257", "models/khrcw2/doipack/shells/408cheytac.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G43"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_gewher43")
	killicon.Add( "doi_atow_g43", "vgui/inventory/killicons/weapon_gewher43", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 370 * 39.37
	SWEP.DamageFallOff_Orig = .47
	
	SWEP.Shell = "khr79257"
	SWEP.ShellScale = .5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2.5, y = -1, z = 0}

	SWEP.IronsightPos = Vector(-2.4370, -3.5, 0.885)
	SWEP.IronsightAng = Vector(0.0762, 0.034, 0)
	
	SWEP.ZF4Pos = Vector(-2.74, -3, 0.3701)
	SWEP.ZF4Ang = Vector(0, 0, 0)
	
	SWEP.ZF41Pos = Vector(-2.74, -1.5, 0.3701)
	SWEP.ZF41Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8.5, -3, .5)
	SWEP.CustomizeAng = Vector(10, 45, 18)
	
	SWEP.AlternativePos = Vector(-0.5, -.75, -0.4)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-60.8947, -2.0455, -5.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.BackupSights = {["doi_atow_zf4"] = {[1] = Vector(-2.4370, -3.5, 0.8812), [2] = Vector(0.0762, 0.034, 0)},
	["doi_atow_zf41"] = {[1] = Vector(-2.4370, -3.5, 0.8812), [2] = Vector(0.0762, 0.034, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .95
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- .75
	SWEP.CustomizationMenuScale = 0.025 --  0.03
	
	SWEP.AttachmentModelsVM = {
	["doi_atow_zf41"] = {model = "models/khrcw2/doipack/attachments/zf4scope.mdl", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_zf4"] = {model = "models/khrcw2/doipack/attachments/zf4scope.mdl", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), bone = "A_Optic"},
	}
	
	SWEP.M82AxisAlign = {right = .02, up = -.015, forward = 0}
	SWEP.M823AxisAlign = {right = .02, up = -.015, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = .7, forward = .25, pitch = 0}
end
end

SWEP.SlingBGs = {main = 2, off = 0, on = 1}

SWEP.MuzzleVelocity = 770

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

SWEP.Attachments = {[3] = {header = "Optic", offset = {850, -350}, atts = {"doi_atow_zf4"}},
[2] = {header = "Finish", offset = {300, -250}, atts = {"doi_atow_wornfinish"}},
[1] = {header = "Accessory", offset = {-200, 80}, atts = {"doi_atow_sling"}},
["+reload"] = {header = "Ammo", offset = {380, 180}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	reload = "base_reloadfull",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 50

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 60
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/gewehr43.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_gewehr43.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_gewehr43.mdl"
SWEP.WMPos = Vector(-1, 11, .55)
SWEP.WMAng = Vector(-12, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= false

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "7.62x51MM"
else
SWEP.Primary.Ammo			= "7.92x57MM"
end

SWEP.FireDelay = 60/380
SWEP.FireSound = "DOIG43_FIRE"
SWEP.Recoil = 1.1
 -- = 1

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.0026
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.018
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 60
SWEP.DeployTime = .6
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.6
SWEP.ReloadHalt = 3.2
SWEP.ReloadTime_Empty = 3.95
SWEP.ReloadHalt_Empty = 5

function SWEP:IndividualThink()

if self.ActiveAttachments.doi_atow_zf4 then
		self.AimBreathingEnabled = true
		else
		self.AimBreathingEnabled = false
end

	self.Owner.ViewAff = 0

	self.EffectiveRange = 370 * 39.37
	self.DamageFallOff = .47
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 140 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .141))
end
	
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
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
