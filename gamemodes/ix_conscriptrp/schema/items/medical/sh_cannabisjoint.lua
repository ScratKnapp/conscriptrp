ITEM.name = "Cannabis Joint"
ITEM.description = "A joint of weed, complete with a filter."
ITEM.longdesc = "It smells wacky, weighs about a gram, makes your throat dry, your eyes watery, and stupid things more funny when you smoke it. A general system depressant, it can be used to help aid exposure to psi either before or after, though it may make your time to react a bit slower or make you take a little bit longer due to your impaired state. Lasts 30 minutes.\n\n +1 Psi\n -5/10 to rolls"
ITEM.model = "models/ethprops/consumable/joint.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.sound = "stalkersound/inv_smoke.mp3"
ITEM.price = "1500"
ITEM.flag = "1"
ITEM.quantity = 1
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
		item.player:AddBuff("buff_radiationremoval", 4, { amount = 1 })

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
