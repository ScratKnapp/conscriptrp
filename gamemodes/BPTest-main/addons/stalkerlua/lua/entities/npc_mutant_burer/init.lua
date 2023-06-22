﻿AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')
include("STALKERNPCBaseVars.lua")

ENT.DieSoundEnabled = true
ENT.DieSound.name = "Stalker.Burer.Die"
ENT.DieSound.min = 1
ENT.DieSound.max = 1

ENT.MeleeSoundEnabled = true
ENT.MeleeSound.name = "Stalker.Burer.Melee"
ENT.MeleeSound.min = 1
ENT.MeleeSound.max = 1

ENT.IdlingSoundEnabled = true
ENT.IdlingSound.name = "Stalker.Burer.Idle"
ENT.IdlingSound.min = 1
ENT.IdlingSound.max = 3

ENT.CanSpecial = true

--ENT.SNPCClass="C_MONSTER_LAB"
ENT.SNPCClass="C_MONSTER_PLAYERFOCUS"

ENT.CanShield = 0
ENT.CanGrab = 0
ENT.CanPush = 0

ENT.hp = 500

ENT.MustShield = 0

ENT.NextAbilityTime = 0

ENT.MinRangeDist = 800
ENT.MaxRangeDist = 1500
ENT.VisibleSchedule = SCHED_RUN_FROM_ENEMY_FALLBACK
ENT.RangeSchedule = SCHED_RUN_RANDOM

function ENT:Initialize()
	self.Model = "models/GSC/S.T.A.L.K.E.R/Monsters/Burer.mdl"
	self:STALKERNPCInit(Vector(-16,-16,60),MOVETYPE_STEP)
	
	
	self.MinRangeDist = 800
	self.MaxRangeDist = 1500
	self:SetBloodColor(BLOOD_COLOR_RED)
	
	self:DropToFloor()
	
	local TEMP_MeleeHitTable = { "Stalker.Claw.Hit" }
	
	local TEMP_MeleeMissTable = { "Stalker.Claw.Miss" }
						
	local TEMP_MeleeTable = self:STALKERNPCCreateMeleeTable()
	
	TEMP_MeleeTable.damage[1] = 19
	TEMP_MeleeTable.damagetype[1] = bit.bor(DMG_BULLET)
	TEMP_MeleeTable.distance[1] = 21
	TEMP_MeleeTable.radius[1] = 60
	TEMP_MeleeTable.time[1] = 0.6
	TEMP_MeleeTable.bone[1] = "right_hand"
	TEMP_MeleeTable.damage[2] = 19
	TEMP_MeleeTable.damagetype[2] = bit.bor(DMG_BULLET, DMG_BULLET)
	TEMP_MeleeTable.distance[2] = 21
	TEMP_MeleeTable.radius[2] = 60
	TEMP_MeleeTable.time[2] = 1.3
	TEMP_MeleeTable.bone[2] = "left_hand"
	self:STALKERNPCSetMeleeParams(1,"S_Melee",2, TEMP_MeleeTable,TEMP_MeleeHitTable,TEMP_MeleeMissTable)

	
	self:SetHealth(self.hp)	
	
	self:SetMaxHealth(self:Health())

	self.CanShield = CurTime()+1
	self.CanGrab = CurTime()+1
	self.CanPush = CurTime()+1
	
	self.NextAbilityTime = CurTime()+1
	
	self.MustShield = 0
	
	self:SetRenderMode(RENDERMODE_TRANSALPHA)
end

function ENT:STALKERNPCThinkEnemyValid()
	
end

function ENT:STALKERNPCThink()
end


