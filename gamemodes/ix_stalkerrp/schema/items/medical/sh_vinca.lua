ITEM.name = "Vinca"
ITEM.description = "A drug that causes blood to coagulate for open wounds."
ITEM.longdesc = "An ingestible drug to counter-act medium strength bleeding by means of accelerating clotting and increasing blood thickness."
ITEM.model = "models/ethprops/medical/psy_pills.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.sound = "stalker/interface/inv_eat_pills_effect.ogg"
ITEM.price = "2000"
ITEM.flag = "1"
ITEM.quantity = 4
ITEM.weight = 0.01
ITEM.stopsBleed = true

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

local function stopBleed(item)
	local client = item.player
	if(item.stopsBleed) then
		if(timer.Exists(client:Name().."res_bleed")) then
			timer.Remove(client:Name().."res_bleed")
			
			client:Notify("Your bleeding has stopped.")
		end
	end
end

ITEM.functions.use = {
	name = "Swallow",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		ix.chat.Send(item.player, "iteminternal", "swallows some "..item.name..".", false)
		stopBleed(item)
		
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
/*