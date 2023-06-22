AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:Initialize()
	if ( CLIENT ) then return end
	self:SetModel( "models/hunter/blocks/cube025x025x025.mdl" )
	self:SetTrigger(true)
	self:SetAngles(self:GetAngles()+Angle(0,180,0))
	self:SetSolid( SOLID_BBOX )
	self:SetUseType( SIMPLE_USE )
	self.Entered = false	
	self:DrawShadow(false)
	self.Entity:SetCollisionBounds( Vector( -30, -30, -5 ), Vector( 30, 30, 0 ) )
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
end

function ENT:StartTouch( ply )
	
	if ply:IsPlayer() then
		if self.Entered == false then
			local dest = ents.FindByName("anomaly_"..self:GetTpDest())
			if dest[1] ~= nil then
				ply:SetPos(dest[1]:GetPos()+dest[1]:GetAngles():Forward()*-70)
				self:EmitSound( "tele.wav", 100 )
				dest[1]:EmitSound( "anomaly/teleport_incoming.mp3", 70 )
				ply:ScreenFade(1, Color(255,255,255), 1, 0.5)
				ply:SetEyeAngles((dest[1]:GetPos() - ply:GetPos()):Angle()+Angle(0,180,0))
				dest[1].Entered = true
				timer.Simple(2,function() dest[1].Entered = false end)
				--print(dest[1], "unentered")
			end
		end
	end
		
end

function ENT:EndTouch( ply )
end

function ENT:Think()
	if CLIENT then return end

	self:SetName(self:GetTpName() ~= "" and "anomaly_"..self:GetTpName() or "NO_EXIT"..self:EntIndex())

end