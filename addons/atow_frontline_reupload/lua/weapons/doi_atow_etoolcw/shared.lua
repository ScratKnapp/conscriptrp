AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry.firemodes:registerFiremode("meleeet", "READY", false, 0, 0)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Spade pickaxe - British"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = false
	
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/khrcw2/doipack/w_etoolgb.mdl"
	SWEP.WMPos = Vector(1.25, -2.75, -3)
	SWEP.WMAng = Vector(-85, 180, 180)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-70.8947, 55.0455, -12.2273)
	
	SWEP.SprintPos = Vector(0, 0, 0)
	SWEP.SprintAng = Vector(-50.8947, -10, 0)
	
	SWEP.AlternativePos = Vector(-1.75, .25, -1)
	SWEP.AlternativeAng = Vector(0, 0, -15)
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_etoolgb")
	killicon.Add( "doi_atow_etoolcw", "vgui/inventory/killicons/weapon_etoolgb", Color(255, 0, 0, 0))
end


SWEP.Animations = {
	slash_primary = {"base_attack_1"},
	slash_secondary = {"base_attack_kill"},
	draw = "base_draw"
}

SWEP.Sounds = {
	base_attack_1 = {{time = 0.125, sound = "DOIMELEE_SWING"}},
	base_attack_kill = {{time = .825, sound = "DOIMELEE_SWING"}},
	base_draw = {{time = 0, sound = "INS2SHARED_DRAW"}},
}

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.FireModes = {"meleeet"}
SWEP.NormalHoldType = "melee2"
SWEP.RunHoldType = "normal"
SWEP.Base = "cw_melee_base"
SWEP.Category = "CW 2.0 - ATOW"

SWEP.Author			= "Khris"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false
SWEP.ViewModelMovementScale = .5
SWEP.FireAnimSpeed = 1.15
SWEP.SpeedDec = 15

SWEP.ViewModelFOV	= 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/khrcw2/doipack/etoolgb.mdl"
SWEP.WorldModel = "models/khrcw2/doipack/w_etoolgb.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = .85
SWEP.RVBYawMod = .5
SWEP.RVBRollMod = .85

SWEP.Primary.ClipSize		= 0
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Secondary.Automatic	= true
SWEP.Primary.Ammo			= ""

SWEP.PrimaryAttackDelay = 0.65
SWEP.SecondaryAttackDelay = 1.1

SWEP.PrimaryAttackDamage = {40, 40}
SWEP.SecondaryAttackDamage = {100, 100}

SWEP.PrimaryAttackRange = 60
SWEP.SecondaryAttackRange = 60

SWEP.HolsterTime = 0.4
SWEP.DeployTime = 0.5

SWEP.PrimaryAttackImpactTime = 0.185
SWEP.PrimaryAttackDamageWindow = 0.1

SWEP.SecondaryAttackImpactTime = 0.825
SWEP.SecondaryAttackDamageWindow = 0.05

SWEP.ImpactDecal = ""
SWEP.CanBackstab = false
SWEP.FiremodesEnabled = true
SWEP.SprintingEnabled = false
SWEP.HolsterUnderwater = false
SWEP.ShootWhileProne = true
SWEP.PushVelocity = 100

SWEP.PlayerHitSounds = {"DOIETOOL_HITFLESH"}
SWEP.NPCHitSounds = {"DOIETOOL_HITFLESH"}
SWEP.MiscHitSounds = {"DOIETOOL_HITWORLD"}

SWEP.PrimaryHitAABB = {
	Vector(-10, -5, -5),
	Vector(10, 5, 5)
}

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
	function SWEP:DrawHUD()
		local disableCrosshair, disableCustomHUD, disableTabDisplay = CustomizableWeaponry.callbacks.processCategory(self, "suppressHUDElements", customHUD)
		
		if not disableCustomHUD and GetConVarNumber("cw_customhud") >= 1 then
			self:drawCustomHUD()
		end
		
		if not disableTabDisplay then
			if self.dt.State == CW_CUSTOMIZE then
				self:drawTabDisplay()
			end
			
			CustomizableWeaponry.callbacks.processCategory(self, "drawToHUD", customHUD)
		end
	end
end

local SP = game.SinglePlayer()
local traceData = {}

function SWEP:isBackstab(ent)
	if not self.CanBackstab then
		return false
	end
	
	local ourEye = self.Owner:EyeAngles()
	ourEye.p = 0
	ourEye = ourEye:Forward()

	local ang = ent:EyeAngles()
	ang.p = 0
	ang = ang:Forward()
	
	return ang:DotProduct(ourEye) >= 0.7
end

function SWEP:getDealtDamage(ent)
	local dmg = type(self.attackDamage) == "table" and math.random(self.attackDamage[1], self.attackDamage[2]) or self.attackDamage
	
	if ent:IsPlayer() and self:isBackstab(ent) then
		dmg = dmg * self.BackstabDamageMultiplier
	end
	
	return dmg
end

