ITEM.name = "Military Binoculars"
ITEM.description = "Standard Ukrainian-issue military binoculars with maximum magnification of x7.5. Useful in the Zone in that they allow its owner to observe things from a distance. Very durable."
ITEM.model = "models/warz/items/binocs.mdl"
ITEM.class = "weapon_bp_binoculars"
ITEM.weaponCategory = "binoculars"
ITEM.price = 2000
ITEM.flag = "1"
ITEM.height = 1
ITEM.width = 2
ITEM.category = "Electronics"
ITEM.canAttach = false
ITEM.weight = 0.5
ITEM.noAmmo = true
ITEM.iconCam = {
	pos = Vector(33, 3.6, 0),
	ang = Angle(0, 180, 0),
	fov = 12
}

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("durability") then
		self:SetData("durability", 10000)
	end
end