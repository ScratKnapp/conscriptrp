if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		--SWEP.magType = "NONE"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Webley Mk.IV"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.HUD_MagText = "CYLINDER: "
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_webley")
	killicon.Add( "doi_atow_webley", "vgui/inventory/killicons/weapon_webley", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 90 * 39.37
	SWEP.DamageFallOff_Orig = .64
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .425
	SWEP.NoShells = true

	SWEP.IronsightPos = Vector(-1.9003, 1, 0.4979)
	SWEP.IronsightAng = Vector(0, .05, 6.5)
	
	SWEP.WebleyPos = Vector(-1.837, -3, 0.34)
	SWEP.WebleyAng = Vector(0.78, 0.154, 6.6626)
	
	SWEP.SprintPos = Vector(2.8409, -10.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, 2.0455, 2.0455)
	
	SWEP.CustomizePos = Vector(10, -6.5, .5)
	SWEP.CustomizeAng = Vector(17, 45, 24)

	SWEP.AlternativePos = Vector(-.25, -1.2, -0.3)
	SWEP.AlternativeAng = Vector(0, 0, 4)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .8
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .1, roll = 1.5, forward = .4, pitch = .3}
	SWEP.CustomizationMenuScale = 0.017 --  0.017
	
	SWEP.AttachmentModelsVM = {}
end
end

SWEP.ShellsBGs = {main = 2, zero = 0, one = 1, two = 2, three = 3, four = 4, five = 5, six = 6}
SWEP.BulletsBGs = {main = 1,  zero = 0, one = 1, two = 2, three = 3, four = 4, five = 5, six = 6}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true

SWEP.MuzzleVelocity = 250

SWEP.Attachments = {[1] = {header = "Reload", offset = {-150, 125}, atts = {"doi_atow_revsbandoler","doi_atow_revspeedstrip","doi_atow_revspeedloader"}},
["+reload"] = {header = "Ammo", offset = {350, -150}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_riot"}}}

SWEP.Animations = {fire = {"base_fire2","base_fire3"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	fire_last = "base_firelast",
	fire_last_aim = "iron_firelast",
	reload = "base_reload_speed",
	reload_empty = "base_reload_speed",
	reload_start = "base_reload_start",
	insert = "base_reload_insert",
	reload_end = "base_reload_end",
	idle = "base_reload_end",
	draw = "base_draw"}
	
SWEP.ReloadViewBobEnabled = true

SWEP.SpeedDec = 15

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "pistol"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"double"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 65
SWEP.ZoomAmount = 5
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/webley.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_webley.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_webley.mdl"
SWEP.WMPos = Vector(-1.4, 4.5, 2.85)
SWEP.WMAng = Vector(-8, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .25
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= false

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "9x17MM"
else
SWEP.Primary.Ammo			= ".380"
end

SWEP.FireDelay = 60/400
SWEP.FireSound = "DOIWEBLEY_FIRE"
SWEP.Recoil = 1.1
 -- = .45

SWEP.HipSpread = 0.065
SWEP.AimSpread = 0.0085
SWEP.VelocitySensitivity = .2
SWEP.MaxSpreadInc = 0.028
SWEP.SpreadPerShot = 0.012
SWEP.SpreadCooldown = 0.3
SWEP.Shots = 1
SWEP.Damage = 25
SWEP.DeployTime = .15
SWEP.HolsterTime = .2

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = true
SWEP.ShotgunReload = true
SWEP.HolsterOnLadder = false
SWEP.SprintingEnabled = false

SWEP.ReloadSpeed = 1.45
SWEP.ReloadTime = 2.6
SWEP.ReloadHalt = 3.3
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt_Empty = 3.3

SWEP.ReloadStartTime = 1.25
SWEP.InsertShellTime = .95
SWEP.ReloadFinishWait = 1

SWEP.NearWallEnabled = false

function SWEP:IndividualThink()

if self.ActiveAttachments.doi_atow_revspeedstrip then
			if self:Clip1() == 0 or self:Clip1() == 2 or self:Clip1() == 4 then
				self.InsertShellTime = 0.3
			elseif self:Clip1() == 3 or self:Clip1() == 5 then
				self.InsertShellTime = 1.1
			else
				self.InsertShellTime = 0.95
			end
	end

self.Owner.ViewAff = 0
	
	self.EffectiveRange = 90 * 39.37
	self.DamageFallOff = .64
	
		if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 45 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .192))
end
	if self.ActiveAttachments.am_atow_riot then
	self.EffectiveRange = ((self.EffectiveRange - 49.5 * 39.37))
end

		clip = self:Clip1()	
			
		if self.Sequence == self.Animations.insert and clip == 0 then
		self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.zero)
		end	
			if self.Sequence == self.Animations.insert and clip == 1 then
			self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.one)
			end
				if self.Sequence == self.Animations.insert and clip == 2 then
				self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.two)
				end
					if self.Sequence == self.Animations.insert and clip == 3 then
					self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.three)
					end
						if self.Sequence == self.Animations.insert and clip == 4 then
						self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.four)
						end
							if self.Sequence == self.Animations.insert and clip == 5 then
							self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.five)
							end
								if self.Sequence == self.Animations.insert and clip == 6 then
								self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.six)
								end
									if clip == 6 then
									self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.six)
									end
										if self.Sequence == self.Animations.reload and self.ActiveAttachments.doi_atow_revspeedloader or
											self.Sequence == self.Animations.reload_empty and self.ActiveAttachments.doi_atow_revspeedloader then
											self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.six)
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