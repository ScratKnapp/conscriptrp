ITEM.name = "Paper"
ITEM.model = "models/props_c17/paper01.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A paper which one you can write on."
ITEM.category = "junk"
ITEM.price = 50
ITEM.weight = 0.01
ITEM.flag = "1"

ITEM.functions.use = {
	name = "Interact",
	icon = "icon16/pencil.png",
	OnRun = function(item)
		local client = item.player
		local id = item:GetID()
		if (id) then
			netstream.Start(client, "receivePaper", id, item:GetData("PaperData") or "")
		end
		return false
	end
}

