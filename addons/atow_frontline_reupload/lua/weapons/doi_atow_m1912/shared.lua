if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1912"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m1912")
	killicon.Add( "doi_atow_m1912", "vgui/inventory/killicons/weapon_m1912", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 70 * 39.37
	SWEP.DamageFallOff_Orig = .8
	
	SWEP.Shell = "khr12gbuck"
	SWEP.ShellScale = .435
	SWEP.ShellDelay = .52
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4.75, y = -.85, z = .45}

	SWEP.IronsightPos = Vector(-2.005, -2.25, 0.979)
	SWEP.IronsightAng = Vector(0.555, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 40, 15)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 40.0455, -12.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.AlternativePos = Vector(-.4, -.5, -0.8)
	SWEP.AlternativeAng = Vector(0.555, 0, 0)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .9
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.LuaVMRecoilAxisMod = {vert = .5, hor = .5, roll = 3, forward = 1.5, pitch = .8}
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .825
	SWEP.CustomizationMenuScale = 0.022 --  0.025
	
	SWEP.AttachmentModelsVM = {
	}
	
	SWEP.Trivia = {text = "By holding the attack button you will slam-fire, providing high firerate.", x = -50, y = -400}
end
end

SWEP.MuzzleVelocity = 340

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {["+reload"] = {header = "Ammo", offset = {250, 175}, atts = {"am_flechettem37", "am_slugroundsm37"}}}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	reload_start = "base_reload_start",
	insert = "base_reload_insert",
	reload_end = "base_reload_end",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pumpslamfire"}
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
SWEP.ViewModel		= "models/khrcw2/doipack/m1912.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m1912.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m1912.mdl"
SWEP.WMPos = Vector(-1, 2, 0)
SWEP.WMAng = Vector(-16, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= true

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= "12 Gauge"
--else
SWEP.Primary.Ammo			= "12 Gauge"
--end

SWEP.FireDelay = 60/100
SWEP.FireSound = "DOIM37_FIRE"
SWEP.Recoil = 2.6
 -- = 1

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.055
SWEP.VelocitySensitivity = .75
SWEP.MaxSpreadInc = 0.043
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.75
SWEP.Shots = 9
SWEP.Damage = 13
SWEP.DeployTime = .425
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true
SWEP.GlobalDelayOnShoot = 60/100
SWEP.Chamberable = true
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = false
SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = true}

SWEP.SnapToIdle = true
SWEP.ReloadSpeed = 1.4
SWEP.ReloadStartTime = 0.5
SWEP.InsertShellTime = .75
SWEP.ReloadFinishWait = 1

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
clip = self:Clip1()	

	--if clip == 0 then	
	--self.Animations.reload_start = "base_reload_start_empty"
	--self.ReloadStartTime = 3
	--end
	
	--if clip < 0 then
	--self.Animations.reload_start = "base_reload_start"
	--self.ReloadStartTime = 0.5
	--end

	self.EffectiveRange = 70 * 39.37
	self.DamageFallOff = .8
	
	if (self.ActiveAttachments.am_slugroundsm37) then
	self.EffectiveRange = ((self.EffectiveRange + 25 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .085))
end
	if (self.ActiveAttachments.am_flechettem37) then
	self.EffectiveRange = ((self.EffectiveRange + 18 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .1))
	self.ClumpSpread = 0.035
end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
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