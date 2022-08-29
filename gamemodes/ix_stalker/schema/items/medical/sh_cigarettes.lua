ITEM.name = "Cigarettes"
ITEM.description = "An old pack of cigarettes, a bit damaged, but still smokable."
ITEM.longdesc = "Old Russian cigarettes commonly sold throughout the exclusion zone, containing tobacco and various other chemicals within it. Notoriously bad for someone's health."
ITEM.model = "models/ethprops/consumable/cigar1.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.sound = "stalkersound/inv_smoke.mp3"
ITEM.price = "500"
ITEM.flag = "1"
ITEM.quantity = 6
ITEM.weight = 0.1

function ITEM:GetDescription()
	if (!self.entity or !IsValid(self.entity)) then
		local quant = self:GetData("quantity", self.quantity)
		local str = self.longdesc.."\n \nThere's only "..quant.." uses left."

		return str
	else
		return self.desc
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)

		draw.SimpleText(item:GetData("quantity", item.quantity).."/"..item.quantity, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

ITEM.functions.use = {
	name = "Smoke",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		item.player:AddBuff("buff_radiationremoval", 4, { amount = 1 })

		ix.chat.Send(item.player, "iteminternal", "smokes a cigarette.", false)

		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end
		
		
		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
