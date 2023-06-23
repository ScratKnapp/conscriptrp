if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "brMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MG42"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.HUD_MagText = "BELT: "
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_mg42")
	killicon.Add( "doi_atow_mg42", "vgui/inventory/killicons/weapon_mg42", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_sr25"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 300 * 39.37
	SWEP.DamageFallOff_Orig = .5
	
	SWEP.Shell = "khr79257"
	SWEP.ShellScale = .48
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 15, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Reload = .82
	SWEP.ForeGripOffsetCycle_Reload_Empty = .825
	
	SWEP.IronsightPos = Vector(-2.3595, -2, 0.952)
	SWEP.IronsightAng = Vector(-0.0747, 0.0156, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -2, -3)
	SWEP.CustomizeAng = Vector(14, 40, 5)
	
	SWEP.AlternativePos = Vector(-0.6, 0, -0.45)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 30.0455, -25.2273)
	
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
	["MG42_BIPOD"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["MG42_BIPOD"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nobipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["MG42_BIPOD"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -250), angle = Angle(0, 0, 0) }},
}
	
	SWEP.CustomizationMenuScale = 0.024 --  0.0325
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .55
	SWEP.LuaVMRecoilAxisMod = {vert = -.05, hor = .15, roll = .15, forward = .8, pitch = .075}
	SWEP.Trivia = {text = "Deploying your bipod will vastly improve your aiming accuracy.", x = 50, y = -450}
end
end

SWEP.MuzzleVelocity = 730

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true

SWEP.Attachments = {[2] = {header = "Finish", offset = {250, -250}, atts = {"doi_atow_normandycamo"}},
[3] = {header = "Belt", offset = {800, -150}, atts = {"doi_atow_150rndbelt","doi_atow_50rndbelt"}},
[1] = {header = "Frame", offset = {-250, -200}, atts = {"doi_atow_bipodremove"}},
["+reload"] = {header = "Ammo", offset = {200, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap", "doi_atow_burstconv"}}}

SWEP.Animations = {fire = {"base_fire_1"},
	fire_aim = {"iron_fire_1","iron_fire_2"},
	reload = "base_reload",
	reload_empty = "base_reload_empty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 65

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
SWEP.AimViewModelFOV = 64
SWEP.ZoomAmount = 20
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/mg42.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_mg42.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_mg42.mdl"
SWEP.WMPos = Vector(-1, 14, 2)
SWEP.WMAng = Vector(-10, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 250
SWEP.Primary.DefaultClip	= 250
SWEP.Primary.Automatic		= true

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "7.92x57MM"
else
SWEP.Primary.Ammo			= "7.92x57MM"
end

SWEP.FireDelay = 60/1300
SWEP.FireSound = "DOIMG42_FIRE"
SWEP.Recoil = 1.3
SWEP.BipodRecoilModifier = 0.3 --0.1 -- = 0 --.4
 -- = 1.2

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0.02
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.16
SWEP.SpreadPerShot = 0.0025
SWEP.SpreadCooldown = 0.3
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.575
SWEP.HolsterTime = .75
SWEP.BurstCooldownMul = 3

SWEP.ADSFireAnim = true
SWEP.BipodInstalled = true
SWEP.Chamberable = false

SWEP.RecoilToSpread = 2

SWEP.ReloadSpeed = 1.05
SWEP.ReloadTime = 6.15
SWEP.ReloadHalt = 8.1
SWEP.ReloadTime_Empty = 6.9
SWEP.ReloadHalt_Empty = 8.8

function SWEP:IndividualThink()
	
	if self.dt.BipodDeployed then
		self.MaxSpreadInc = 0.06
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
		self.MaxSpreadInc = 0.16
		self.RecoilToSpread = 2
		self.ForegripOverride = true
		self.ForegripParent = "nah"
		self.ForeGripOffsetCycle_Reload = .82
		self.ForeGripOffsetCycle_Reload_Empty = .825
	end
	
	self.EffectiveRange = 300 * 39.37
	self.DamageFallOff = .5
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 120 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .15))
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

if CLIENT then
	SWEP.RoundBeltBoneNames = {
		"MG42_ROUND_01",
		"MG42_ROUND_02",
		"MG42_ROUND_03",
		"MG42_ROUND_04",
		"MG42_ROUND_05",
		"MG42_ROUND_06",
		"MG42_ROUND_07",
		"MG42_ROUND_08",
		"MG42_ROUND_09",
		"MG42_ROUND_10",
		"MG42_ROUND_11",
		"MG42_ROUND_12",
		"MG42_ROUND_13",
		"MG42_ROUND_14",
		"MG42_ROUND_15",
		"MG42_ROUND_16",
		"MG42_ROUND_17",
		"MG42_ROUND_18",
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.Sounds.base_reload[5].callback = adjustMeshByMaxAmmo
	SWEP.Sounds.base_reload_empty[7].callback = adjustMeshByMaxAmmo
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