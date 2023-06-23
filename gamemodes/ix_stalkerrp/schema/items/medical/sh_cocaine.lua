ITEM.name = "Cocaine"
ITEM.description = "Imported cocaine."
ITEM.longdesc = "Small aluminium case containing cocaine and the tools facilitating use. Cocaine is a powerful nervous system stimulant. Cocaine increases alertness, induces feelings of well-being, competence and sexuality. Anxiety, paranoia and restlessness are common side effects. With excessive dosage, tremors, convulsions and increased body temperature are observed. Bandits are known for sniffing this drug right before launching an assault or ambush."
ITEM.model = "models/kek1ch/drink_cocaine.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "750"
ITEM.flag = "1"
ITEM.quantity = 3
ITEM.sound = "stalkersound/inv_sniff_2.mp3"
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
	name = "Snort",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		item.player:AddBuff("buff_staminarestore", 150, { amount = 5 })
		
		ix.chat.Send(item.player, "iteminternal", "snorts some "..item.name..".", false)

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