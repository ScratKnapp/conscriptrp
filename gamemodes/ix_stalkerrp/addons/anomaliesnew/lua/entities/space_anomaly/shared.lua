ENT.Base = "base_anim" 
ENT.PrintName = "Space Bubble"
ENT.Author = "Limta Roulence & [Pollitto] Курритто"
ENT.Information = "bulb"
ENT.Category = "S.T.A.L.K.E.R. Anomalies"
ENT.Editable = false
ENT.Spawnable = true
ENT.AdminOnly = false
ENT.Editable = true

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
if CLIENT then
	language.Add ("space_anomaly", "Space Bubble")
end

function ENT:SetupDataTables()

	self:NetworkVar( "String", 0, "BubbleName", { KeyName = "bubname", Edit = { type = "Generic", order = 1 } } )
	self:NetworkVar( "String", 1, "DestinationName", { KeyName = "destname", Edit = { type = "Generic", order = 2 } } )

	if SERVER then self:SetName("anomaly_bubble_"..self:GetBubbleName()) end
end

function ENT:SpawnFunction( ply, tr, ClassName )

	if ( !tr.Hit ) then return end

	local size = 512
	local ent = ents.Create( ClassName )
	local Entered = false

	ent:SetPos( tr.HitPos + tr.HitNormal * size/2 )
	ent:Spawn()
	ent:Activate()

	return ent
end

function ENT:RebuildPhysics( value )

	local size = 430 / 6.4
	self:PhysicsInitSphere( size, "water" )
	self:SetCollisionBounds( Vector( -size, -size, -size ), Vector( size, size, size ) )

end