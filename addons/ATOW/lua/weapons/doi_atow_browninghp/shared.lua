if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "pistolMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Hi-Power"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_browninghp")
	killicon.Add( "doi_atow_browninghp", "vgui/inventory/killicons/weapon_browninghp", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.86
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.7
	
	SWEP.EffectiveRange_Orig = 100 * 39.37
	SWEP.DamageFallOff_Orig = .3
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = .485
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -.25, y = -2.2, z = 3.75}

	SWEP.IronsightPos = Vector(-2.12, 1, 0.7924)
	SWEP.IronsightAng = Vector(-0.0121, 0.065, 0)
	
	SWEP.AltIronPos = Vector(-2.1241, 1, 0.57)
	SWEP.AltIronAng = Vector(0.7222, 0.0454, 0)
	
	SWEP.SprintPos = Vector(2.8409, -10.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, 2.0455, 2.0455)
	
	SWEP.CustomizePos = Vector(10, -6, 1)
	SWEP.CustomizeAng = Vector(15, 50, 20)

	SWEP.AlternativePos = Vector(-0.65, 1, -0.45)
	SWEP.AlternativeAng = Vector(-0.0121, 0.0454, 0)
	
	SWEP.Alternative1Pos = Vector(-0.65, -1, -0.45)
	SWEP.Alternative1Ang = Vector(-0.0121, 0.0454, 0)
	
	SWEP.Alternative2Pos = Vector(-0.75, -1, -0.35)
	SWEP.Alternative2Ang = Vector(-0.0121, 0.0454, -4)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.PronePos = Vector(0, -4, -2.5579)
	SWEP.ProneAng = Vector(10, 12.7368, -8.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .75
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.AttachmentModelsVM = {["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(-.018, 3.19, 1.765), angle = Angle(-.25, -90, 0), size = Vector(0.675, 0.675, 0.675), bone = "Weapon"}}
end
end

SWEP.MuzzleVelocity = 350

SWEP.SightBGs = {main = 2, off = 0, on = 1}
SWEP.CompBGs = {main = 3, off = 0, on = 1}
SWEP.BodyBGs = {main = 4, off = 0, on = 1}
SWEP.MagBGs = {main = 5, off = 0, on = 1}

SWEP.ForegripOverridePos = {
	["onehand"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 2, -6), angle = Angle(0, 0, 0) },
	["R Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 5, 0) },
	["R Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 5, 0) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
}

SWEP.Attachments = {[2] = {header = "Rear Sight", offset = {-100, -375}, atts = {"doi_atow_altsight"}},
[3] = {header = "Magazine", offset = {50, 250}, atts = {"doi_atow_bhpextmag"}},
[5] = {header = "Accessory", offset = {600, -125}, atts = {"doi_atow_bhpstock", "doi_atow_onehand"}},
[1] = {header = "Muzzle", offset = {-750, -350}, atts = {"doi_atow_bhpcomp","doi_atow_unisuppressor"}},
[4] = {header = "Fire Control", offset = {360, -570}, atts = {"doi_atow_m2carbineconv"}},
["+reload"] = {header = "Ammo", offset = {-600, 100}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}

SWEP.Animations = {fire = {"base_fire","base_fire2"},
	fire_aim = {"iron_fire","iron_fire2"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	
SWEP.ReloadViewBobEnabled = true

SWEP.SpeedDec = 15

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 67
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/browninghp.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_browninghp.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_browninghp.mdl"
SWEP.WMPos = Vector(-1.5, 4, 3.25)
SWEP.WMAng = Vector(-5, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .25
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .35

SWEP.Primary.ClipSize		= 13
SWEP.Primary.DefaultClip	= 13
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= "Pistol"
--else
SWEP.Primary.Ammo			= "9x19MM"
--end

SWEP.FireDelay = 60/500
SWEP.FireSound = "DOIBHP_FIRE"
SWEP.FireSoundSuppressed = "DOIPPK_FIRE_SUPPRESSED"
SWEP.Recoil = 1
 -- = .52

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.007
SWEP.VelocitySensitivity = .25
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.012
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = .3
SWEP.HolsterTime = .3

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = false

SWEP.RecoilToSpread = 0
SWEP.RecoilToSpreadAuto = 1
SWEP.RecoilToSpreadSemi = 0

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 1.9
SWEP.ReloadHalt = 2.45
SWEP.ReloadTime_Empty = 2.45
SWEP.ReloadHalt_Empty = 3.05

function SWEP:IndividualThink()
self.Owner.ViewAff = 0
	self.RecoilToSpread = (self.FireMode == "auto") and self.RecoilToSpreadAuto or self.RecoilToSpreadSemi
	self.AlternativePos = (self.ActiveAttachments.doi_atow_onehand) and self.Alternative2Pos or self.Alternative1Pos
	self.AlternativeAng = (self.ActiveAttachments.doi_atow_onehand) and self.Alternative2Ang or self.Alternative1Ang
		
	self.EffectiveRange = 100 * 39.37
	self.DamageFallOff = .3
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 40 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .09))
end
	
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 10 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .1))
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
