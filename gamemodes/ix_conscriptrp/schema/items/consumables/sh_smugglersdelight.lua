ITEM.name = "Smuggler's Delight"
ITEM.model = "models/mosi/fnv/props/drink/alcohol/martini.mdl"
ITEM.thirst = 50
ITEM.description = "A bottle filled with a yellowish liquid."
ITEM.longdesc = "It smells of Pineapple, and tastes of some sort of cocktail mixture of different fruit-juices and Gin. Its name is earned by its appearance most often being found among traveling merchants, who tend to have a bit more spending cash when picking their fix."
ITEM.price = 125
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 2
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