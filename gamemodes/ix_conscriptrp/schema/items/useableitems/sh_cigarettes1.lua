ITEM.name = "Universal Union Menthol Cigarettes"
ITEM.description = "A UU-approved pack of cigarettes."
ITEM.longdesc = "With a nicotene-like substance within and a strong mint taste, most smokers used to the real thing would probably quit sooner than get used to dealing with these."
ITEM.model = "models/closedboxshit.mdl"
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