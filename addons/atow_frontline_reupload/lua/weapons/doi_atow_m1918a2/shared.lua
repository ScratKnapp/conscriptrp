if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "brMag"
		CustomizableWeaponry.firemodes:registerFiremode("fastauto", "RAPID-FIRE", true, 0, 5)
		CustomizableWeaponry.firemodes:registerFiremode("slowauto", "SLOW-FIRE", true, 0, 4)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1918A2 BAR"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_bar")
	killicon.Add( "doi_atow_m1918a2", "vgui/inventory/killicons/weapon_bar", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 360 * 39.37
	SWEP.DamageFallOff_Orig = .47
	
	SWEP.Shell = "khr3006"
	SWEP.ShellScale = .5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -2.5, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .865
	SWEP.ForeGripOffsetCycle_Reload_Empty = .865

	SWEP.IronsightPos = Vector(-2.144, -2, 1.4437)
	SWEP.IronsightAng = Vector(-0.3029, 0, 0)

	SWEP.AltIronPos = Vector(-2.126, -2, 1.35)
	SWEP.AltIronAng = Vector(-0.15, 0.04, 0)

	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -3, -1)
	SWEP.CustomizeAng = Vector(15, 42, 12)
	
	SWEP.AlternativePos = Vector(-.55, .5, .1)
	SWEP.AlternativeAng = Vector(-0.5029, 0, -2)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 0.0526)
	SWEP.SwimAng = Vector(-40.8947, 35.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, -2, -.1579)
	SWEP.ProneAng = Vector(6, 15.7368, -5.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.023 --  0.028
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .65
	SWEP.LuaVMRecoilAxisMod = {vert = .35, hor = .25, roll = .45, forward = .15, pitch = .3}
	
	SWEP.AttachmentModelsVM = {
	}
	
	SWEP.ForegripOverridePos = {
	["bipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, -10), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-.5, .05, -.1), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -5, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
}
	
	SWEP.Trivia = {text = "The SLOW-FIRE fire-mode will lower the firerate to 425rpm.", x = 0, y = -375}
end
end

SWEP.BodyBGs = {main = 2, off = 0, on = 1}
SWEP.CarryBGs = {main = 3, off = 0, on = 1}
SWEP.SightBGs = {main = 4, off = 0, on = 1}
SWEP.GaurdBGs = {main = 5, off = 0, on = 1}

SWEP.MuzzleVelocity = 850

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {[4] = {header = "Sight", offset = {1350, 50}, atts = {"doi_atow_altsight"}},
[3] = {header = "Handle", offset = {700, -130}, atts = {"doi_atow_barcarry"}},
[1] = {header = "Accessory", offset = {-200, -265}, atts = {"doi_atow_bipod"}},
[2] = {header = "Handgaurd", offset = {-50, 200}, atts = {"doi_atow_barhandguard"}},
["+reload"] = {header = "Ammo", offset = {450, 300}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2","base_fire_3"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	reload = "base_reloadfull",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 55

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"fastauto","slowauto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 65
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/bar.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_bar.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_bar.mdl"
SWEP.WMPos = Vector(-1, 17, -1.25)
SWEP.WMAng = Vector(-16, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= ".30-06"
else
SWEP.Primary.Ammo			= ".30-06"	
end


SWEP.FireDelay = 60/600
SWEP.FireDelayFast = 60/600
SWEP.FireDelaySlow = 60/425
SWEP.FireSound = "DOIBAR_FIRE"
SWEP.Recoil = 1.3
SWEP.BipodRecoilModifier = 0.3 --0.1 -- = 0 --0.35
 -- = 1

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.004
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.15
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.24
SWEP.Shots = 1
SWEP.Damage = 39
SWEP.DeployTime = .5
SWEP.HolsterTime = .7

SWEP.ADSFireAnim = true
SWEP.Chamberable = false

SWEP.RecoilToSpread = 1
SWEP.RecoilToSpreadFast = 1
SWEP.RecoilToSpreadSlow = .65

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 3.7
SWEP.ReloadHalt = 4.3
SWEP.ReloadTime_Empty = 4.9
SWEP.ReloadHalt_Empty = 5.6

function SWEP:IndividualThink()
	self.FireDelay = (self.FireMode == "slowauto") and self.FireDelaySlow or self.FireDelayFast
	
	if self.FireMode == "semi" then
	self.SpreadPerShot = 0.005
	self.Owner.ViewAff = 0
	else
	self.SpreadPerShot = 0.01
	end
	
	if self.dt.BipodDeployed then
		self.MaxSpreadInc = 0.03
		self.ForegripOverride = true
		self.ForegripParent = "bipod"
		--self.QuickMeleeLogic = false
	else
		self.MaxSpreadInc = 0.15
		self.ForegripOverride = true
		self.ForegripParent = "nah"
		--self.QuickMeleeLogic = true
	end
	
	self.EffectiveRange = 360 * 39.37
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
	rate = 1.2
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