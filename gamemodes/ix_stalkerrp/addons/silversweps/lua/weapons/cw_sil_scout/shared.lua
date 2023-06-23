if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Steyr Scout"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_556x45"
	SWEP.NoShells = true
	-- SWEP.ShellDelay = 0.14 + 0.4

	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.8208, -12, -1.1186),
			Vector(-0.4986, 0, 0)
		},
	}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_iron"] = {model = "models/weapons/upgrades/a_standard_m40.mdl", bone = "A_Optic", pos = Vector(0, -0.75, -0.75), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false, active = true},
		
		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/a_bipod_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["cw_menu_muzzle"] = {model = "models/maxofs2d/cube_tool.mdl", bone = "Weapon", pos = Vector(0.048, 15, 1.325), angle = Angle(0, -90, 0), size = Vector(), active = true},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", bone = "A_Suppressor", pos = Vector(0, 4, -0.6), angle = Angle(0, 90, 90), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 1.2},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/a_optic_mosin.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		
		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_pilad.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_leupold.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(180, 0, 90), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", rLight = true, bone = "A_Optic", pos = Vector(0, -0.25, 5.5), angle = Angle(90, 90, 0), size = Vector(1, 1, 1), merge = t},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", pos = Vector(-35.6,0,7), angle = Angle(), size = Vector(1, 1, 1), attachment = "silencer"},

		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/w_bipod_mosin.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "ATTACH_ModKit", pos = Vector(-35, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", bone = "ATTACH_ModKit", pos = Vector(-45, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", bone = "ATTACH_ModKit", pos = Vector(5, 15.25, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", bone = "ATTACH_ModKit", pos = Vector(-25, 19, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", bone = "ATTACH_ModKit", pos = Vector(-55, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/w_scope_mosin.mdl", bone = "ATTACH_ModKit", pos = Vector(-5, 3.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", bone = "ATTACH_ModKit", pos = Vector(3, 2.75, 0.75), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_pilad.mdl", bone = "ATTACH_ModKit", pos = Vector(3, 2.75, 0.75), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_leupold.mdl", bone = "ATTACH_ModKit", pos = Vector(3, 2.75, 0.75), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", bone = "ATTACH_ModKit", pos = Vector(-25, 19, 0.2), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "ATTACH_ModKit", pos = Vector(-35, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "ATTACH_ModKit", pos = Vector(-35, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", bone = "ATTACH_ModKit", pos = Vector(-45, 10.5, 0.25), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", bone = "ATTACH_ModKit", pos = Vector(5, 15, 0.2), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", bone = "ATTACH_ModKit", pos = Vector(8, 0, 34.5), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.ForegripOverridePos = {
		["none"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(), angle = Angle()}
		},

		["LeftHandFix"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(-100, 0, 0), angle = Angle()}
		},
	}

	SWEP.IronsightPos = Vector(-2.813, -2, 1.00)
	SWEP.IronsightAng = Vector(-0.2, 0.03, 0)

	SWEP.KKINS2KobraPos = Vector(-2.8164, -4, 0.5282)
	SWEP.KKINS2KobraAng = Vector(0,0.015,0)

	SWEP.KKINS2EoTechPos = Vector(-2.8154, -4, 0.6082)
	SWEP.KKINS2EoTechAng = Vector(0,0.015,0)

	SWEP.KKINS2AimpointPos = Vector(-2.8243, -4, 0.6082)
	SWEP.KKINS2AimpointAng = Vector(0,0.015,0)

	SWEP.KKINS2ElcanPos = Vector(-2.8165, -5.5, 0.4282)
	SWEP.KKINS2ElcanAng = Vector(0,0.015,0)

	SWEP.KKINS2PO4Pos = Vector(-2.7547, -5.5, 0.682)
	SWEP.KKINS2PO4Ang = Vector(0,0.015,0)

	SWEP.KKINS2ScopeMosinPos = Vector(-2.79, -4, 1.055)
	SWEP.KKINS2ScopeMosinAng = Vector(0,0,0)

	SWEP.KKINS2MagnifierPos = Vector(-2.815, -4.5, 0.5582)
	SWEP.KKINS2MagnifierAng = Vector(0,0.015,0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.8154, -4, 0.6282)
	SWEP.KKINS2CSTMCMoreAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.8154, -4, 0.6282)
	SWEP.KKINS2CSTMBarskaAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.8154, -4, 0.6282)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0,0.015,0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.8154, -4, 0.6282)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.8154, -4, 0.6282)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.8154, -5, 0.5082)
	SWEP.KKINS2CSTMACOGAng = Vector(0,0.015,0)
	
	SWEP.KKINS2ScopeM40Pos = Vector(-2.8131, -2, 0.9989)
	SWEP.KKINS2ScopeM40Ang = Vector()	
	
	SWEP.CWSILPILADPos = Vector(-2.8131, -2, 0.8989)
	SWEP.CWSILPILADAng = Vector()	
	
	SWEP.CWSILLEUPOLDPos = Vector(-2.8131, -2, 0.7989)
	SWEP.CWSILLEUPOLDAng = Vector()
	
	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sks_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_sks_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {500, -450}, atts = {"cw_sil_pilad_scope", "kk_ins2_scope_m40", "cw_sil_leupold_scope", "kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_elcan", "kk_ins2_po4", "kk_ins2_scope_mosin", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s", "kk_ins2_cstm_acog"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_suppressor_sec"}},
	{header = "More Sight", offset = {1100, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_bipod"}},
	["+use"] = {header = "Sight Contract", offset = {500, -0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {1100, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = {"base_fire_start", "base_fire_last"},
	base_fire_aim = {"iron_fire_start", "iron_fire_last"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_bolt = "base_fire_end",
	base_bolt_aim = "iron_fire_end",
	base_reload_start = "reload_start",
	base_reload_start_empty = "reload_start",
	base_insert = "reload_insert",
	base_reload_end = "reload_end",
	base_reload_end_empty = "reload_end",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	bipod_in = "deploy_in",
	bipod_fire = "deployed_fire_start",
	bipod_fire_aim = "deployed_iron_fire_start",
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_bolt = "deployed_fire_end",
	bipod_bolt_aim = "deployed_iron_fire_end",
	bipod_reload_start = "deployed_reload_start",
	bipod_reload_start_empty = "deployed_reload_start",
	bipod_insert = "deployed_reload_insert",
	bipod_reload_end = "deployed_reload_end",
	bipod_reload_end_empty = "deployed_reload_end",
	bipod_out = "deploy_out",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - Long Rifles"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_scout.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_scout.mdl"

SWEP.WMPos = Vector(5.136, 0.986, -1.713)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.3 // 60/37
SWEP.FireSound = "CW_SIL_SCOUT_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_SKS_FIRE_SUPPRESSED"
SWEP.Recoil = 1.1025

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 2
SWEP.Shots = 1
SWEP.Damage = 39

SWEP.FirstDeployTime = 3
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.Chamberable = false
SWEP.SnapToIdlePostReload = false
SWEP.ShotgunReload = true
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.2
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.WeaponLength = 28

SWEP.MuzzleVelocity = 1000

SWEP.ReloadTimes = {
	base_fire_end = {14/30, 1.5},
	iron_fire_end = {19/28.5, 1.7},

	reload_start = {15/30, 0.865, KK_INS2_SHOTGUN_UNLOAD_ONE},
	reload_insert = {14/30, 0.8},
	reload_end = {0.9, 0.9},

	deployed_fire_end = {21/30, 1.8},
	deployed_iron_fire_end = {19/34, 1.5},

	deployed_reload_start = {15/30, 0.8, KK_INS2_SHOTGUN_UNLOAD_ONE},
	deployed_reload_insert = {12/30, 0.8},
	deployed_reload_end = {1, 1},
}

if CLIENT then
	local att
	local muz = {}

	function SWEP:getMuzzlePosition()
		if self.Owner:ShouldDrawLocalPlayer() then
			muz.Pos = self.WMEnt:GetAttachment(1).Pos
			muz.Ang = EyeAngles()
			return muz
		end

		if self.CustomizeMenuAlpha > 0 then
			muz.Pos = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetPos()
			muz.Ang = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetAngles()
			return muz
		end

		if self.MuzzleAttachment != 0 then
			return self.CW_VM:GetAttachment(self.MuzzleAttachment)
		end

		muz.Pos = self.Owner:EyePos()
		muz.Ang = self.Owner:EyeAngles()
		return muz
	end
end

if CLIENT then
	function SWEP:updateOtherParts()
		local vm = self.CW_VM
		local cycle = vm:GetCycle()
		local activity = self.Sequence

		if activity:find("reload_start") then
			self.shotgunReloading = true
		end

		if activity:find("reload_end") then
			self.shotgunReloading = false
		end

		self.ForegripOverride = true
		self.ForegripParent = (self.Sequence:find("deployed") and self.Sequence:find("fire")) and "LeftHandFix" or "none"
	end
end

if CLIENT then
	function SWEP:playSwitchBipod()
		local isBipod = self.dt.BipodDeployed
		local vm = self.CW_VM
		local cycle = vm:GetCycle()
		local activity = self.Sequence

		local canPlay = !(((activity:find("reload") or activity:find("fire_end")) and cycle < 1) or self.shotgunReloading)

		if isBipod != self._KK_INS2_wasBipod and self._KK_INS2_wasBipod != nil then
			if canPlay then
				if isBipod then
					self:playAnim("bipod_in")
				else
					self:playAnim("bipod_out")
				end
			else
				self.KKINS_postReloadBipodSwitch = true
			end
		end
		if self.KKINS_postReloadBipodSwitch and canPlay then
			if isBipod then
				self:playAnim("bipod_in")
			else
				self:playAnim("bipod_out")
			end
			self.KKINS_postReloadBipodSwitch = false
		end

		self._KK_INS2_wasBipod = isBipod
	end
end

if CLIENT then
	local att = CustomizableWeaponry.registeredAttachmentsSKey["kk_ins2_mosin_so"]

	CustomizableWeaponry_KK.ins2.welementThink:add("cw_kk_ins2_mosin", function(wep, welement)
		if wep.ActiveAttachments[att.name] then
			if welement:GetModel() != att.activeWM then
				welement:SetModel(att.activeWM)
			end
		else
			if welement:GetModel() != att.origWM then
				welement:SetModel(att.origWM)
			end
		end
	end)
end