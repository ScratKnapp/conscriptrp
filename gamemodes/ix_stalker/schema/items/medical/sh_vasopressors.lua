ITEM.name = "Vasopressors"
ITEM.description = "A heart medicine used to increase blood pressure in case of heat stroke."
ITEM.longdesc = "In cases of severe heat stroke, the body's blood vessels will dilate and cause weakness & dizziness. Vasopressants can be used to temporarily mitigate such weakness and keep a stalker's body strong enough to circumvent thermal formations, but has a side effect of making open wounds bleed more as a result. Rarely used by rookies, and mostly by experienced stalkers who can't afford better equipment. \n\nResets Thermal hotspot when consumed\nFor one hour:\n+1 Thermal Tier (Max 2)\nBleeding +1"
ITEM.model = "models/ethprops/medical/psy_pills.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.sound = "stalker/interface/inv_eat_pills_effect.ogg"
ITEM.price = "3000"
ITEM.flag = "1"
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
