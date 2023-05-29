if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1903A3"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_springfield")
	killicon.Add( "doi_atow_m1903a3", "vgui/inventory/killicons/weapon_springfield", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.EffectiveRange_Orig = 500 * 39.37
	SWEP.DamageFallOff_Orig = .325
	
	SWEP.Shell = "khr3006"
	SWEP.ShellScale = .49
	SWEP.ShellDelay = .93
	SWEP.ShellDelaySlow = .93
	SWEP.ShellDelayFast = .8
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4.75, y = -3, z = .5}
	
	SWEP.IronsightPos = Vector(-2.567, -4.25, 1.3156)
	SWEP.IronsightAng = Vector(-0.1,0.02, 0)
	
	SWEP.M73Pos = Vector(-2.565, -3, 1.2384)
	SWEP.M73Ang = Vector(0, 0, 0)

	SWEP.UnertlPos = Vector(-2.5725, -4, 1.1632)
	SWEP.UnertlAng = Vector(0, 0, 0)

	SWEP.WinA5Pos = Vector(-2.5925, -3, 1.2384)
	SWEP.WinA5Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8.5, -3, .5)
	SWEP.CustomizeAng = Vector(12, 45, 16)

	SWEP.AlternativePos = Vector(-1, -.125, -.1)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-55.8947, 55.0455, -16.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1.1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .75
	SWEP.CustomizationMenuScale = 0.026 --  0.03
	
	SWEP.AttachmentModelsVM = {
	["doi_atow_m73"] = {model = "models/khrcw2/doipack/attachments/springfield4xscope.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_unertl"] = {model = "models/khrcw2/doipack/attachments/springfield8xscope.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_wina5"] = {model = "models/khrcw2/doipack/attachments/enfield7xscope.mdl", pos = Vector(-1, .05, .085), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	}
	
	SWEP.ForegripOverridePos = {
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.25, 0, -.05), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-2, 4, 1) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -9, 2) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 4, 0) }},
}
	
	SWEP.M82AxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.UnertlAxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.NO32AxisAlign = {right = 0, up = -.015, forward = 0}
	
	SWEP.LuaVMRecoilAxisMod = {vert = .5, hor = 3, roll = 4, forward = 3, pitch = 2}
end
end

SWEP.ScopeBGs = {main = 6, off = 0, on = 1, on2 = 2}
SWEP.SightBGs = {main = 2, on = 0, off = 1}
SWEP.BoltBGs = {main = 3, off = 0, on = 1}
SWEP.ShellsBGs = {main = 5, one = 4, two = 3, three = 2, four = 1, five = 0}

SWEP.MuzzleVelocity = 760

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

SWEP.Attachments = {[1] = {header = "Reload", offset = {-150, 120}, atts = {"doi_atow_stripperclips"}, exclusions = {["doi_atow_m73"] = true, ["doi_atow_wina5"] = true, ["doi_atow_unertl"] = true}},
[2] = {header = "Optic", offset = {250, -400}, atts = {"doi_atow_m73","doi_atow_wina5","doi_atow_unertl"}},
[4] = {header = "Finish", offset = {1050, -100}, atts = {"doi_atow_wornfinish"}},
[3] = {header = "Action", offset = {950, 240}, atts = {"doi_atow_greasedbolt"}},
["+reload"] = {header = "Ammo", offset = {320, 180}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"iron_fire"},
	fire_aim = {"iron_fire"},
	reload_start = "base_reload_start_empty",
	insert = "base_reload_insert",
	reload_end = "base_reload_end",
	reload = "base_reload_clip",
	reload_empty = "base_reload_empty_clip",
	idle = "base_reload_end",
	draw = "base_draw"}
	

SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 70
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/springfield.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_springfield.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_springfield.mdl"
SWEP.WMPos = Vector(-.25, 14, .55)
SWEP.WMAng = Vector(-10, .8, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= ".30-06"
else
SWEP.Primary.Ammo			= ".30-06"
end


SWEP.FireDelay = 60/38
SWEP.FireSound = "DOISPRING_FIRE"
SWEP.Recoil = 1.5
 -- = .5

SWEP.HipSpread = 0.065
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.25
SWEP.SpreadPerShot = 0.04
SWEP.SpreadCooldown = 0.12
SWEP.Shots = 1
SWEP.Damage = 94
SWEP.DeployTime = .425
SWEP.HolsterTime = .65

SWEP.ADSFireAnim = true
SWEP.GlobalDelayOnShoot = 60/38
SWEP.GlobalDelayOnShootSlow = 60/38
SWEP.GlobalDelayOnShootFast = 60/47
SWEP.Chamberable = false
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = false

SWEP.ReloadStartTime = 1.21
SWEP.InsertShellTime = 0.99
SWEP.ReloadFinishWait = 1.41

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.6
SWEP.ReloadHalt = 4.3
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt_Empty = 4.3

function SWEP:IndividualThink()

	clip = self:Clip1()	

	if clip == 1 then
			self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.four)
			end
				if clip == 2 then
				self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.three)
				end
					if clip == 3 then
					self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.two)
					end
						if  clip == 4 then
						self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.one)
						end
							if  clip == 5 then
							self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.five)
							end
								if  clip == 0 then
							self:setBodygroup(self.ShellsBGs.main, self.ShellsBGs.five)
							end


self.Owner.ViewAff = 0
	self.ShellDelay = (self.ActiveAttachments.doi_atow_greasedbolt) and self.ShellDelayFast or self.ShellDelaySlow
	self.GlobalDelayOnShoot = (self.ActiveAttachments.doi_atow_greasedbolt) and self.GlobalDelayOnShootFast or self.GlobalDelayOnShootSlow
	
		if self.ActiveAttachments.doi_atow_m73 or self.ActiveAttachments.doi_atow_wina5 or self.ActiveAttachments.doi_atow_unertl then
		self:setBodygroup(self.BoltBGs.main, self.BoltBGs.on)
		self.AimBreathingEnabled = true
		else
		self:setBodygroup(self.BoltBGs.main, self.BoltBGs.off)
		self.AimBreathingEnabled = false
		end
		
	self.EffectiveRange = 500 * 39.37
	self.DamageFallOff = .325
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 200 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .0975))
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

if CLIENT then
	SWEP.RoundBeltBoneNames = {
		"Bullet_1",
		"Bullet_2",
		"Bullet_3",
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.Sounds.base_reload_insert[2].callback = adjustMeshByMaxAmmo
end

function SWEP:IndividualInitialize()
	if CLIENT then
		self:initBeltBones()
	end
end

function SWEP:initBeltBones()
	local vm = self.CW_VM
	self.roundBeltBones = {}

	for key, boneName in ipairs(self.RoundBeltBoneNames) do
		local bone = vm:LookupBone(boneName)
		self.roundBeltBones[key] = bone
	end
end

function SWEP:postPrimaryAttack()
	if CLIENT then
		self:adjustVisibleRounds()
	end
end

local fullSize = Vector(1, 1, 1)
local invisible = Vector(0, 0, 0)

function SWEP:adjustVisibleRounds(curMag)
	if not self.roundBeltBones then
		self:initBeltBones()
	end
	
	local curMag = curMag or self:Clip1()
	local boneCount = #self.roundBeltBones
	local vm = self.CW_VM
	
	for i = 1, boneCount do
		local roundID = boneCount - (i - 1)
		local element = self.roundBeltBones[roundID]
		
		local scale = curMag >= roundID and fullSize or invisible
		vm:ManipulateBoneScale(element, scale)
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