if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
		
		SWEP.magType = "arMag"
		CustomizableWeaponry.shells:addNew("khr30carbine", "models/khrcw2/doipack/shells/357mag.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1 Carbine"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m1a1")
	killicon.Add( "doi_atow_m1carbine", "vgui/inventory/killicons/weapon_m1a1", Color(255, 80, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 145 * 39.37
	SWEP.DamageFallOff_Orig = .4
	
	SWEP.Shell = "khr30carbine"
	SWEP.ShellScale = .52
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4.25, y = -3, z = .5}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.7
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.5
	
	SWEP.IronsightPos = Vector(-2.4773, -3, 1.2686)
	SWEP.IronsightAng = Vector(0, 0.0355, 0)
	
	SWEP.AltIronPos = Vector(-2.4768, -3, 1.1628)
	SWEP.AltIronAng = Vector(0.2625, 0.0213, 0)
	
	SWEP.LymanPos = Vector(-1.4022, -3.5, 1.1298)
	SWEP.LymanAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)

	SWEP.AlternativePos = Vector(-0.7, 1, -0.5)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.KobraPos = Vector(-2.47, -7.5, -.025)
	SWEP.KobraAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.4643, -8, -0.08)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.Aimpoint2xPos = Vector(-2.4643, -8, -0.08)
	SWEP.Aimpoint2xAng = Vector(0, 0, 0)

	SWEP.M40Pos = Vector(-2.4804, -7, -0.138)
	SWEP.M40Ang = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.4643, -7.5, -.23)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.471, -7, -0.35)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.PO424Pos = Vector(-2.415, -8, 0.112)
	SWEP.PO424Ang = Vector(0, 0, 0)

	SWEP.ElcanPos = Vector(-2.47, -7, -0.35)
	SWEP.ElcanAng = Vector(0, 0, 0)

	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, 35.0455, -25.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 40, 18)
	
	SWEP.BackupSights = {["doi_atow_lymanm82"] = {[1] = Vector(-2.4768, -2.5, 1.1628), [2] = Vector(0, 0.0355, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.472, -7, -1.236), [2] = Vector(-0.4, 0, 0)}}

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .85
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.CustomizationMenuScale = 0.02 --  0.024
	
		SWEP.ForeGripHoldPos = {
	["L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 21.111, 0) },
	["L Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.444, -5.111, 0) },
	["L Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.444, 5.111, 10) },
	["L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.444, 25.111, 10) },
	["L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5.444, 50.111, 10) },
	["L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.444, 0.111, 10) },
	["L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(4.444, 35.111, 30) },
	["L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.444, 15.111, 30) },
	["L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-18.889, 25.555, 0) },
	["L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.888, -10, 65.555) },
	["L ForeTwist2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 20.777) },
	["L ForeTwist4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -10.777) },
	["L ForeTwist3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 30.777) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.888, 16.666, 3.332) },
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(.9, -0.04, -1.356), angle = Angle(0, 0, 0) }
}
	
	SWEP.AttachmentModelsVM = {
	["doi_atow_lymanm82"] = {model = "models/khrcw2/doipack/attachments/garandscope.mdl", pos = Vector(-0.5, 0.18, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_unisuppressor"] = {model = "models/khrcw2/doipack/attachments/m3a1suppressor.mdl", pos = Vector(2.02, 2.45, 4.25), angle = Angle(0, -90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Weapon"},
	["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(0.835, 0.835, 0.835), bone = "A_Optic", adjustment = {axis = "x", min = 6.4, max = 10, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(0.85, 0.85, 0.85), bone = "A_Optic", adjustment = {axis = "x", min = 5.85, max = 11, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(0.85, 0.85, 0.85), bone = "A_Optic", adjustment = {axis = "x", min = 6.45, max = 10.25, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_rail"] = {model = "models/khrcw2/ins2pack/attachments/rails/rail2.mdl", pos = Vector(12.75, 1.025, 0), angle = Angle(0, 0, -90), size = Vector(1.575, 1.25, 1.25), bone = "A_Optic", material = ""},
	["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.4, -9.55, -1.7628), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7), bone = "Weapon", material = ""},
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", bone = "A_Optic", rel = "", pos = Vector(7.75, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), adjustment = {axis = "x", min = 6.85, max = 9.5, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2kobra"] = {model = "models/khrcw2/ins2pack/attachments/ins2kobra.mdl", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "A_Optic", adjustment = {axis = "x", min = 6, max = 10.5, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(0.835, 0.835, 0.835), bone = "A_Optic", adjustment = {axis = "x", min = 6.8, max = 9.9, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2po424p"] = {model = "models/khrcw2/ins2pack/attachments/ins2po424p.mdl", bone = "A_Optic", rel = "", pos = Vector(8, -0.45, 0), angle = Angle(0, 0, -90), size = Vector(0.78, 0.78, 0.78), color = Color(255, 255, 255, 255), adjustment = {axis = "x", min = 6.45, max = 10.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2m40tac"] = {model = "models/khrcw2/ins2pack/attachments/ins2m40tac.mdl", bone = "A_Optic", rel = "", pos = Vector(8, -0.4, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), adjustment = {axis = "x", min = 6.75, max = 10, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.ForegripOverridePos = {
	["nah"] = {
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 2, -10) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -15, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 3, 0) }},
}
	
	SWEP.M82AxisAlign = {right = 0, up = -.02, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = -.04, forward = 0}
	SWEP.PO42PAxisAlign = {right = .075, up = -.03, forward = 0}
	SWEP.AP2XAxisAlign = {right = .075, up = -.055, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .15, roll = .25, forward = 0, pitch = .1}
end
end

SWEP.MuzzleVelocity = 600

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

SWEP.SightBGs = {main = 2, off = 0, on = 1}
SWEP.MagBGs = {main = 3, fifteen = 0, thirty = 1}
SWEP.SlingBGs = {main = 4, off = 0, on = 1}

if CustomizableWeaponry_atowins2_optics then
	SWEP.Attachments = {[4] = {header = "Optic", offset = {550, -350}, atts = {"md_ins2kobra","md_ins2eotech552","md_ins2aimpoint","md_ins2aimpoint2x","md_ins2elcan","md_ins2po424p","md_ins2wsacog","doi_atow_lymanm82","md_ins2m40tac"}},
	[5] = {header = "Sight", offset = {1100, 125}, atts = {"doi_atow_altsight"}},
	[2] = {header = "Conversion", offset = {-50, -425}, atts = {"doi_atow_m2carbineconv"}, exclusions = {["am_atow_riot"] = true}},
	[3] = {header = "Magazine", offset = {475, 300}, atts = {"doi_atow_m1carbine30rnd"}, exclusions = {["am_atow_riot"] = true}},
	[1] = {header = "Accessory", offset = {-400, -200}, atts = {"doi_atow_sling"}},
	["+walk"] = {header = "quit peeping", offset = {0, 2000}, atts = {"doi_atow_unisuppressor"}},
	["+reload"] = {header = "Ammo", offset = {-250, 150}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	else
	SWEP.Attachments = {[4] = {header = "Optic", offset = {550, -350}, atts = {"doi_atow_lymanm82"}},
	[5] = {header = "Sight", offset = {1100, 125}, atts = {"doi_atow_altsight"}},
	[2] = {header = "Conversion", offset = {-50, -425}, atts = {"doi_atow_m2carbineconv"}, exclusions = {["am_atow_riot"] = true}},
	[3] = {header = "Magazine", offset = {475, 300}, atts = {"doi_atow_m1carbine30rnd"}, exclusions = {["am_atow_riot"] = true}},
	[1] = {header = "Accessory", offset = {-400, -200}, atts = {"doi_atow_sling"}},
	["+walk"] = {header = "quit peeping", offset = {0, 2000}, atts = {"doi_atow_unisuppressor"}},
	["+reload"] = {header = "Ammo", offset = {-250, 150}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
	end

SWEP.Animations = {fire = {"base_fire"},
	fire_aim = {"iron_fire_1"},
	reload = "base_reload",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}

SWEP.SpeedDec = 20

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 63
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/m1carbine.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m1carbine.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m1carbine.mdl"
SWEP.WMPos = Vector(-1.25, 4.5, .25)
SWEP.WMAng = Vector(-8, 3, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = 0
SWEP.RVBRollMod = .5

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 15
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true
if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= "5.56x45MM"
else
SWEP.Primary.Ammo			= ".30 Carbine"
end


SWEP.FireDelay = 60/500
SWEP.FireSound = "DOIM1A1CAR_FIRE"
SWEP.FireSoundSuppressed = "DOIM1A1CAR_FIRE_SUPPRESSED"
SWEP.Recoil = 1.3
 -- = 1.1

SWEP.HipSpread = 0.055
SWEP.AimSpread = 0.0055
SWEP.VelocitySensitivity = .5
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.012
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = .525
SWEP.HolsterTime = .5

SWEP.ADSFireAnim = true
SWEP.RecoilToSpread = 0
SWEP.RecoilToSpreadAuto = 1.1
SWEP.RecoilToSpreadSemi = 0

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 3.6
SWEP.ReloadHalt_Empty = 4.3

function SWEP:IndividualThink()
	self.RecoilToSpread = (self.FireMode == "auto") and self.RecoilToSpreadAuto or self.RecoilToSpreadSemi
	
	if self.FireMode == "semi" then
	self.Owner.ViewAff = 0
	end
	
	if self.ActiveAttachments.doi_atow_altsight then
	self.BackupSights = {["doi_atow_lymanm82"] = {[1] = Vector(-2.4768, -2.5, 1.1628), [2] = Vector(0, 0.0355, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.472, -7, -1.323), [2] = Vector(-0.4, 0, 0)}}
	else
	self.BackupSights = {["doi_atow_lymanm82"] = {[1] = Vector(-2.4773, -2.5, 1.2686), [2] = Vector(0.2625, 0.0213, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.472, -7, -1.323), [2] = Vector(-0.4, 0, 0)}}
	end
	
	if self.dt.BipodDeployed then return
	else
		self.ForegripOverride = true
		self.ForegripParent = "nah"
	end
	
	self.EffectiveRange = 145 * 39.37
	self.DamageFallOff = .4
	
		if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 72 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .12))
end
	if self.ActiveAttachments.am_atow_riot then
	self.EffectiveRange = ((self.EffectiveRange - 60 * 39.37))
end
	
	if self.ActiveAttachments.doi_atow_unisuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 12 * 39.37))
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