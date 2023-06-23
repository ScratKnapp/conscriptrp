AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

hook.Add( "OnDamagedByExplosion", "DisableSound", function()
	return true
end )

sound.Add( {
	name = "buzz_idle",
	channel = CHAN_STATIC,
	volume = 0.25,
	level = 70,
	pitch = 100,
	sound = "anomaly/buzz_idle.wav"
} )

sound.Add( {
	name = "bfuzz_hit",
	channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitch = 100,
	sound = "anomaly/bfuzz_hit.mp3"
} )

function ENT:Initialize()
	self:SetMoveType(MOVETYPE_NONE)  
	self:SetSolid(SOLID_BBOX)	
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
	self:SetModel("models/anomaly/anomaly_fix.mdl")
	--self.Entity:SetNotSolid( true )
	self:SetTrigger(1)
	self:SetName("Gazirovka Anomaly")
	self.Entity:SetCollisionBounds( Vector( -50, -50, -5 ), Vector( 50, 50, 30 ) )
	self:SetNWBool("StopParticle", false)
    local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
end

function ENT:StartTouch(ent)
	timer.Create("gazirovka_activated_once"..self:EntIndex(), 0.01, 1, function()
		self:EmitSound("bfuzz_hit")
		ParticleEffect( "gazirovka_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 100, 110)
		ent:TakeDamage(70, self, self)
		self:StopParticles()
		self:SetNWBool("StopParticle", true)
	end)	
	timer.Create("gazirovka_recharge"..self:EntIndex(), 1.95, 0, function()
		self:SetNWBool("StopParticle", false)
	end)
	timer.Create("gazirovka_activated"..self:EntIndex(), 2.0, 0, function()
		self:EmitSound("bfuzz_hit")
		self:StopSound("buzz_idle")
		ParticleEffect( "gazirovka_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 100, 110)
		ent:TakeDamage(70, self, self)
		self:StopParticles()
		self:SetNWBool("StopParticle", true)
	end)
end

function ENT:EndTouch()
	timer.Stop("gazirovka_activated"..self:EntIndex())
	timer.Stop("gazirovka_recharge"..self:EntIndex())
	self.Timer = "gazirovka_" .. self:EntIndex()
	timer.Create( self.Timer, 1.9, 1, function()
		ParticleEffect("gazirovka", self:GetPos(), Angle(0,0,0), self)
		self:SetNWBool("Activated", false)
	end)
end

function ENT:SpawnFunction( ply, tr, ClassName, activator )
	if ( !tr.Hit ) then return end
	local SpawnPos = tr.HitPos + Vector(0, 0, 4)
	local SpawnAng = tr.HitNormal:Angle()
	SpawnAng.p = SpawnAng.p +90
	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:SetAngles( SpawnAng )
	ent:Spawn()
	ent:Activate()
	ent:SetTrigger( 1 )
	ent:SetColor( Color( 0, 0, 0, 0 ) )
	ent:SetRenderMode( RENDERMODE_TRANSALPHA ) 
	return ent
end

function ENT:OnRemove()
	self.Timer = "gazirovka_" .. self:EntIndex()
	self:StopSound("buzz_idle")
	timer.Stop("gazirovka_activated"..self:EntIndex())
	timer.Stop("gazirovka_recharge"..self:EntIndex())
	timer.Stop(self.Timer)
end