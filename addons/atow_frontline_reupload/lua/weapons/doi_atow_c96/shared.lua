if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"

	CustomizableWeaponry.shells:addNew("khr763", "models/khrcw2/doipack/shells/7_63x25mm.mdl", "CW_SHELL_SMALL")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "C96"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_c96")
	killicon.Add( "doi_atow_c96", "vgui/inventory/killicons/weapon_c96", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .85
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	
	SWEP.EffectiveRange_Orig = 120 * 39.37
	SWEP.DamageFallOff_Orig = .35
	
	SWEP.Shell = "khr763"
	SWEP.ShellScale = .91
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3.35, y = -3, z = .1}

	SWEP.IronsightPos = Vector(-2.627, 3, 0.6077)
	SWEP.IronsightAng = Vector(1.04, 0.06, 0)
	
	SWEP.LongBarrelPos = Vector(-2.627, 3, 0.727)
	SWEP.LongBarrelAng = Vector(0.5, 0.036, 0)
	
	SWEP.SprintPos = Vector(2.8409, -10.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, 2.0455, 2.0455)
	
	SWEP.Sprint1Pos = Vector(2.8409, -10.9318, -8.5227)
	SWEP.Sprint1Ang = Vector(59.3182, 2.0455, 2.0455)
	
	SWEP.Sprint2Pos = Vector(2.1053, -1.0526, -1.0526)
	SWEP.Sprint2Ang = Vector(-15.1579, 26.5263, -22.7368)
	
	SWEP.CustomizePos = Vector(10, -6, 1)
	SWEP.CustomizeAng = Vector(15, 50, 20)

	SWEP.AlternativePos = Vector(-0.75, .25, -0.35)
	SWEP.AlternativeAng = Vector(1.04, 0.0329, 0)
	
	SWEP.Alternative1Pos = Vector(-0.75, .25, -0.35)
	SWEP.Alternative1Ang = Vector(1.04, 0.0329, 0)
	
	SWEP.Alternative2Pos = Vector(-1, .25, -0.45)
	SWEP.Alternative2Ang = Vector(1.04, 0.1, -3)
	
	SWEP.Alternative3Pos = Vector(-0.75, -2, -0.65)
	SWEP.Alternative3Ang = Vector(1.04, 0.0329, -1)
	
	SWEP.Alternative4Pos = Vector(-0.75, .25, -0.35)
	SWEP.Alternative4Ang = Vector(1.04, 0.0329, 0)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.PronePos = Vector(0, -3, -3.1579)
	SWEP.ProneAng = Vector(10, 12.7368, -8.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .75
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.CustomizationMenuScale = 0.015 --  0.0165
	
	SWEP.AttachmentModelsVM = {["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(1.3, -2.45, 1.34), angle = Angle(0, -90, 0), size = Vector(0.5, 0.65, 0.65), bone = "Slide"}}
	
	SWEP.AttachmentPosDependency = {
	["doi_atow_unisuppressor"] = {
		["doi_atow_c96longbarrel"] = Vector(1.31, 7, 1.35),
		},
	}
end
end


SWEP.MuzzleVelocity = 440	

SWEP.BarrelBGs = {main = 2, off = 0, on = 1}
SWEP.BodyBGs = {main = 3, off = 0, on = 1}

SWEP.ForegripOverridePos = {
	["onehand"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 2, -6), angle = Angle(0, 0, 0) },
	["R Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(2, 5, 0) },
	["R Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 5, 0) }},
	
	["2hand"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 10, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1.111, 14.444, -1.111) },
	["L Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 43.333, 25.555) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.557, 47.777, 14.444) },
	["L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 1.11, 7.777) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.519, 0.8, 2.036), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.778, -34, -11.11) },
	["L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 25.555, 0) },
	["R Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3.333, 10, 14.444) },
	["R Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3.333, 12, 1.444) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.557, 7.777, -1.111) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.11, 3.332, -10) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.333, 5.332, 23.333) }},
	
	["nah"] = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(.05, 0, -.15), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["R Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
}

SWEP.Attachments = {[1] = {header = "Barrel", offset = {-500, -450}, atts = {"doi_atow_c96longbarrel"}},
[3] = {header = "Finish", offset = {250, 250}, atts = {"doi_atow_c96goldfinish"}},
[4] = {header = "Accessory", offset = {650, -100}, atts = {"doi_atow_c96stock","doi_atow_onehand"}},
[2] = {header = "Fire Control", offset = {150, -500}, atts = {"doi_atow_m2carbineconv"}},
["+reload"] = {header = "Ammo", offset = {-370, 70}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2","base_fire_3"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"iron_firelast"},
	reload = "base_reload_clip",
	reload_empty = "base_reload_empty_clip",
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
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/c96.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_c96.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_c96.mdl"
SWEP.WMPos = Vector(-1.5, 4, 3.25)
SWEP.WMAng = Vector(-5, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= false

if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= ".45 ACP"
else
SWEP.Primary.Ammo			= ".45 ACP"
end

SWEP.FireDelay = 60/500
SWEP.FireSound = "DOIC96_FIRE"
SWEP.FireSoundSuppressed = "DOIPPK_FIRE_SUPPRESSED"
SWEP.Recoil = 1.1
 -- = .6

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.004
SWEP.VelocitySensitivity = .4
SWEP.MaxSpreadInc = 0.032
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
SWEP.Damage = 22
SWEP.DeployTime = .35
SWEP.HolsterTime = .35

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = false

SWEP.RecoilToSpread = 0
SWEP.RecoilToSpreadAuto = 1
SWEP.RecoilToSpreadSemi = 0

SWEP.ReloadSpeed = 1.4
SWEP.ReloadTime = 3.4
SWEP.ReloadHalt = 6
SWEP.ReloadTime_Empty = 3.1
SWEP.ReloadHalt_Empty = 4.2

function SWEP:IndividualThink()
if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	self.RecoilToSpread = (self.FireMode == "auto") and self.RecoilToSpreadAuto or self.RecoilToSpreadSemi
	
	self.AlternativePos = (self.ActiveAttachments.doi_atow_onehand) and self.Alternative2Pos or self.Alternative1Pos
	self.AlternativeAng = (self.ActiveAttachments.doi_atow_onehand) and self.Alternative2Ang or self.Alternative1Ang
	
	self.Alternative1Pos = (self.ActiveAttachments.doi_atow_c96stock) and self.Alternative3Pos or self.Alternative4Pos
	self.Alternative1Ang = (self.ActiveAttachments.doi_atow_c96stock) and self.Alternative3Ang or self.Alternative4Ang
	
	self.SprintPos = (self.ActiveAttachments.doi_atow_c96stock) and self.Sprint2Pos or self.Sprint1Pos
	self.SprintAng = (self.ActiveAttachments.doi_atow_c96stock) and self.Sprint2Ang or self.Sprint1Ang
	
	if self.ActiveAttachments.doi_atow_c96stock then 
	--self.AimBreathingEnabled = true
	self.DisableSprintViewSimulation = false
	else
	--self.AimBreathingEnabled = false
	self.DisableSprintViewSimulation = true
	end
	
	self.EffectiveRange = 120 * 39.37
	self.DamageFallOff = .35
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 48 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .105))
end
	
	if self.ActiveAttachments.doi_atow_c96longbarrel then
	self.EffectiveRange = ((self.EffectiveRange + 15 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .13))
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


if CLIENT then
	SWEP.RoundBeltBoneNames = {
		"Strip_B_1",
		"Strip_B_2",
		"Strip_B_3",
		"Strip_B_4",
		"Strip_B_5",
		"Strip_B_6",
		"Strip_B_7",
		"Strip_B_8",
		"Strip_B_09",
		"Strip_B_10",
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.Sounds.base_reload_clip[3].callback = adjustMeshByMaxAmmo
	SWEP.Sounds.base_reload_empty_clip[1].callback = adjustMeshByMaxAmmo
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
