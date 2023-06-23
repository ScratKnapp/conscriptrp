include("shared.lua")

local BubbleMat = Material( "sprites/sent_anomalybubble" )
function ENT:Draw()
	self:DrawShadow(false)
	self:DrawModel()
	local pos = self:GetPos()
	render.SetMaterial( BubbleMat )
	local lcolor = render.ComputeLighting( self:GetPos(), Vector( 0, 0, 1 ) )
	local size = 340
	render.DrawSprite( pos, size, size, Color( lcolor.x, lcolor.y, lcolor.z, 128 ) )
end