function ENT:STALKERNPCDistanceForMeleeTooBig() 
	if(self.MustShield>CurTime()&&self.PlayingAnimation==false) then
		self:STALKERNPCPlayAnimation("S_Shield_Start",1)
				
		timer.Create("Attack"..tostring(self).."1",0.6,1,function()
			if(IsValid(self)&&self!=nil&&self!=NULL) then
				self:STALKERNPCPlayAnimation("S_Shield_Idle",1)
			end
		end)
		
		timer.Create("Attack"..tostring(self).."2",2.3,1,function()
			if(IsValid(self)&&self!=nil&&self!=NULL) then
				self:STALKERNPCPlayAnimation("S_Shield_End",1)
			end
		end)
		
		timer.Create("Attack"..tostring(self).."3",2.7,1,function()
			if(IsValid(self)&&self!=nil&&self!=NULL) then
				self:STALKERNPCStopAllTimers()
				self:STALKERNPCClearAnimation()
			end
		end)
		
		self.CanShield = CurTime()+10
	end
		
	if(self.PlayingAnimation==false) then
		if(self.CanGrab<CurTime()) then
			local TEMP_Rand = math.random(1,5)
		
			if(TEMP_Rand==1) then
				if(IsValid(self:GetEnemy():GetActiveWeapon())&&self:GetEnemy():GetActiveWeapon():GetNoDraw()==false) then
					
					self.CanGrab = CurTime()+15
					
					self:STALKERNPCPlayAnimation("S_Stamina_Attack",1)
					
					timer.Create("Attack"..tostring(self).."1",0.4,1,function()
						if(IsValid(self)&&self!=nil&&self!=NULL) then
							self:GetEnemy():ViewPunch(Angle(math.random(-1,1)*40,math.random(-1,1)*40,math.random(-1,1)*40))
							self:GetEnemy():RestoreStamina(-80)
						end
					end)
					timer.Create("Attack"..tostring(self).."3",2.2,1,function()
						if(IsValid(self)&&self!=nil&&self!=NULL) then
							self:STALKERNPCStopAllTimers()
							self:STALKERNPCClearAnimation()
							self.NextAbilityTime = CurTime()+0.5
						end
					end)	
				end
			end
		end
	end

	if(self.PlayingAnimation==false) then
		if(self.CanPush<CurTime()) then
			local TEMP_Rand = math.random(1,5)
			
			if(TEMP_Rand==1) then
				self.CanPush = CurTime()+5
					
				self:STALKERNPCPlayAnimation("S_Power_Attack",1)
					
				timer.Create("Attack"..tostring(self).."1",0.9,1,function()
					if(IsValid(self)&&self!=nil&&self!=NULL) then
						local TEMP_ShootPoint = self:GetPos()+(self:GetForward()*1000)
						
						if(IsValid(self:GetEnemy())&&self:GetEnemy()!=nil&&self:GetEnemy()!=NULL) then
							TEMP_ShootPoint = self:GetEnemy():GetPos()+self:GetEnemy():OBBCenter()
						end
						
						local TEMP_ShootPos = self:GetPos()+Vector(0,0,50)+(self:GetForward()*15)
					
						local TEMP_Grav = ents.Create("ent_burer_wave")
						TEMP_Grav:SetPos(TEMP_ShootPos)
						TEMP_Grav:SetAngles((TEMP_ShootPoint-TEMP_ShootPos):Angle())
						TEMP_Grav:Spawn()
							
						TEMP_Grav:SetOwner(self)
							
							
						TEMP_Grav:GetPhysicsObject():SetVelocity((TEMP_ShootPoint-TEMP_ShootPos):GetNormalized()*2000)
							
						self:STALKERNPCPlaySoundRandom(100,"Stalker.Burer.Push",1,1)
					end
				end)
				
				timer.Create("Attack"..tostring(self).."2",2.2,1,function()
					if(IsValid(self)&&self!=nil&&self!=NULL) then
						self:STALKERNPCStopAllTimers()
						self:STALKERNPCClearAnimation()
						self.NextAbilityTime = CurTime()+0.5
					end
				end)	
			end
		end
	end
end

function ENT:STALKERNPCDamageTake(dmginfo,mul)
	if(self.CanShield<CurTime()) then
		local TEMP_Rand = math.random(1,3)
		
		if(TEMP_Rand==1) then
			self.MustShield = CurTime()+1
		end
	end
	
	if(self.Animation=="S_Shield_Idle") then
		local TEMP_DMGDIST = dmginfo:GetDamagePosition()-(self:GetPos()+self:OBBCenter())
		
		local TEMP_Effect = EffectData()
		TEMP_Effect:SetOrigin((self:GetPos()+self:OBBCenter())+(TEMP_DMGDIST:GetNormalized()*20))
		TEMP_Effect:SetEntity(self)
		TEMP_Effect:SetAngles(TEMP_DMGDIST:Angle())
		TEMP_Effect:SetScale(5)
		util.Effect("cball_bounce", TEMP_Effect,false,true)
		
		return 0
	end
	
	return mul
end