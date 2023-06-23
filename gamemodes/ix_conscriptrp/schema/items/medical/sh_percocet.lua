ITEM.name = "Percocet"
ITEM.description = "A bottle of prescription painkillers."
ITEM.longdesc = "A pill bottle with some heavy painkillers inside. Percocet is a known opiate, and thus carries harmful side-effects both long term and short term. Use absolutely when needed and in moderation. This specific drug is produced by the Civil Worker's Union, despite its adverse effects it is known to be a heavily restricted, prescription-based treatment for Upper-Tier Loyalists."
ITEM.model = "models/hlvr/props/bottles/medicine_bottle_2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.quantity = 3
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
	
		ix.chat.Send(item.player, "iteminternal", "uses their "..item.name..".", false)


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
		return self.description
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)

		draw.SimpleText(item:GetData("quantity", item.quantity).."/"..item.quantity, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end