ITEM.name = "Hemostatic Agent"
ITEM.description = "A packet of quick-coagulating disinfectant powder for open wounds."
ITEM.longdesc = "A packet of quick-coagulating disinfectant powder. It's known to cause a highly stinging pain, similar to that of applying rubbing alcohol to a fresh wound. It helps coagulate and treat deeper wounds."
ITEM.model = "models/illusion/eftcontainers/galette.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "350"
ITEM.flag = "1"
ITEM.quantity = 1
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
	
		ix.chat.Send(item.player, "iteminternal", "applies their "..item.name..".", false)


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