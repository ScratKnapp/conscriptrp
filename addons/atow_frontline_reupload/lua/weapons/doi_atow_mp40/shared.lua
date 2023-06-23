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
	SWEP.PrintName = "MP40"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_mp40")
	killicon.Add( "doi_atow_mp40", "vgui/inventory/killicons/weapon_mp40", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 110 * 39.37
	SWEP.DamageFallOff_Orig = .35
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = .75
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3.25, y = -4, z = -.5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .72
	SWEP.ForeGripOffsetCycle_Reload_Empty = .85

	SWEP.IronsightPos = Vector(-2.5062, -3, 0.5482)
	SWEP.IronsightAng = Vector(0.2105, 0.0425, 0)

	SWEP.ZF4Pos = Vector(-2.6412, -2.5, -0.2323)
	SWEP.ZF4Ang = Vector(0, 0.0186, 0)
	
	SWEP.KobraPos = Vector(-2.48, -3, -.35)
	SWEP.KobraAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.5062, -3, -.54)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.507, -3, -.48)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.Aimpoint2xPos = Vector(-2.52, -3, -.5)
	SWEP.Aimpoint2xAng = Vector(0, 0, 0)
	
	SWEP.ElcanPos = Vector(-2.5125, -3, -0.79)
	SWEP.ElcanAng = Vector(0, 0, 0)
	
	SWEP.PO424Pos = Vector(-2.456, -3, -0.215)
	SWEP.PO424Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.4945, -3, -0.56)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)
	
	SWEP.CustomizePos = Vector(9, -4, -2.5)
	SWEP.CustomizeAng = Vector(20, 40, 15)

	SWEP.AlternativePos = Vector(-0.55, 0, -0.84)
	SWEP.AlternativeAng = Vector(0.2105, 0.0425, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 45.0455, 15.2273)
	
	SWEP.PronePos = Vector(0, 0, -5.1579)
	SWEP.ProneAng = Vector(-10, 32.7368, -50.9474)
	
	SWEP.BackupSights = {["doi_atow_zf4"] = {[1] = Vector(-2.5062, -2, 0.5482), [2] = Vector(0.2105, 0.0425, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.26, -2, -1.339), [2] = Vector(-.4, 0, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .9
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.021 --  0.025
	
	SWEP.AttachmentModelsVM = {
	["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(.01, 4, 2.435), angle = Angle(0, -90, 0), size = Vector(0.725, 0.725, 0.725), bone = "Weapon", adjustment = {axis = "y", min = .45, max = 5.4, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", bone = "Weapon", rel = "", pos = Vector(-.0125, 4, 2.4475), angle = Angle(0, -90, 0), size = Vector(0.845, 0.845, 0.845), color = Color(255, 255, 255, 255), adjustment = {axis = "y", min = .125, max = 5.7, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(-.025, 5, 2.45), angle = Angle(0, -90, 0), size = Vector(0.845, 0.845, 0.845), bone = "Weapon", adjustment = {axis = "y", min = .8, max = 5.25, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_rail"] = {model = "models/khrcw2/ins2pack/attachments/rails/rail2.mdl", bone = "Weapon", rel = "", pos = Vector(0.0075, 7.7 , 1.1), angle = Angle(0, -90, 0), size = Vector(1.7, 1.15, 1.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.4, -9.55, -1.7628), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7), bone = "Weapon", material = ""},
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", bone = "Weapon", rel = "", pos = Vector(0, 4, 2.4225), angle = Angle(0, -90, 0), size = Vector(.915, .915, .915), color = Color(255, 255, 255, 255), adjustment = {axis = "y", min = 1.05, max = 4.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2kobra"] = {model = "models/khrcw2/ins2pack/attachments/ins2kobra.mdl", bone = "Weapon", rel = "", pos = Vector(0.0125, 4, 2.44), angle = Angle(0, -90, 0), size = Vector(.91, .91, .91), color = Color(255, 255, 255, 255), adjustment = {axis = "y", min = .15, max = 5.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", bone = "Weapon", rel = "", pos = Vector(-.01, 4.5, 2.57), angle = Angle(0, -90, 0), size = Vector(0.78, 0.78, 0.78), color = Color(255, 255, 255, 255), adjustment = {axis = "y", min = .8, max = 4.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2po424p"] = {model = "models/khrcw2/ins2pack/attachments/ins2po424p.mdl", bone = "Weapon", rel = "", pos = Vector(-.005, 4, 2.45), angle = Angle(0, -90, 0), size = Vector(0.745, 0.745, 0.745), color = Color(255, 255, 255, 255), adjustment = {axis = "y", min = .7, max = 5.4, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["doi_atow_zf4"] = {model = "models/khrcw2/doipack/attachments/zf4scope.mdl", pos = Vector(.2, 0.1041, 3.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "Weapon"},
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(.02, 18.3, 1.53), angle = Angle(0, -90, 0), size = Vector(1.15, 1.15, 1.15), bone = "Weapon"}
	}
	
	SWEP.ForegripOverridePos = {
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-.45, -1.25, .75), angle = Angle(5, 5, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-1, 6, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
}

	SWEP.M823AxisAlign = {right = .02, up = -.015, forward = 0}
	SWEP.AP2XAxisAlign = {right = .025, up = .05, forward = 0}
	SWEP.PO42PAxisAlign = {right = .105, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = .02, up = 0, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = .25, forward = .5, pitch = 0}
end
end

SWEP.ReloadViewBobEnabled = true

SWEP.MuzzleVelocity = 365

SWEP.SlingBGs = {main = 2, off = 0, on = 1}

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .75

if CustomizableWeaponry_atowins2_optics then
SWEP.Attachments = {[2] = {header = "Accessory", offset = {-350, 160}, atts = {"doi_atow_sling"}},
[5] = {header = "Finish", offset = {900, -50}, atts = {"doi_atow_normandycamo"}},
[4] = {header = "Optic", offset = {450, -450}, atts = {"md_ins2kobra","md_ins2eotech552","md_ins2aimpoint","md_ins2aimpoint2x","md_ins2elcan","doi_atow_zf4","md_ins2po424p","md_ins2wsacog"}},
[1] = {header = "Muzzle", offset = {-500, -350}, atts = {"doi_atow_unisuppressor"}},
[3] = {header = "Fire Control", offset = {50, -300}, atts = {"doi_atow_burstconv"}},
["+reload"] = {header = "Ammo", offset = {150, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}
else
SWEP.Attachments = {[2] = {header = "Accessory", offset = {-350, 160}, atts = {"doi_atow_sling"}},
[4] = {header = "Finish", offset = {700, -400}, atts = {"doi_atow_normandycamo"}},
[5] = {header = "Optic", offset = {900, -50}, atts = {"doi_atow_zf4"}},
[1] = {header = "Muzzle", offset = {-450, -350}, atts = {"doi_atow_unisuppressor"}},
[3] = {header = "Fire Control", offset = {150, -350}, atts = {"doi_atow_burstconv"}},
["+reload"] = {header = "Ammo", offset = {150, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}
end

SWEP.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_a"},
	fire_last = {"base_firelast"},
	fire_last_aim = {"base_firelast"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 20

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
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
SWEP.AimViewModelFOV = 65
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/mp40.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_mp40.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_mp40.mdl"
SWEP.WMPos = Vector(-1.5, 3.75, 1)
SWEP.WMAng = Vector(-5, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = 1
SWEP.RVBYawMod = 1
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 32
SWEP.Primary.Automatic		= true
SWEP.Chamberable			= false

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= "9x19MM"
--else
SWEP.Primary.Ammo			= "9x19MM"
--end

SWEP.FireDelay = 60/535
SWEP.FireSound = "DOIMP40_FIRE"
SWEP.FireSoundSuppressed = "DOIMP40_FIRE_SUPPRESSED"
SWEP.Recoil = 1.2
 -- = .6

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = .35
SWEP.MaxSpreadInc = 0.042
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = .5
SWEP.HolsterTime = .5

SWEP.ADSFireAnim = true

SWEP.RecoilToSpread = .8

SWEP.ReloadSpeed = 1.1
SWEP.ReloadTime = 2.225
SWEP.ReloadHalt = 2.8
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt_Empty = 4.4

function SWEP:IndividualThink()

	if self.dt.BipodDeployed then
		self.ForegripOverride = true
		self.ForegripParent = "bipod"
	else
		self.ForegripOverride = true
		self.ForegripParent = "nah"
	end
	
	self.EffectiveRange = 110 * 39.37
	self.DamageFallOff = .35
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 45 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .105))
end
	
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 10 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .13))
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