ITEM.name = "UU-ORS Autoinjector"
ITEM.description = "A highly advanced Combat-Stimulant."
ITEM.longdesc = "The Universal Union Overwatch Regenerative Stimulant is a top of the line, experimental combat-stimulant utilized by ranking Overwatch Soldiers. It provides subtle increase in performance to standard OTA Personnel, however to standard humans it sends their bodies into highly advanced corkscrew."
ITEM.model = "models/carlsmei/escapefromtarkov/medical/sj1.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.quantity = 1
ITEM.price = "6500"
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