function SWEP:emitSoundFromList(list)
	self:EmitSound(list[math.random(1, #list)], 75, 100)
end

function SWEP:createBloodEffect(ent, trace)
	local effectData = EffectData()
	effectData:SetOrigin(trace.HitPos)
	effectData:SetEntity(ent)
	
	util.Effect("BloodImpact", effectData)
end

local bullet = {}
bullet.Damage = 0
bullet.Force = 0
bullet.Tracer = 0
bullet.Num = 1
bullet.Spread = Vector(0, 0, 0)

local noNormal = Vector(1, 1, 1)

function SWEP:IndividualThink()
	if (SP and SERVER) or IsFirstTimePredicted() then
		local ct = CurTime()
		
		if self.attackDamageTime and ct > self.attackDamageTime and ct < self.attackDamageTime + self.attackDamageTimeWindow then
			self.Owner:LagCompensation(true)
			self.Owner:ViewPunch(Angle(.05, .15, 0))
				local eyeAngles = self.Owner:EyeAngles()
				local forward = eyeAngles:Forward()
				traceData.start = self.Owner:GetShootPos()
				traceData.endpos = traceData.start + forward * self.attackRange
				
				traceData.mins = self.attackAABB[1]:Rotate(eyeAngles)
				traceData.maxs = self.attackAABB[2]:Rotate(eyeAngles)
				
				traceData.filter = self.Owner
				
				local trace = util.TraceHull(traceData)
			self.Owner:LagCompensation(false)
			
			if trace.Hit then
				local ent = trace.Entity
				
				if IsValid(ent) then
					local sounds = nil
					
					if ent:IsPlayer() then
						sounds = self.PlayerHitSounds
						self:createBloodEffect(ent, trace)
						self.Owner:ViewPunch(Angle(.75, .5, 1))
					elseif ent:IsNPC() then
						sounds = self.NPCHitSounds[ent:GetClass()] or self.PlayerHitSounds
						self:createBloodEffect(ent, trace)
						self.Owner:ViewPunch(Angle(.75, .5, 1))
					else
						bullet.Src = traceData.start
						bullet.Dir = forward
						
						self.Owner:FireBullets(bullet)
						
						if SERVER then
							local phys = ent:GetPhysicsObject()
							
							if phys and phys:IsValid() then
								phys:AddVelocity(forward * self.PushVelocity)
								
							end
						end
					end
					
					if SERVER then
						local forceDir = noNormal
						local forceMultiplier = 0
						
						if not ent:IsPlayer() and not ent:IsNPC() then
							forceDir = trace.HitNormal
						end
						
						local damageInfo = DamageInfo()
						damageInfo:SetDamage(self:getDealtDamage(ent))
						damageInfo:SetAttacker(self.Owner)
						damageInfo:SetInflictor(self)
						damageInfo:SetDamageForce(forward * self.DamageForce * forceDir)
						damageInfo:SetDamagePosition(trace.HitPos)
						
						ent:TakeDamageInfo(damageInfo)
					end
					
					sounds = sounds or self.MiscHitSounds
					self:emitSoundFromList(sounds)
				else
					self.Owner:ViewPunch(Angle(-.5, -.5, 0))
					self:emitSoundFromList(self.MiscHitSounds)
					
					if (SP and SERVER) or CLIENT then
						util.Decal(self.ImpactDecal, trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)
					end
				end
				
				self.attackDamageTime = nil
			end
		end
	end
end

function SWEP:canAttack(skipQuickGrenade)
	if not self:canFireWeapon(1) then
		return false
	end
	
	if not skipQuickGrenade and self.Owner:KeyDown(IN_USE) then
		if CustomizableWeaponry.quickGrenade.canThrow(self) then
			CustomizableWeaponry.quickGrenade.throw(self)
			return false
		end
	end
	
	if not self:canFireWeapon(2) then
		return false
	end
	
	if not self:canFireWeapon(3) then
		return false
	end
	
	return true
end

function SWEP:beginAttack(timeToImpact, damageWindow, damage, range, aabb)
	self.attackDamageTime = CurTime() + timeToImpact
	self.attackDamageTimeWindow = damageWindow
	self.attackDamage = damage
	self.attackRange = range
	self.attackAABB = aabb
end

function SWEP:PrimaryAttack()
	if not self:canAttack() then
		return
	end
	
	if IsFirstTimePredicted() then
	self.Owner:ViewPunch(Angle(0, 0, 1))
		self:beginAttack(self.PrimaryAttackImpactTime, self.PrimaryAttackDamageWindow, self.PrimaryAttackDamage, self.PrimaryAttackRange, self.PrimaryHitAABB)
		self:sendWeaponAnim("slash_primary", self.FireAnimSpeed)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
	end
	
	local time = CurTime() + self.PrimaryAttackDelay
	self:SetNextPrimaryFire(time)
	self:SetNextSecondaryFire(time)
	self.ReloadWait = time
	
	if self.dt.Safe then
		self:CycleFiremodes()
		return
	end
end

function SWEP:SecondaryAttack()
	if not self:canAttack(true) then
		return
	end
	
	if IsFirstTimePredicted() then
		self:beginAttack(self.SecondaryAttackImpactTime, self.SecondaryAttackDamageWindow, self.SecondaryAttackDamage, self.SecondaryAttackRange, self.SecondaryHitAABB)
		self:sendWeaponAnim("slash_secondary", self.FireAnimSpeed)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
	end
	
	local time = CurTime() + self.SecondaryAttackDelay
	self:SetNextPrimaryFire(time)
	self:SetNextSecondaryFire(time)
	self.ReloadWait = time
	
	if self.dt.Safe then
		self:CycleFiremodes()
		return
	end
end

function SWEP:DoImpactEffect()
	
end