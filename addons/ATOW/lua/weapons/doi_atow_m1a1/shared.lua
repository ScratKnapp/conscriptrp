if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1A1" 
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_thompson_m1a1")
	killicon.Add( "doi_atow_m1a1", "vgui/inventory/killicons/weapon_thompson_m1a1", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 130 * 39.37
	SWEP.DamageFallOff_Orig = .67
	
	SWEP.Shell = "khr9x19"
	SWEP.ShellScale = .6
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3.55, y = -3, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .83
	SWEP.ForeGripOffsetCycle_Reload_Empty = .83

	SWEP.IronsightPos = Vector(-2.245, -2.5, 0.831)
	SWEP.IronsightAng = Vector(0.56, 0.056, 0)
	
	SWEP.KobraPos = Vector(-2.245, -4, 0.07)
	SWEP.KobraAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.245, -4, -.1)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.245, -5, -.065)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.Aimpoint2xPos = Vector(-2.25, -4, -.065)
	SWEP.Aimpoint2xAng = Vector(0, 0, 0)
	
	SWEP.ElcanPos = Vector(-2.26, -4, -0.29)
	SWEP.ElcanAng = Vector(0, 0, 0)
	
	SWEP.PO424Pos = Vector(-2.2065, -4, 0.18)
	SWEP.PO424Ang = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.261, -4, -0.175)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.AltIronPos = Vector(-2.245, -2, 0.831)
	SWEP.AltIronAng = Vector(0.56, 0.056, 0)
	
	SWEP.SightBackUpPos = Vector(-2.245, -2, 1.0881)
	SWEP.SightBackUpAng = Vector(-0.1194, 0.019, 0)
	
	SWEP.CustomizePos = Vector(10, -4, -2)
	SWEP.CustomizeAng = Vector(20, 40, 15)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)

	SWEP.AlternativePos = Vector(-.6, -1.2, -0.35)
	SWEP.AlternativeAng = Vector(0.1611, 0.0052, 0)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 35.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, -2, -4.5)
	SWEP.ProneAng = Vector(-10, 32.7368, -50.9474)
	
	SWEP.BackupSights = {{[1] = Vector(-2.2506, -2, 1.0881), [2] = Vector(-0.1194, 0.019, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.26, -2, -1.339), [2] = Vector(-.4, 0, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .9
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.02 --  0.022
	
	SWEP.AttachmentModelsVM = {["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(-.01, -.25, 4), angle = Angle(90, 0, -90), size = Vector(0.74, 0.74, 0.74), bone = "A_Optic", adjustment = {axis = "z", min = 2.2, max = 7.5, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(.005, -.235, 4), angle = Angle(90, 0, -90), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 1.9, max = 8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(.005, -.235, 4), angle = Angle(90, 0, -90), size = Vector(0.85, 0.85, 0.85), bone = "A_Optic", adjustment = {axis = "z", min = 2.5, max = 7.25, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_rail"] = {model = "models/khrcw2/ins2pack/attachments/rails/rail2.mdl", bone = "A_Optic", rel = "", pos = Vector(0.0035, 1.06 , 10), angle = Angle(90, 0, -90), size = Vector(1.8, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.4, -9.55, -1.7628), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7), bone = "Weapon", material = ""},
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", bone = "A_Optic", rel = "", pos = Vector(-.01, -.2, 4), angle = Angle(90, 0, -90), size = Vector(.91, .91, .91), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 2.85, max = 7, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2kobra"] = {model = "models/khrcw2/ins2pack/attachments/ins2kobra.mdl", bone = "A_Optic", rel = "", pos = Vector(-.008, -.23, 4), angle = Angle(90, 0, -90), size = Vector(.915, .915, .915), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 2.6, max = 8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(-.01, -.25, 4), angle = Angle(90, 0, -90), size = Vector(0.85, 0.805, 0.805), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 3, max = 7, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2po424p"] = {model = "models/khrcw2/ins2pack/attachments/ins2po424p.mdl", bone = "A_Optic", rel = "", pos = Vector(-.01, -.25, 5), angle = Angle(90, 0, -90), size = Vector(0.77, 0.77, 0.77), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 2.5, max = 7.25, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/unisuppressor.mdl", pos = Vector(-.25, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.2, 1, 1), bone = "A_Muzzle"}}
	
SWEP.ForegripOverridePos = {
	["foregrip"] = {
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 14.444, 0) },
	["L ForeTwist2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 18.332) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(.9, .12, -.5), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12.666, -12.111, 75.111) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.557, 5.556, 16.666) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.333, 10, 1.11) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 58.888, 0) },
	["L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 36.666, 0) },
	["L Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 7.777, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 45.555, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 16.666, 0) },
	["L ForeTwist4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 15) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 5) },
	["L Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 5) },
	["L ForeTwist1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 12) },
	["L ForeTwist5"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 12) }},
	
	["nah"] = {
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-.25, 0, 0), angle = Angle(0, 0, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3, -5, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 2, 0) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 5, 0) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L ForeTwist3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
}
	
	SWEP.AP2XAxisAlign = {right = .025, up = .05, forward = 0}
	SWEP.PO42PAxisAlign = {right = .105, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = .02, up = 0, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = .4, forward = .25, pitch = -.05}
	SWEP.Trivia = {text = "Double-tap the USE key [E] while aiming to alternate sight alignment.", x = -300, y = -420, textFormatFunc = function(self, wep) if CustomizableWeaponry_atowins2_optics then return "" else return self.text end end}
end
end

SWEP.MuzzleVelocity = 250

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true
--SWEP.AimBreathingIntensity = .75

SWEP.BodyBGs = {main = 2, off = 0, on = 1}
SWEP.SightBGs = {main = 3, off = 0, on = 1}
SWEP.SlingBGs = {main = 4, off = 0, on = 1}
SWEP.GripBGs = {main = 5, off = 0, on = 1}
SWEP.MagBGs = {main = 6, twenty = 0, thirty = 1}

if CustomizableWeaponry_atowins2_optics then
SWEP.Attachments = {[2] = {header = "Grip", offset = {-550, 100}, atts = {"doi_atow_m1928grip"}},
[3] = {header = "Magazine", offset = {-150, 30}, atts = {"doi_atow_thompson30rnd"}, exclusions = {["am_atow_riot"] = true}},
[4] = {header = "Optic", offset = {150, -425}, atts = {"doi_atow_altsight","md_ins2kobra","md_ins2eotech552","md_ins2aimpoint","md_ins2aimpoint2x","md_ins2elcan","md_ins2po424p","md_ins2wsacog"}},
[1] = {header = "Muzzle", offset = {-600, -350}, atts = {"doi_atow_thompsonrc","doi_atow_unisuppressor"}},
[5] = {header = "Accessory", offset = {750, 0}, atts = {"doi_atow_sling"}},
["+reload"] = {header = "Ammo", offset = {450, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}
else
SWEP.Attachments = {[2] = {header = "Grip", offset = {200, -350}, atts = {"doi_atow_m1928grip"}},
[3] = {header = "Magazine", offset = {150, 250}, atts = {"doi_atow_thompson30rnd"}, exclusions = {["am_atow_riot"] = true}},
[4] = {header = "Sight", offset = {900, -50}, atts = {"doi_atow_altsight"}},
[1] = {header = "Muzzle", offset = {-450, -300}, atts = {"doi_atow_thompsonrc","doi_atow_unisuppressor"}},
["+reload"] = {header = "Ammo", offset = {-435, 100}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy"}}}
end

SWEP.Animations = {fire = {"base_fire","base_fire_2","base_fire_3"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reload",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.SpeedDec = 25

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
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
SWEP.AimViewModelFOV = 64
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/thompsonm1a1.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_thompsonm1a1.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_thompsonm1a1.mdl"
SWEP.WMPos = Vector(-.9, 4, 1.5)
SWEP.WMAng = Vector(-10, 1, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .4
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= true
SWEP.Chamberable			= false

--if CustomizableWeaponry_doi_atow_hl2ammo then
--SWEP.Primary.Ammo			= "SMG1"
--else
SWEP.Primary.Ammo			= ".45 ACP"
--end

SWEP.FireDelay = 60/750
SWEP.FireSound = "DOITHOM1928_FIRE"
SWEP.FireSoundSuppressed = "DOITHOM1928_FIRE_SUPPRESSED"
SWEP.Recoil = 1.55



SWEP.HipSpread = 0.056
SWEP.AimSpread = 0.014
SWEP.VelocitySensitivity = .4
SWEP.MaxSpreadInc = 0.043
SWEP.SpreadPerShot = 0.013
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 21
SWEP.DeployTime = .462
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true

SWEP.RecoilToSpread = .4

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.4
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 2.4
SWEP.ReloadHalt_Empty = 3

function SWEP:IndividualThink()
	
	if not self.ActiveAttachments.doi_atow_m1928grip then
		self.ForegripOverride = true
		self.ForegripParent = "nah"
	end
	
if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	self.EffectiveRange = 130 * 39.37
	self.DamageFallOff = .67
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 65 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .201))
end
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 5 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .15))
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

