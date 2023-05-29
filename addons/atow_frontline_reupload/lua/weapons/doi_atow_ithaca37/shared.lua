if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"

	CustomizableWeaponry.firemodes:registerFiremode("pumpslamfire", "PUMP-ACTION [SLAMFIRE]", true, 0, 1)
	CustomizableWeaponry.shells:addNew("khr12gbuck", "models/khrcw2/doipack/shells/12g_slug.mdl", "CW_SHELL_SHOT")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M37"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_ithaca")
	killicon.Add( "doi_atow_ithaca37", "vgui/inventory/killicons/weapon_ithaca", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 70 * 39.37
	SWEP.DamageFallOff_Orig = .7
	
	SWEP.Shell = "khr12gbuck"
	SWEP.ShellScale = .55
	SWEP.ShellDelay = .55
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = -7}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0

	SWEP.IronsightPos = Vector(-2.0885, -2.25, 1.2)
	SWEP.IronsightAng = Vector(0.555, 0, 0)
	
	SWEP.AltIronPos = Vector(-2.0885, -2.25, 1.2)
	SWEP.AltIronAng = Vector(0.778550, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 45, 16)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 40.0455, -12.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.AlternativePos = Vector(-0.5, -.5, -.3)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .9
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.LuaVMRecoilAxisMod = {vert = .5, hor = .5, roll = 3, forward = 1, pitch = .65}
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .75
	SWEP.CustomizationMenuScale = 0.022 --  0.025
	
	SWEP.AttachmentModelsVM = {["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(0.01, 18.25, .3), angle = Angle(-.35, -90, 0), size = Vector(1.1, 1.1, 1.1), bone = "Weapon"}}
	
	SWEP.ForegripOverridePos = {
	["nah"] = {
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 4, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1, -8, 2) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -4, 0) }},
}
	
	SWEP.Trivia = {text = "By holding the attack button you will slam-fire, providing high firerate.", x = -20, y = -400}
end
end

SWEP.MuzzleVelocity = 360

SWEP.BarrelBGs = {main = 2, nohs = 0, hs = 1}
SWEP.SlingBGs = {main = 3, off = 0, on = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true
SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = true}

if CustomizableWeaponry_atowins2_optics then
SWEP.Attachments = {[1] = {header = "Accessory", offset = {150, -250}, atts = {"doi_atow_sling"}},
[2] = {header = "Muzzle", offset = {500, -220}, atts = {"doi_atow_unisuppressor"}, dependencies = {["am_slugroundsm37"] = true}},
["+reload"] = {header = "Ammo", offset = {450, 160}, atts = {"am_flechettem37", "am_slugroundsm37"}}}
else
SWEP.Attachments = {[1] = {header = "Accessory", offset = {150, -250}, atts = {"doi_atow_sling"}},
["+reload"] = {header = "Ammo", offset = {450, 160}, atts = {"am_flechettem37", "am_slugroundsm37"}}}
end

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
SWEP.ViewModel		= "models/khrcw2/doipack/ithaca37.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_ithaca37.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_ithaca37.mdl"
SWEP.WMPos = Vector(-1.5, 11, -1)
SWEP.WMAng = Vector(-16, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = 1
SWEP.RVBYawMod = 1
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 7
SWEP.Primary.Automatic		= true

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= "Buckshot"
--else
SWEP.Primary.Ammo			= "12 Gauge"
--end

SWEP.FireDelay = 60/89
SWEP.FireSound = "DOIM37_FIRE"
SWEP.FireSoundSuppressed = "DOIK98_FIRE_SUPPRESSED"
SWEP.Recoil = 2.4
 -- = 1

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.045
SWEP.VelocitySensitivity = .8
SWEP.MaxSpreadInc = 0.04
SWEP.ClumpSpread = 0.018
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.85
SWEP.Shots = 9
SWEP.Damage = 14
SWEP.DeployTime = .475
SWEP.HolsterTime = .6

SWEP.SnapToIdle = true
SWEP.GlobalDelayOnShoot = 60/89
SWEP.ADSFireAnim = true
SWEP.Chamberable = true
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = false

SWEP.ReloadSpeed = 1.3
SWEP.ReloadStartTime = 0.5
SWEP.InsertShellTime = .85
SWEP.ReloadFinishWait = 1

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
    self.EffectiveRange = 70 * 39.37
	self.DamageFallOff = .7
	
	if self.ActiveAttachments.am_slugroundsm37 then
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.nohs)
	else
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.hs)
	end
	
	if (self.ActiveAttachments.am_slugroundsm37) then
	self.EffectiveRange = ((self.EffectiveRange + 25 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .05))
end
	if (self.ActiveAttachments.am_flechettem37) then
	self.EffectiveRange = ((self.EffectiveRange + 19 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .12))
	self.ClumpSpread = 0.035
end
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 10 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .15))
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