AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

hook.Add( "OnDamagedByExplosion", "DisableSound", function()
	return true
end )

sound.Add( {
	name = "myasorubka_blast",
	channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitch = 100,
	sound = "anomaly/myasorubka_blast1.mp3"
} )

function ENT:Initialize()
	self:SetMoveType(MOVETYPE_NONE)  
	self:SetSolid(SOLID_BBOX)	
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
	self:SetModel("models/anomaly/anomaly_fix.mdl")
	--self.Entity:SetNotSolid( true )
	self:SetName("Tramplin Anomaly")
	self:SetTrigger(1)
	self.Entity:SetCollisionBounds( Vector( -80, -80, -5 ), Vector( 80, 80, 80 ) )
	self:SetNWBool("StopParticle", false)
    local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
end

function ENT:StartTouch(ent)
	self:EmitSound("anomaly/anomaly_gravy_hit1.mp3")
	timer.Create("myasorubka_activated_once", 0.1, 1, function()
		self:EmitSound("myasorubka_blast");
		ParticleEffect( "myasorubka_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 150, 150)
		ent:TakeDamage(75, self, self)
		self:StopParticles()
		self:SetNWBool("StopParticle", true)
		self:StopSound("myasorubka_idle")
	end)	
	timer.Create("myasorubka_activated", 1.4, 0, function()
		self:EmitSound("myasorubka_blast");
		self:StopSound("myasorubka_idle")
		ParticleEffect( "myasorubka_activated", self:GetPos(), Angle( 0, 0, 0 ) )
		--util.BlastDamage( self, self, self:GetPos(), 150, 150)
		ent:TakeDamage(75, self, self)
		self:StopParticles()
		self:SetNWBool("StopParticle", true)
	end)
end

function ENT:EndTouch()
	timer.Stop("myasorubka_activated")
	timer.Stop("myasorubka_recharge")
	self.Timer = "myasorubka_" .. self:EntIndex()
	timer.Create( self.Timer, 0.5, 1, function()
		self:SetNWBool("StopParticle", false)
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
	self.Timer = "myasorubka_" .. self:EntIndex()
	self:StopSound("myasorubka_idle")
	timer.Stop(self.Timer)
	timer.Stop("myasorubka_activated")
	timer.Stop("myasorubka_recharge")
end