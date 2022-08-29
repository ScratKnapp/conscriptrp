ITEM.name = "Anti-radiation drugs"
ITEM.description = "Features anti-radiation signs on the package."
ITEM.longdesc = "Mexaminum radiation protection drugs are common in the Zone. When used, this drug induces contraction of peripheral blood vessels and oxygen deprivation, which serve to treat and prevent radiation exposure. The drug does not have severe side effects, although isolated cases of mild nausea, dizziness, cramps and stomach pain have been reported."
ITEM.model = "models/kek1ch/dev_antirad.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.sound = "stalkersound/inv_eat_pills.mp3"
ITEM.price = "1000"
ITEM.flag = "1"
ITEM.quantity = 2
ITEM.weight = 0.05

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
	name = "Swallow",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		item.player:AddBuff("buff_radiationremoval", 8, { amount = 5 })
		ix.chat.Send(item.player, "iteminternal", "swallows some "..item.name..".", false)
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