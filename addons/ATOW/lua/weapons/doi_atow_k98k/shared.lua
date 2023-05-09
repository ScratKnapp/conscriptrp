if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "K98k"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_k98")
	killicon.Add( "doi_atow_k98k", "vgui/inventory/killicons/weapon_k98", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_g3"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0
	
	SWEP.EffectiveRange_Orig = 400 * 39.37
	SWEP.DamageFallOff_Orig = .48 
	
	SWEP.Shell = "khr79257"
	SWEP.ShellScale = .4
	SWEP.ShellDelay = .79
	SWEP.ShellDelaySlow = .79
	SWEP.ShellDelayFast = .72
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 5.5, y = -2.75, z = .5}

	SWEP.IronsightPos = Vector(-2.5615, -4.25, 1.588)
	SWEP.IronsightAng = Vector(0.2652, 0.0073, 0)
	
	SWEP.ZF39Pos = Vector(-2.5664, -1.5, 0.3398)
	SWEP.ZF39Ang = Vector(0, 0, 0)
	
	SWEP.ZF4Pos = Vector(-2.1325, -4, 0.6)
	SWEP.ZF4Ang = Vector(0, 0, 0)
	
	SWEP.ZF41Pos = Vector(-2.183, -4, 0.6025)
	SWEP.ZF41Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8.5, -3, .5)
	SWEP.CustomizeAng = Vector(10, 45, 16)

	SWEP.AlternativePos = Vector(-0.75, -.25, -.3)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-55.8947, 55.0455, -16.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.BackupSights = {["doi_atow_zf39"] = {[1] = Vector(-2.5615, -3, 1.588), [2] = Vector(0.2652, 0.0073, 0)},["doi_atow_zf4"] = {[1] = Vector(-2.5615, -3, 1.588), [2] = Vector(0.2652, 0.0073, 0)},["doi_atow_zf41"] = {[1] = Vector(-2.5615, -3, 1.588), [2] = Vector(0.2652, 0.0073, 0)},}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1.1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .75
	SWEP.CustomizationMenuScale = 0.026 --  0.032
	
	SWEP.AttachmentModelsVM = {
	["doi_atow_zf41"] = {model = "models/khrcw2/doipack/attachments/kar98k1xscope.mdl", pos = Vector(2.15, 0, .05), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_zf4"] = {model = "models/khrcw2/doipack/attachments/kar98k1xscope.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_zf39"] = {model = "models/khrcw2/doipack/attachments/kar98k7xscope.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(2.4, 7, 4.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "K98"},
	}
	
	SWEP.ForegripOverridePos = {
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1, 0, -.05), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 3, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -8, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 4, 0) }},
}
	
	SWEP.M82AxisAlign = {right = 0, up = -.015, forward = 0}
	SWEP.M823AxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = .5, hor = 3, roll = 4, forward = 4, pitch = 3}
end
end

SWEP.SightBGs = {main = 4, off = 0, on = 1, on2 = 2}
SWEP.ShellsBGs = {main = 3, one = 4, two = 3, three = 2, four = 1, five = 0}

SWEP.MuzzleVelocity = 760

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true


SWEP.Attachments = {[1] = {header = "Reload", offset = {-150, 120}, atts = {"doi_atow_stripperclips"}, exclusions = {["doi_atow_zf39"] = true, ["doi_atow_zf4"] = true}},
[2] = {header = "Optic", offset = {250, -400}, atts = { "doi_atow_zf4", "doi_atow_zf39"}},
[4] = {header = "Finish", offset = {1050, -100}, atts = {"doi_atow_wornfinish"}},
[3] = {header = "Action", offset = {950, 240}, atts = {"doi_atow_greasedbolt"}},
["+attack2"] = {header = "Muzzle", offset = {0, 2000}, atts = {"doi_atow_unisuppressor"}, dependencies = {["doi_atow_greasedbolt"] = true}},
["+reload"] = {header = "Ammo", offset = {320, 200}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}

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
SWEP.ViewModel		= "models/khrcw2/doipack/kar98k.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_kar98k.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_kar98k.mdl"
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
SWEP.Primary.Ammo			= "7.62x51MM"
else
SWEP.Primary.Ammo			= "7.92x57MM"
end

SWEP.FireDelay = 60/43
SWEP.FireSound = "DOIK98_FIRE"
SWEP.FireSoundSuppressed = "DOIK98_FIRE_SUPPRESSED"
SWEP.Recoil = 1
 -- = 1

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.00077
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.23
SWEP.SpreadPerShot = 0.04
SWEP.SpreadCooldown = 0.12
SWEP.Shots = 1
SWEP.Damage = 85
SWEP.DeployTime = .485
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true
SWEP.GlobalDelayOnShoot = 60/43
SWEP.GlobalDelayOnShootSlow = 60/43
SWEP.GlobalDelayOnShootFast = 60/53
SWEP.Chamberable = false
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = false

SWEP.ReloadStartTime = 1.21
SWEP.InsertShellTime = 0.99
SWEP.ReloadFinishWait = 1.41

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 4.1
SWEP.ReloadTime_Empty = 2.5
SWEP.ReloadHalt_Empty = 4.1

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

if not self.ActiveAttachments.doi_atow_stripperclips then
	self.ShotgunReload = true
	end
	
		if self.ActiveAttachments.doi_atow_zf39 or self.ActiveAttachments.doi_atow_zf4 then
		self.AimBreathingEnabled = true
		else
		self.AimBreathingEnabled = false
		end
		
self.EffectiveRange = 400 * 39.37
	self.DamageFallOff = .48
		
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 160 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .144))
end
		
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 100 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .48))
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
		"K98_Bullet_1",
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.Sounds.base_reload_insert[1].callback = adjustMeshByMaxAmmo
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
