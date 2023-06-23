ITEM.name = "Antidote"
ITEM.model = "models/kek1ch/drug_antidot.mdl"
ITEM.description = "A combination drug that counter-acts poisoning and chemical weapons inhalation. +1 Chem protection tier (Max 2) for 1 hour. Makes user experience vertigo at random points, making climbing and acrobatic stunts impossible."
ITEM.category = "Medical"
ITEM.price = 6000
ITEM.flag = "1"

ITEM.functions.Use = {
	sound = "stalker/interface/inv_eat_pills_effect.ogg",
	OnRun = function(itemTable)
		local client = itemTable.player

	end
}
