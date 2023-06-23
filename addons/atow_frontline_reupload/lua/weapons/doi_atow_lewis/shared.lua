if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "brMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Lewis LMG"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_lewis")
	killicon.Add( "doi_atow_lewis", "vgui/inventory/killicons/weapon_lewis", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_g3"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 280 * 39.37
	SWEP.DamageFallOff_Orig = .57
	
	SWEP.Shell = "khr303"
	SWEP.ShellScale = .6
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = .85
	SWEP.ForeGripOffsetCycle_Reload_Empty = .85

	SWEP.IronsightPos = Vector(-3.3295, -1.5, 2.1344)
	SWEP.IronsightAng = Vector(-0.0648, 0.0265, 0)
	
	SWEP.Ironsight2Pos = Vector(-3.3295, -1.5, 1.5223)
	SWEP.Ironsight2Ang = Vector(-0.023, 0.032, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -2, -1)
	SWEP.CustomizeAng = Vector(15, 40, 10)
	
	SWEP.AlternativePos = Vector(-1.25, -.5, .5)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-30.8947, -15.0455, 15.2273)
	
	SWEP.PronePos = Vector(0, -2, -.1579)
	SWEP.ProneAng = Vector(6, 15.7368, -5.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1.35
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.AttachmentModelsVM = {
	}
	
	SWEP.ForegripOverridePos = {
	["bipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, -10), angle = Angle(0, 0, 0) },
	["Bipod_R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -21.112) },
	["Bipod_L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -21.112) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bipod_R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bipod_L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nobipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bipod_R"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -250), angle = Angle(0, 0, 0) },
	["Bipod_L"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -250), angle = Angle(0, 0, 0) }},
}

	SWEP.CustomizationMenuScale = 0.03
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .6
	SWEP.LuaVMRecoilAxisMod = {vert = -.15, hor = .45, roll = .7, forward = 1, pitch = .1}
	SWEP.Trivia = {text = "Deploying your bipod will vastly improve your aiming accuracy.", x = 25, y = -400}
end
end

SWEP.BodyBGs = {main = 2, off = 0, on = 1}
SWEP.FSightBGs = {main = 3, off = 0, on = 1}
SWEP.RSightBGs = {main = 4, off = 0, on = 1}

SWEP.MuzzleVelocity = 740

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true

SWEP.Attachments = {[2] = {header = "Model", offset = {575, -300}, atts = {"doi_atow_lewisaa"}},
[3] = {header = "Fire Control", offset = {750, 300}, atts = {"doi_atow_burstconv","doi_atow_heavybolt", "doi_atow_lightbolt"}},
[1] = {header = "Frame", offset = {-250, -200}, atts = {"doi_atow_bipodremove"}},
["+reload"] = {header = "Ammo", offset = {0, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	fire_last = {"base_fire_last"},
	fire_last_aim = {"iron_fire_last"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 55

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 62
SWEP.ZoomAmount = 12
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/lewis.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_lewis.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_lewis.mdl"
SWEP.WMPos = Vector(-1, 14.25, 1.5)
SWEP.WMAng = Vector(-11, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 47
SWEP.Primary.DefaultClip	= 47
SWEP.Primary.Automatic		= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= ".30-06"
else
SWEP.Primary.Ammo			= ".30-06"
end

SWEP.FireDelay = 60/530
SWEP.FireSound = "DOILEWIS_FIRE"
SWEP.Recoil = 1.1
SWEP.BipodRecoilModifier = 0.4 --0.1 -- = 0 --.7

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.15
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 30
SWEP.DeployTime = .675
SWEP.HolsterTime = .7

SWEP.ADSFireAnim = true
SWEP.BipodInstalled = true
SWEP.Chamberable = false

SWEP.RecoilToSpread = 1.5

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 5
SWEP.ReloadHalt = 6.3
SWEP.ReloadTime_Empty = 5.8
SWEP.ReloadHalt_Empty = 7.2

function SWEP:IndividualThink()
	if self.dt.BipodDeployed then
		self.MaxSpreadInc = 0.03
		self.RecoilToSpread = 0
		self.ForegripOverride = true
		self.ForegripParent = "bipod"
	elseif self.ActiveAttachments.doi_atow_bipodremove then
		self.ForegripOverride = true
		self.ForegripParent = "nobipod"
		self.ForeGripOffsetCycle_Reload = 0
		self.ForeGripOffsetCycle_Reload_Empty = 0
		self.ForeGripOffsetCycle_Draw = 0
	else
		self.MaxSpreadInc = self.MaxSpreadInc_Orig
		self.RecoilToSpread = 1.5
		self.ForegripOverride = true
		self.ForegripParent = "nah"
		self.ForeGripOffsetCycle_Reload = 0.85
		self.ForeGripOffsetCycle_Reload_Empty = 0.85
	end
	
	self.EffectiveRange = 280 * 39.37
	self.DamageFallOff = .57
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 100 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .17))
end
	
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
	anim = "safe"
	prefix = ""
	suffix = ""
	
		if clip == 1 then
		suffix = suffix .. "_last"
	end
	
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