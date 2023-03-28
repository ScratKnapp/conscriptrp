ITEM.name = "Preserved Vodka"
ITEM.model = "models/vodka.mdl"
ITEM.thirst = 50
ITEM.description = "A bottle of home-brewed Vodka."
ITEM.longdesc = "A glass bottle of Russian Red's state of the arc Vodka. It's been sealed away since the Prewar, and kept in pristine condition. Such an amenity is valued by all sorts of individuals, despite it being Contraband."
ITEM.price = 400
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 4
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()