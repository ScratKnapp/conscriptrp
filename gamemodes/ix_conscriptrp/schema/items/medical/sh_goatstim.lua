ITEM.name = "G.O.A.T Stimulant"
ITEM.description = "A strange cocktail mix of drugs."
ITEM.longdesc = "Gabapentin, Oxycodone, Autoimmune Trigger Stimulant. This Cocktail of Anti-Seizure medication, painkillers, stimulants, and other dangerous substances in a highly dangerous mixture. It is unknown who produced such an injector, however its effects are known to be very diverse and at times, fatal."
ITEM.model = "models/carlsmei/escapefromtarkov/medical/zagustin.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.quantity = 1
ITEM.price = "5000"
ITEM.flag = "1"
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
	
		ix.chat.Send(item.player, "iteminternal", "injects their "..item.name..".", false)


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