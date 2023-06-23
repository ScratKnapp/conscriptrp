if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
	
	SWEP.magType = "srMag"
	CustomizableWeaponry.shells:addNew("khr3006", "models/khrcw2/doipack/shells/30-06.mdl", "CW_SHELL_MAIN")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M1 Garand"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.HUD_MagText = "CLIP: "
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m1garand")
	killicon.Add( "doi_atow_m1garand", "vgui/inventory/killicons/weapon_m1garand", Color(255, 0, 0, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m14"
	SWEP.PosBasedMuz = true
	SWEP.SightWithRail = true
	
	SWEP.EffectiveRange_Orig = 400 * 39.37
	SWEP.DamageFallOff_Orig = .4
	
	SWEP.Shell = "khr3006"
	SWEP.ShellScale = .7
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = -2.25, z = -.4}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.28
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0

	SWEP.IronsightPos = Vector(-2.4643, -3, 1.14)
	SWEP.IronsightAng = Vector(-0.4782, 0.055, 0)
	
	SWEP.AltIronPos = Vector(-2.4643, -3, 1.14)
	SWEP.AltIronAng = Vector(-0.4782, 0.055, 0)
	
	SWEP.LymanxPos = Vector(-1.3779, -3, 0.7695)
	SWEP.LymanxAng = Vector(0, 0, 0)
	
	SWEP.LymanPos = Vector(-1.3779, -4, 0.7695)
	SWEP.LymanAng = Vector(0, 0, 0)

	SWEP.KobraPos = Vector(-2.45, -7.5, 0.2)
	SWEP.KobraAng = Vector(-0.4782, 0.006, 0)

	SWEP.EoTechPos = Vector(-2.4643, -7.5, -.05)
	SWEP.EoTechAng = Vector(-0.4782, 0.006, 0)

	SWEP.ACOGPos = Vector(-2.456, -9, -0.212)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.PO424Pos = Vector(-2.406, -8, 0.2075)
	SWEP.PO424Ang = Vector(0, 0, 0)

	SWEP.ElcanPos = Vector(-2.465, -8, -0.28)
	SWEP.ElcanAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.4643, -8, 0.01)
	SWEP.AimpointAng = Vector(-0.4782, 0.006, 0)
	
	SWEP.Aimpoint2xPos = Vector(-2.4643, -8, -0.05)
	SWEP.Aimpoint2xAng = Vector(-0.4782, 0.006, 0)
	
	SWEP.M40Pos = Vector(-2.475, -7, 0.035)
	SWEP.M40Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, 0)
	SWEP.SprintAng = Vector(-15.478, 20.96, 0)
	
	SWEP.CustomizePos = Vector(8, -2, .5)
	SWEP.CustomizeAng = Vector(10, 40, 18)
	
	SWEP.AlternativePos = Vector(-0.5, -.25, -0.3)
	SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-50.8947, -2.0455, -15.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.BackupSights = {["doi_atow_lymanm82"] = {[1] = Vector(-2.4643, -2, 1.14), [2] = Vector(-0.4782, 0.055, 0)},
	["md_ins2elcan"] = {[1] = Vector(-2.4667, -7, -1.153), [2] = Vector(-0.4, 0, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = .95
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1 -- 1 --  1 --  .75
	SWEP.CustomizationMenuScale = 0.025 --  0.03
	
	
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

	SWEP.ForegripOverridePos = {
	["bipod"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 20, -30), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }},
	
	["nah"] = {
	["L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.5, 0, 0), angle = Angle(0, 0, 0) },
	["L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 1, 0) },
	["L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -2, 0) },
	["L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -2, 0) }},
}

	SWEP.AttachmentPosDependency = {
		["ins2_atow_riflesuppressor"] = {
			["doi_atow_garandtanker"] = Vector(-0.036, 12.05, 2.39),
		},
		["ins2_atow_clamplaser"] = {
			["doi_atow_garandtanker"] = Vector(-2.28, -8, 4.12)
		},
	}

	SWEP.AttachmentModelsVM = {
	["doi_atow_lymanm82"] = {model = "models/khrcw2/doipack/attachments/garandscope.mdl", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), bone = "A_Optic"},
	["doi_atow_lymanm82x"] = {model = "models/khrcw2/doipack/attachments/garandscope.mdl", pos = Vector(0, 0, 0), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), bone = "A_Optic"},
	["ins2_atow_clamplaser"] = {model = "models/khrcw2/ins2pack/attachments/lasers/laserrifle.mdl", pos = Vector(-2.28, -1.32, 4.12), angle = Angle(0, -90, 90), size = Vector(0.8, 1, 1), bone = "Weapon"},
	["ins2_atow_tacbipod"] = {model = "models/khrcw2/ins2pack/attachments/bipod/m14bipod.mdl", pos = Vector(1.95, -10.6, 4.69), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Weapon"},
	["ins2_atow_riflesuppressor"] = {model = "models/khrcw2/ins2pack/attachments/suppressors/suppressorrifle.mdl", pos = Vector(-0.036, 18.733, 2.39), angle = Angle(0, -90, 0), size = Vector(1.25, 0.85, 0.85), bone = "Weapon"},
	["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(0.01, 0.06, 8.831), angle = Angle(90, 0, 90), size = Vector(0.85, 0.85, 0.85), bone = "A_Optic", adjustment = {axis = "z", min = 7.8, max = 11.8, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", bone = "A_Optic", rel = "", pos = Vector(0.02, 0.1, 8.831), angle = Angle(90, 0, 90), size = Vector(0.94, 0.94, 0.94), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 6.5, max = 12.4, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(0.02, 0.1, 8.6), angle = Angle(90, 0, 90), size = Vector(0.94, 0.94, 0.94), bone = "A_Optic", adjustment = {axis = "z", min = 7.1, max = 11.963, inverse = true, inverseOffsetCalc = false}, material = ""},
	["md_rail"] = {model = "models/khrcw2/ins2pack/attachments/rails/rail2.mdl", bone = "A_Optic", rel = "", pos = Vector(0.0075, -1.3 , 15.2), angle = Angle(90, 0, 90), size = Vector(2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.4, -9.55, -1.7628), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7), bone = "Weapon", material = ""},
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", bone = "A_Optic", rel = "", pos = Vector(0.015, 0.078, 8.831), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 7.4, max = 11.2, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2kobra"] = {model = "models/khrcw2/ins2pack/attachments/ins2kobra.mdl", bone = "A_Optic", rel = "", pos = Vector(0.010, 0.078, 8.831), angle = Angle(90, 0, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 7.4, max = 12.5, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", bone = "A_Optic", rel = "", pos = Vector(0.02, 0.078, 8.831), angle = Angle(90, 0, 90), size = Vector(0.88, 0.88, 0.88), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 8, max = 11.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2po424p"] = {model = "models/khrcw2/ins2pack/attachments/ins2po424p.mdl", bone = "A_Optic", rel = "", pos = Vector(0.0200, 0.0888, 8.831), angle = Angle(90, 0, 90), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 8.2, max = 11.8, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2m40tac"] = {model = "models/khrcw2/ins2pack/attachments/ins2m40tac.mdl", bone = "A_Optic", rel = "", pos = Vector(0.02, 0.078, 8.831), angle = Angle(90, 0, 90), size = Vector(0.975, 0.975, 0.975), color = Color(255, 255, 255, 255), adjustment = {axis = "z", min = 8.4, max = 11.5, inverse = true, inverseOffsetCalc = false}, surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	
	SWEP.M82AxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.AP2XAxisAlign = {right = .5, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = .015, up = 0, forward = 0}
	SWEP.PO42PAxisAlign = {right = .1, up = 0, forward = 0}
	SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = .05, roll = .35, forward = 0, pitch = 0}
	
	SWEP.LaserPosAdjust = Vector(3.4, 10, -2.2)
	SWEP.LaserAngAdjust = Angle(0, 0, 0)
end
end

SWEP.BodyBGs = {main = 1, rifle = 0, carbine = 1}
SWEP.SlingBGs = {main = 4, off = 0, on = 1}
SWEP.SightBGs = {main = 2, off = 0, on = 1}
SWEP.MuzzleVelocity = 855

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = true
SWEP.CanRestOnObjects = true
--SWEP.AimBreathingEnabled = true

if CustomizableWeaponry_atowins2_optics then
SWEP.Attachments = {[5] = {header = "Optic", offset = {550, -500}, atts = {"md_ins2kobra","md_ins2eotech552","md_ins2aimpoint","md_ins2aimpoint2x","md_ins2elcan","md_ins2po424p","md_ins2wsacog","doi_atow_lymanm82","md_ins2m40tac"}},
[7] = {header = "Sight", offset = {1300, 90}, atts = {"doi_atow_altsight"}},
[4] = {header = "Model", offset = {200, 225}, atts = {"doi_atow_garandtanker"}},
[6] = {header = "Finish", offset = {650, -100}, atts = {"doi_atow_modernfinish", "doi_atow_wornfinish"}},
[1] = {header = "Muzzle", offset = {-420, -400}, atts = {"ins2_atow_riflesuppressor"}},
[2] = {header = "Underbarrel", offset = {-400, 50}, atts = {"ins2_atow_clamplaser"}},
[3] = {header = "Accessory", offset = {20, -475}, atts = {"doi_atow_sling", "md_foregrip","ins2_atow_tacbipod"}},
["+reload"] = {header = "Ammo", offset = {800, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
else
SWEP.Attachments = {[3] = {header = "Optic", offset = {600, -325}, atts = {"doi_atow_lymanm82"}},
[5] = {header = "Sight", offset = {1200, 50}, atts = {"doi_atow_altsight"}},
[1] = {header = "Model", offset = {-300, -400}, atts = {"doi_atow_garandtanker"}},
[4] = {header = "Finish", offset = {950, 400}, atts = {"doi_atow_wornfinish"}},
[2] = {header = "Accessory", offset = {-250, 200}, atts = {"doi_atow_sling"}},
["+reload"] = {header = "Ammo", offset = {300, 250}, atts = {"am_atow_light", "am_atow_lowvel", "am_atow_heavy", "am_atow_ap"}}}
end

SWEP.AttachmentExclusions = {
["ins2_atow_tacbipod"] = {"doi_atow_garandtanker"}
}

SWEP.Animations = {fire = {"base_fire_1","base_fire_2"},
	fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3"},
	fire_last = {"base_fire_last"},
	fire_last_aim = {"iron_fire_last"},
	reload = "base_reloadfull",
	reload_empty = "base_reloadempty",
	idle = "base_idle",
	draw = "base_draw"}
	

SWEP.SpeedDec = 50

SWEP.Slot = 3
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
SWEP.AimViewModelFOV = 61
SWEP.ZoomAmount = 15
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/doipack/m1garand.mdl"
SWEP.WorldModel		= "models/khrcw2/doipack/w_m1garand.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/khrcw2/doipack/w_m1garand.mdl"
SWEP.WMPos = Vector(-1.25, 15, -.25)
SWEP.WMAng = Vector(-15, 2, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .5
SWEP.RVBYawMod = .25
SWEP.RVBRollMod = .5


SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= false
if CustomizableWeaponry_doi_atow_hl2ammo then
SWEP.Primary.Ammo			= ".30-06"
else
SWEP.Primary.Ammo			= ".30-06"
end

SWEP.FireDelay = 60/400
SWEP.FireSound = "DOIGARAND_FIRE"
SWEP.FireSoundSuppressed = "DOIGARAND_FIRE_SUPPRESSED"
SWEP.Recoil = 1.25
SWEP.BipodRecoilModifier = 0.1 -- = 0 --.3
 -- = 1
SWEP.HipSpread = 0.13

SWEP.AimSpread = 0.0028
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.22
SWEP.Shots = 1
SWEP.Damage = 65
SWEP.DeployTime = .5
SWEP.HolsterTime = .6

SWEP.ADSFireAnim = true
SWEP.PreventQuickScoping = false

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 3.9
SWEP.ReloadHalt = 4.9
SWEP.ReloadTime_Empty = 2.5
SWEP.ReloadHalt_Empty = 3.4

function SWEP:IndividualThink()

self.Owner.ViewAff = 0

	if self.ActiveAttachments.md_ins2m40tac or self.ActiveAttachments.doi_atow_lymanm82 or self.ActiveAttachments.md_ins2wsacog or self.ActiveAttachments.md_ins2po424p or self.ActiveAttachments.md_ins2elcan then
		self.AimBreathingEnabled = true
		else
		self.AimBreathingEnabled = false
end

	if self.dt.BipodDeployed then
		self.ForegripOverride = true
		self.ForegripParent = "bipod"
		self.ForeGripOffsetCycle_Reload = .8
		self.ForeGripOffsetCycle_Reload_Empty = .75
	else
		self.ForegripOverride = false
		self.ForegripParent = "nah"
		self.ForeGripOffsetCycle_Reload = 0.28
		self.ForeGripOffsetCycle_Reload_Empty = 0
	end

	self.EffectiveRange = 400 * 39.37
	self.DamageFallOff = .4
	
	if self.ActiveAttachments.am_atow_light then
	self.EffectiveRange = ((self.EffectiveRange + 160 * 39.37))
end
	if self.ActiveAttachments.am_atow_heavy then
	self.DamageFallOff = ((self.DamageFallOff - .12))
end
	
	if self.ActiveAttachments.ins2_atow_riflesuppressor then
	self.EffectiveRange = ((self.EffectiveRange - 35 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .24))
end
	if self.ActiveAttachments.doi_atow_garandtanker then
	self.EffectiveRange = ((self.EffectiveRange - 25 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .17))
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
		"Bullet_1",
		"Bullet_2",
		"Bullet_3",
		"Bullet_4",
		"Bullet_5",
		"Bullet_6",
		"Bullet_7",
		"Bullet_8",
	}
	
	local function removeRoundMeshes(wep) -- we hide all rounds left in the belt on a non-empty reload because if we don't we're left with ghost meshes moving around (bullets with no link to the mag get moved back to it)
		wep:adjustVisibleRounds(0)
	end
	
	local function adjustMeshByMaxAmmo(wep)
		wep:adjustVisibleRounds(wep.Owner:GetAmmoCount(wep.Primary.Ammo) + wep:Clip1())
	end
	
	SWEP.Sounds.base_reloadfull[4].callback = adjustMeshByMaxAmmo
	SWEP.Sounds.base_reloadempty[1].callback = adjustMeshByMaxAmmo
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