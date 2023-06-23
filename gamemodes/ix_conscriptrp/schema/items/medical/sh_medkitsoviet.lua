ITEM.name = "AI2 Personal First Aid Kit"
ITEM.description = "A soviet First-Aid Kit with expired medication and pain-relief drugs."
ITEM.longdesc = "An old Soviet medkit that was once equipped with anti-radiation, poison treatment, and other expected threats near the peak of the Cold War. Now all that remains is a small injector vial with some half-decent pain medication inside."
ITEM.model = "models/illusion/eftcontainers/ai2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.quantity = 2
ITEM.price = "100"
ITEM.flag = "1"
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
	
		ix.chat.Send(item.player, "iteminternal", "applies their "..item.name..".", false)


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