if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Mosin Nagant (Custom)"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.Shell = "KK_INS2_762x54"
	SWEP.NoShells = true
	-- SWEP.ShellDelay = 0.14 + 0.4
	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.8208, -12, -1.1186),
			Vector(-0.4986, 0, 0)
		},
	}

	SWEP.AttachmentModelsVM = {

		["cw_menu_muzzle"] = {model = "models/maxofs2d/cube_tool.mdl", bone = "Weapon", pos = Vector(0.048, 15, 1.325), angle = Angle(0, -90, 0), size = Vector(), active = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 1.2},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/a_optic_mosin.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		
		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_pilad.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/a_scope_leupold.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false, retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps.mdl", bone = "Weapon", pos = Vector(0, -9, 2.9), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.AttachmentModelsWM = {

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -48, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -56, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -4, -12.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -39, -16.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -64, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_scope_mosin"] = {model = "models/weapons/upgrades/w_scope_mosin.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -16, -0.75), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -9, 0.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_pilad_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_pilad.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -9, 0.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["cw_sil_leupold_scope"] = {model = "models/silver/stalker/weapons/attachments/w_scope_leupold.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -9, 0.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -39, -16.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -48, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -48, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -56, -8), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", bone = "W_WEP_SPEC", pos = Vector(0, -4, -12.5), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", bone = "W_WEP_SPEC", pos = Vector(-34.5, -2, 3), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = false},
	}

	SWEP.ForegripOverridePos = {
		["none"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(), angle = Angle()}
		},

		["LeftHandFix"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(-100, 0, 0), angle = Angle()}
		},
	}

	SWEP.IronsightPos = Vector(-2.813, -2, 1.45)
	SWEP.IronsightAng = Vector(-0.03, 0.03, 0)

	SWEP.KKINS2KobraPos = Vector(-2.8131, 2, -0.8989)
	SWEP.KKINS2KobraAng = Vector(0,0.015,0)

	SWEP.KKINS2EoTechPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2EoTechAng = Vector(0,0.015,0)

	SWEP.KKINS2AimpointPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2AimpointAng = Vector(0,0.015,0)

	SWEP.KKINS2ElcanPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2ElcanAng = Vector(0,0.015,0)

	SWEP.KKINS2PO4Pos = Vector(-2.8131, 2, -0.8989)
	SWEP.KKINS2PO4Ang = Vector(0,0.015,0)

	SWEP.KKINS2ScopeMosinPos = Vector(-2.8131, 2, -0.3989)
	SWEP.KKINS2ScopeMosinAng = Vector(0,0,0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMCMoreAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMBarskaAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0,0.015,0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0,0.015,0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.8131, 2, -0.7989)
	SWEP.KKINS2CSTMACOGAng = Vector(0,0.015,0)
	
	SWEP.KKINS2ScopeM40Pos = Vector(-2.8131, 2, -0.4989)
	SWEP.KKINS2ScopeM40Ang = Vector()	
	
	SWEP.CWSILPILADPos = Vector(-2.8131, 2, -0.4989)
	SWEP.CWSILPILADAng = Vector()	
	
	SWEP.CWSILLEUPOLDPos = Vector(-2.8131, 2, -0.5989)
	SWEP.CWSILLEUPOLDAng = Vector()

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sks_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_sks_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {500, -450}, atts = {"cw_sil_pilad_scope", "cw_sil_leupold_scope", "kk_ins2_scope_m40", "kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_elcan", "kk_ins2_po4", "kk_ins2_scope_mosin", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s", "kk_ins2_cstm_acog"}},
	["+reload"] = {header = "Ammo", offset = {1100, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

if CustomizableWeaponry_KK.ins2.ws then
	table.insert(SWEP.Attachments, 6, {header = "Package", offset = {-200, 500}, atts = {"kk_ins2_mosin_so"}})
end

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = {"base_fire_start", "base_firelast"},
	base_fire_aim = {"iron_fire_start", "iron_firelast"},
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

	bipod_in = "deployed_in",
	bipod_fire = "deployed_fire_start",
	bipod_fire_aim = "iron_fire_deployed_start",
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "iron_dryfire_deployed",
	bipod_bolt = "deployed_fire_end",
	bipod_bolt_aim = "iron_fire_deployed_end",
	bipod_reload_start = "deployed_reload_start",
	bipod_reload_start_empty = "deployed_reload_start",
	bipod_insert = "deployed_reload_insert",
	bipod_reload_end = "deployed_reload_end",
	bipod_reload_end_empty = "deployed_reload_end",
	bipod_out = "deployed_out",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
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
SWEP.ViewModel		= "models/silver/stalker/weapons/v_mosin_unique.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_mosin_unique.mdl"

SWEP.WMPos = Vector(6.136, 0.786, -1.713)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 0.3 // 60/37
SWEP.FireSound = "CW_KK_INS2_MOSIN_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_MOSIN_FIRE_SUPPRESSED"
SWEP.Recoil = 2.4

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.5
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 2
SWEP.Shots = 1
SWEP.Damage = 63

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

SWEP.WeaponLength = 40

SWEP.MuzzleVelocity = 875

SWEP.ReloadTimes = {
	base_fire_end = {14/30, 1.5},
	iron_fire_end = {19/28.5, 1.7},

	reload_start = {15/30, 0.865, KK_INS2_SHOTGUN_UNLOAD_ONE},
	reload_insert = {14/30, 0.8},
	reload_end = {0.9, 0.9},

	deployed_fire_end = {21/30, 1.8},
	iron_fire_deployed_end = {19/34, 1.5},

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
