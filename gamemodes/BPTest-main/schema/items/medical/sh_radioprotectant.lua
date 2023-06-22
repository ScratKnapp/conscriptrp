ITEM.name = "Radio Protectant"
ITEM.model = "models/kek1ch/drug_radioprotector.mdl"
ITEM.description = "Drug designed to protect the body from absorbing gamma radiation. +1 Rad protection tier (max total 2) for 1 hour. Gives user tremors, greatly reducing his accuracy."
ITEM.category = "Medical"
ITEM.price = 6000
ITEM.flag = "1"

ITEM.functions.Use = {
	sound = "stalker/interface/inv_eat_pills_effect.ogg",
	OnRun = function(itemTable)
		local client = itemTable.player

	end
}
