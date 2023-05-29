if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "smgMag"
		CustomizableWeaponry.shells:addNew("khr9x19", "models/khrcw2/doipack/shells/45acp.mdl", "CW_SHELL_SMALL")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M3 SMG"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m3greasegun")
	killicon.Add( "doi_atow_m3greasegun", "vgui/inventory/killicons/weapon_m3greasegun", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 130 * 39.37
	SWEP.DamageFallOff_Orig = .7
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = .7
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4.5, y = -3.5, z = -1.25}

	SWEP.IronsightPos = Vector(-2.5062, -2, 1.28)
	SWEP.IronsightAng = Vector(-0.0021, 0.0392, 6)
	
	SWEP.CustomizePos = Vector(9, -2, -1)
	SWEP.CustomizeAng = Vector(15, 37, 10)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)

	SWEP.AlternativePos = Vector(0, .8, -.15)
	SWEP.AlternativeAng = Vector(0, 0, 6)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 45.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, 0, -5.1579)
	SWEP.ProneAng = Vector(-10, 32.7368, -50.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .9
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.022 --  0.026
	
	SWEP.AttachmentModelsVM = {["m3stockextended"] = {model = "models/khrcw2/doipack/attachments/m3stockextended.mdl", pos = Vector(2.72, -8, 3.475), angle = Angle(180, 90, 180), size = Vector(1, 1, 1), bone = "A_Stock", active = true},
	["m3stockcollapsed"] = {model = "models/khrcw2/doipack/attachments/m3stockcollapsed.mdl", pos = Vector(2.72, -8, 3.475), angle = Angle(180, 90, 180), size = Vector(1, 1, 1), bone = "A_Stock", active = false},
	["doi_atow_m3flashhider"] = {model = "models/khrcw2/doipack/attachments/m3flashhider.mdl", pos = Vector(-23.75, -2.7, 2.55), angle = Angle(180, 180, 180), size = Vector(1, 1, 1), bone = "A_Muzzle"},
	["doi_atow_m3a1suppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(-2.18, -8.5, -1.65), angle = Angle(180, 90, 0), size = Vector(1, 1.1, 1.1), bone = "Weapon"}
	}
	
		SWEP.AttachmentPosDependency = {
	["doi_atow_m3flashhider"] = {
		["doi_atow_m3carbine"] = Vector(-15.75, -2.7, 2.55),
		},
	}
	
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .2, roll = .1, forward = .35, pitch = 0}
end
end

SWEP.MuzzleVelocity = 260

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .75

SWEP.SlingBGs = {main = 3, off = 0, on = 1}
SWEP.BarrelBGs = {main = 2, smg = 0, carbine = 1}

SWEP.Attachments = {[2] = {header = "Barrel", offset = {-400, 50}, atts = {"doi_atow_m3carbine"}, exclusions = {doi_atow_m3a1suppressor = true}},
[1] = {header = "Muzzle", offset = {-500, -350}, atts = {"doi_atow_m3flashhider","doi_atow_m3a1suppressor"}},
[3] = {header = "Accessory", offset = {600, -300}, atts = {"doi_atow_sling"}},
[4] = {header = "Fire Control", offset = {700, 250}, atts = {"doi_atow_heavybolt", "doi_atow_lightbolt"}},
["+reload"] = {header = "Ammo", offset = {250, 270}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}

SWEP.Animations = {fire = {"base_fire","base_fire_3"},
	fire_aim = {"iron_fire","iron_fire_a","iron_fire_b"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
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
SWEP.AimViewModelFOV = 62
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/m3greasegun.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m3greasegun.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m3greasegun.mdl"
SWEP.WMPos = Vector(-1.5, 10.5, 2.5)
SWEP.WMAng = Vector(-5, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .35
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Chamberable			= false

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= ".30"
--else
SWEP.Primary.Ammo			= ".30"
--end


SWEP.FireDelay = 60/490
SWEP.FireSound = "DOIM3_FIRE"
SWEP.FireSoundSuppressed = "DOIM3_FIRE_SUPP"
SWEP.Recoil = 1.3
 -- = .6

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.018
SWEP.VelocitySensitivity = .35
SWEP.MaxSpreadInc = 0.062
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 21
SWEP.DeployTime = .475
SWEP.HolsterTime = .55

SWEP.ADSFireAnim = true

SWEP.RecoilToSpread = .7

SWEP.ReloadSpeed = 1.35
SWEP.ReloadTime = 2.3
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 3.4
SWEP.ReloadHalt_Empty = 4.4

function SWEP:IndividualThink()

if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end

	self.EffectiveRange = 130 * 39.37
	self.DamageFallOff = .7
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 45 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .21))
end
	
	if self.ActiveAttachments.doi_atow_m3a1suppressor then
	self.EffectiveRange = ((self.EffectiveRange - 10 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .23))
end
	if self.ActiveAttachments.doi_atow_m3carbine then
	self.EffectiveRange = ((self.EffectiveRange + 10 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .1))
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