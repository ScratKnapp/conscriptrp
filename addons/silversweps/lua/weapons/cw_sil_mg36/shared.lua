if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MG36"
	SWEP.CSMuzzleFlashes = true
	SWEP.Shell = "KK_INS2_556x45"
	SWEP.ShellDelay = 0.06

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_06.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_counter"] = {model = "models/weapons/stattrack.mdl", bone = "Weapon", pos = Vector(0.33, -3.289, -0.137), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["kk_counter_mag"] = {model = "models/weapons/stattrack.mdl", bone = "Magazine", pos = Vector(0.941, -1.086, 0.783), angle = Angle(-31.362, -9.11, -16.441), size = Vector(0.449, 0.449, 0.449)},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},


		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_6.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", Bone = "ATTACH_Muzzle", pos = Vector(-6, 0, 8.5), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = false},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_ins.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-2.9, -2, -0.40)
	SWEP.IronsightAng = Vector(0.95, 0.05, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.9, -2, -0.87)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.9, -2, -0.87)
	SWEP.KKINS2CSTMACOGAng = Vector()

	SWEP.CustomizationMenuScale = 0.018
end

SWEP.MuzzleEffect = "muzzleflash_akm_1p_core"
SWEP.MuzzleEffectWorld = "muzzleflash_akm_3rd"

SWEP.Attachments = {
	{header = "Sight", offset = {400, -450}, atts = {"kk_ins2_elcan", "kk_ins2_cstm_acog"}},
	{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_suppressor_sec"}},
	{header = "Lasers", offset = {200, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_sights_cstm"}},
	["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

if CustomizableWeaponry_KK.ins2.ws then
	table.insert(SWEP.Attachments, 3, {header = "Package", offset = {-400, 0}, atts = {"kk_ins2_rpk_sopmod"}})
end

if CustomizableWeaponry_KK.HOME then
	-- table.insert(SWEP.Attachments, {header = "Skill1", offset = {2400, -700}, atts = {"kk_aimbot"}})
	-- table.insert(SWEP.Attachments, {header = "Skill2", offset = {2400, -200}, atts = {"kk_wallhaq"}})
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {2400, 300}, atts = {"kk_counter"}})
	-- table.insert(SWEP.Attachments, {header = "CSGO", offset = {2400, 800}, atts = {"kk_textbox"}})
end

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3","iron_fire_4"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	bipod_in = "deployed_in",
	bipod_fire = "deployed_fire",
	bipod_fire_aim = {"deployed_iron_fire_1","deployed_iron_fire_2"},
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reloadempty",
	bipod_firemode = "deployed_fireselect",
	bipod_firemode_aim = "deployed_iron_fireselect",
	bipod_out = "deployed_out",
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 1
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Silver's SWEPs - LMGs"

SWEP.Author			= "Silver"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/silver/stalker/weapons/v_mg36.mdl"
SWEP.WorldModel		= "models/silver/stalker/weapons/w_mg36.mdl"

SWEP.WMPos = Vector(5.627, 0.66, -1.397)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60/750
SWEP.FireSound = "CW_KK_INS2_M16A4_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M16A4_FIRE_SUPPRESSED"
SWEP.Recoil = 1.2

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.004
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 41

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.9
SWEP.HolsterTime = 0.7

SWEP.BipodDeployTime = 1.5
SWEP.BipodUndeployTime = 1.9

SWEP.BipodInstalled = true
SWEP.WeaponLength = 26
-- SWEP.WeaponLength = 22 // sopmod

SWEP.MuzzleVelocity = 745

SWEP.ReloadTimes = {
	base_reload = {3.4, 4.5},
	base_reloadempty = {3.4, 6},

	deployed_reload = {116/30, 4.8},
	deployed_reloadempty = {116/30, 6},
}

if CLIENT then
	local att = CustomizableWeaponry.registeredAttachmentsSKey["kk_ins2_rpk_sopmod"]

	CustomizableWeaponry_KK.ins2.welementThink:add("cw_kk_ins2_rpk", function(wep, welement)
		if wep.ActiveAttachments[att.name] then
			if welement:GetModel() != att.activeWM then
				welement:SetModel(att.activeWM)
			end
		else
			if welement:GetModel() != att.origWM then
				welement:SetModel(att.origWM)
			end
		end

		welement:SetSequence(wep.dt.BipodDeployed and 1 or 0)
	end)
end

if CLIENT then
	local pos, ang

	CustomizableWeaponry.callbacks:addNew("adjustViewmodelPosition", "KK_INS2_RPK", function(wep, TargetPos, TargetAng)
		if wep:GetClass() != "cw_kk_ins2_rpk" then return end
		if !wep.ActiveAttachments.kk_ins2_rpk_sopmod then return end
		if !wep:isAiming() then return end

		if wep._currentSecondarySight then
			pos = wep._currentSecondarySight.aimPos[1]
			ang = wep._currentSecondarySight.aimPos[2]
		elseif wep._currentPrimarySight then
			pos = wep._currentPrimarySight.aimPos[1]
			ang = wep._currentPrimarySight.aimPos[2]
		else
			pos = "IronsightPos"
			ang = "IronsightAng"
		end

		return wep[pos .. "_sopmod"], wep[ang .. "_sopmod"]
	end)
end

if CLIENT then
	local counterExists = file.Exists("models/weapons/stattrack.mdl", "GAME")

	function SWEP:updateOtherParts()
		if CustomizableWeaponry_KK.HOME then
			local cycle = self.CW_VM:GetCycle()
			local clip = self:Clip1()
			local ammo

			if self.getFullestMag then
				ammo = math.max(self:Clip1(), self:getFullestMag(), -1)
			else
				ammo = self.Owner:GetAmmoCount(self.Primary.Ammo) + clip
			end

			if self.Sequence:find("reload") and cycle > 0.3 and cycle < 1 then
				self.AttachmentModelsVM.kk_counter_mag.ent._KKCSGONUM = ammo
			else
				self.AttachmentModelsVM.kk_counter_mag.ent._KKCSGONUM = clip
			end

			self.AttachmentModelsVM.kk_counter_mag.active = counterExists
		end
	end
end
