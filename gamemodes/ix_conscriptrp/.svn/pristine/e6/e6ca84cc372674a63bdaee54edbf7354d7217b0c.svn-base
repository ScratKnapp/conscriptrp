ITEM.name = "Brawler's Tonic"
ITEM.model = "models/mosi/fnv/props/drink/alcohol/battlebrew.mdl"
ITEM.thirst = 15
ITEM.description = "A cocktail of performance enhancers."
ITEM.longdesc = "A cocktail of whiskey, steroids, and some other secret ingredient (amphetamines) that just sets the drinker off into somewhat of a controlled rage. Usually brewed by the idiotic or scum of the Outlands, and utilized before physical fights."
ITEM.price = 250
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 1
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