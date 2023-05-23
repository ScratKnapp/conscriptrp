ITEM.name = "Preserved Wet Catfood"
ITEM.model = "models/illusion/eftcontainers/beefstew2.mdl"
ITEM.hunger = 40
ITEM.description = "A preserved can of Pre-War catfood."
ITEM.longdesc = "A cylindrical alluminum can of some type of ground up meat and gravy from the Pre-Occupation World. Some honestly describe this meal as delicious when served with mashed potatoes, otherwise it makes for an alright snack. Obviously meant for cats, but hey, desperate times call for desperate measures."
ITEM.quantity = 1
ITEM.price = 40
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 1
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()