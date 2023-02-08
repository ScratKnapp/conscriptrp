ITEM.name = "Maxwell"
ITEM.description = "Cat."
ITEM.model = "models/dingus/dingus.mdl"
ITEM.class = "weapon_cat"
ITEM.weaponCategory = "melee"
ITEM.price = 1500
ITEM.flag = "1"
ITEM.height = 2
ITEM.width = 4
ITEM.category = "Tools"
ITEM.canAttach = false
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 3
ITEM.modifier = 5
ITEM.isPLWeapon = true
ITEM.Pen = 2
ITEM.Special = "UnBal, Tool"



if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		if (item:GetData("equip")) then
			surface.SetDrawColor(110, 255, 110, 255)
			--surface.DrawRect(w - 14, h - 14, 8, 8)
		else
			surface.SetDrawColor(255, 110, 110, 255)
		end

		surface.SetMaterial(item.equipIcon)
		surface.DrawTexturedRect(w-23,h-23,19,19)
		
	end

	function ITEM:PopulateTooltip(tooltip)
		if (self:GetData("equip")) then
			local name = tooltip:GetRow("name")
			name:SetBackgroundColor(derma.GetColor("Success", tooltip))
		end
	end
end