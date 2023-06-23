ENT.Base = "base_gmodentity"
ENT.Type = "anim"  
ENT.PrintName		= "Electra Kometa[Moving]" 
ENT.SetName		= "Electra Kometa[Moving]" 
ENT.Editable = false
ENT.Spawnable = true
ENT.AdminOnly = false
ENT.Category		= "S.T.A.L.K.E.R. Anomalies"
ENT.Author			= "[Pollitto] Курритто"

if CLIENT then
	language.Add ("kometa_electra", "Electra Kometa")
end

sound.Add( {
	name = "electra_idle",
	channel = CHAN_STATIC,
	volume = 1,
	level = 70,
	pitch = 100,
	sound = "anomaly/electra_idle1.wav"
} )

sound.Add( {
	name = "electra_hit",
	channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitch = 100,
	sound = "anomaly/electra_blast1.mp3"
} )

if SERVER then
	function ENT:Initialize()
		self:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
		self:SetMoveType(MOVETYPE_NONE)
		self:SetSolid(SOLID_BBOX)	
		self:SetCollisionGroup( COLLISION_GROUP_WORLD )
		self:SetName("Kometa")
		self:DrawShadow(false)
		self:SetRenderMode( RENDERMODE_TRANSALPHA )
		self:SetColor( Color( 0, 0, 0, 0 ) )
		self:SetTrigger( 1 )
		self:SetPos( self:GetPos() + Vector(0, 0, 4) )
		self.Entity:SetCollisionBounds( Vector( -50, -50, -5 ), Vector( 50, 50, 80 ) )
	
	    local phys = self:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:Wake()
		end


		self.Pos = self:GetPos()
		self.i = 0
		self.p = 1
		self.target = self:GetPos()
		self.path = {}
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

	function ENT:NextPath()
		if not self.shouldNext and self.dist == 0 then
			self.shouldNext = true
			self.Pos = self:GetPos()
			self.i = 0
			self.p = self.p + 1
			if self.p > #self.path then self.p = 1 end
			self.p = math.Clamp( self.p, 0, #self.path )

			self.shouldNext = false
		end
	end
	
	function ENT:Touch(activator)
		activator:TakeDamage(20, self, self)
	end

	local speed = 256
	function ENT:Think()
		if not self.target then
			self.target = self:GetPos()
		else
			self.target = self.path[self.p]
		end

		self.dist = self:GetPos():Distance(self.target or self.Pos)

		self.i = math.Clamp(self.i + (speed / self.Pos:Distance(self.target or self.Pos)) * FrameTime(), 0, 1)
		self:SetPos(LerpVector(self.i, self.Pos, self.target or self.Pos))

		if self.dist == 0 then self:NextPath() end

		self:NextThink( CurTime() )
		return true

	end
	
	function ENT:StartTouch()
		self:EmitSound("electra_blast")
	end
end

if CLIENT then
	function ENT:Initialize()
		self.particle = CreateParticleSystem( self, "kometa_electra", PATTACH_ABSORIGIN_FOLLOW, 0, Vector(0,0,0) )
		self:EmitSound("electra_idle")
	end
	function ENT:Think()
		if not IsValid(self.particle) then
			self.particle = CreateParticleSystem( self, "kometa_electra", PATTACH_ABSORIGIN_FOLLOW, 0, Vector(0,0,0) )
			self:EmitSound("electra_idle")
			print("Particle re-created for", self)
		end

		local dlight = DynamicLight( self:EntIndex() )
		if ( dlight ) then
			dlight.pos = self:GetPos()
			dlight.r = 76
			dlight.g = 153
			dlight.b = 255
			dlight.brightness = 2
			dlight.Size = 128
			dlight.DieTime = CurTime() + 1
		end

		self:NextThink( CurTime() )
		return true
	end
	function ENT:OnRemove()
		self:StopSound("electra_idle")
	end
end