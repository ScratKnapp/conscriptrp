ITEM.name = "Star of the Union Cigar Box"
ITEM.description = "An oak, hand-carved box created as a décor piece for the highest tier of elected Loyalists."
ITEM.longdesc = "Inside are eight black-wrapped, flavored Cigars with a lavish smell and taste to each. Special occasions only.."
ITEM.model = "models/mosi/fallout4/props/junk/cigarcarton.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Medical"
ITEM.sound = "stalkersound/inv_smoke.mp3"
ITEM.price = "500"
ITEM.flag = "1"
ITEM.quantity = 8
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
		ix.chat.Send(item.player, "iteminternal", "takes a cigar from their cigar box and smokes it.", false)

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