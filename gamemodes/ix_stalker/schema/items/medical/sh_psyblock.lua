ITEM.name = "Psi-Block"
ITEM.model = "models/stalker/item/medical/psy_pills.mdl"
ITEM.description = "Drug designed to protect the body from nervous overload by means of strong emotions or psy-attacks. +1 Psy protection tier (max total 2) for 1 hour and resets Psy hotspot timer. Makes user sluggish (+1 second staggered/stunned) for the duration."
ITEM.category = "Medical"
ITEM.price = 6000
ITEM.flag = "1"

ITEM.functions.Use = {
	sound = "stalker/interface/inv_eat_pills_effect.ogg",
	OnRun = function(itemTable)
		local client = itemTable.player

	end
}
