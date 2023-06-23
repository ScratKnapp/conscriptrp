AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:Initialize()

	if ( CLIENT ) then return end
	self:SetModel( "models/space_anomaly.mdl" )

	self:SetTrigger(true)

	self:RebuildPhysics()

	self:SetUseType( SIMPLE_USE )

	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

	self.Pos = self:GetPos()

	self.props1 = {}
	self.props2 = {}
	self.props3 = {}
end

function ENT:StartTouch( ply )
	
	if ply:IsPlayer() then
		if Entered == false then
			local dest = ents.FindByName("anomaly_bubble_"..self:GetDestinationName())
			if dest[1] ~= nil then
				ply:SetPos(dest[1]:GetPos()+Vector(100,0,0))
				ply:EmitSound( "tele.wav", 55 )
				--ply:ScreenFade(1, Color(255,255,255), 1, 0.5)
				Entered = true
				ply:SetVelocity(20*Vector( 10, 0, 5 ))
			end
		end
	end
		
end

function ENT:EndTouch( ply )
	timer.Simple(2,function() Entered = false end)
end



local partModel = {
	"models/hunter/blocks/cube2.mdl",
	"models/hunter/blocks/cube3.mdl",
	"models/hunter/blocks/cube4.mdl",
	"models/hunter/blocks/cube5.mdl",
	"models/hunter/blocks/cube6.mdl",
	"models/hunter/blocks/cube7.mdl",
}
function ENT:Think()
	if CLIENT then return end

	self:SetName(self:GetBubbleName() ~= "" and "anomaly_bubble_"..self:GetBubbleName() or "NO_EXIT"..self:EntIndex())

	self.Pos = self:GetPos()

		local quality = 16

		for i = 1, quality do
			self.x = math.random()>0.5 and math.sin( math.rad(i*360)/quality) or -math.sin( math.rad(i*360)/quality)
			self.partPos = self:GetPos()+Vector( self.x*self:BoundingRadius(), -math.cos( math.rad(i*360)/quality)*self:BoundingRadius(), math.sin( math.rad(i*360)/quality)*self:BoundingRadius() )
			self.partPos2 = self:GetPos()+Vector( self.x*self:BoundingRadius(), math.cos( math.rad(i*360)/quality)*self:BoundingRadius(), math.cos( math.rad(i*360)/quality)*self:BoundingRadius() )
			self.partPos3 = self:GetPos()+Vector( self.x*self:BoundingRadius(), -math.cos( math.rad(i*360)/quality)*self:BoundingRadius(), math.cos( math.rad(i*360)/quality)*self:BoundingRadius() )

			self.ang1 = self:GetPos() - self.partPos
			self.ang2 = self:GetPos() - self.partPos2
			self.ang3 = self:GetPos() - self.partPos3

			if IsValid(self.props1[i]) then self.props1[i]:Remove() end
			if IsValid(self.props2[i]) then self.props2[i]:Remove() end
			if IsValid(self.props3[i]) then self.props3[i]:Remove() end

			if math.random(0,2) == 1 then
				self.props1[i] = ents.Create( "prop_physics" )
				if ( !IsValid( self.props1[i] ) ) then return end 
				self.props1[i]:SetModel( partModel[math.random(#partModel)] )
				self.props1[i]:SetAngles( self.ang1:Angle() )
				self.props1[i]:SetPos( self.partPos )
				self.props1[i]:Spawn()
				self.props1[i]:SetCollisionGroup(COLLISION_GROUP_WORLD)
				self.props1[i]:DrawShadow(false)
				self.props1[i]:SetNotSolid( true )
				self.props1[i]:SetParent(self)
			end

			if math.random(0,2) == 1 then
				self.props2[i] = ents.Create( "prop_physics" )
				if ( !IsValid( self.props2[i] ) ) then return end
				self.props2[i]:SetModel( partModel[math.random(#partModel)] )
				self.props2[i]:SetAngles( self.ang2:Angle()+Angle(0,0,0) )
				self.props2[i]:SetPos( self.partPos2 )
				self.props2[i]:Spawn()
				self.props2[i]:SetCollisionGroup(COLLISION_GROUP_WORLD)
				self.props2[i]:DrawShadow(false)
				self.props2[i]:SetNotSolid( true )
				self.props2[i]:SetParent(self)
			end

			if math.random(0,2) == 1 then
				self.props3[i] = ents.Create( "prop_physics" )
				if ( !IsValid( self.props3[i] ) ) then return end
				self.props3[i]:SetModel( partModel[math.random(#partModel)] )
				self.props3[i]:SetAngles( self.ang3:Angle()+Angle(0,0,0) )
				self.props3[i]:SetPos( self.partPos3 )
				self.props3[i]:Spawn()
				self.props3[i]:SetCollisionGroup(COLLISION_GROUP_WORLD)
				self.props3[i]:DrawShadow(false)
				self.props3[i]:SetNotSolid( true )
				self.props3[i]:SetParent(self)
			end
		end
	self:NextThink( CurTime() + 0.1 )
	return true
end

if ( SERVER ) then return end