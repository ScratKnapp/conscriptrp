ITEM.name = "Cooked Houndeye Haunch"
ITEM.model = "models/gibs/houndeye/left_leg.mdl"
ITEM.hunger = 30
ITEM.description = "The hind leg of a Houndeye, its particularly unsafe meat boiled to an edible state."
ITEM.longdesc = "Usually utilized in recipes, though fine to eat on its own. It tastes similar to rabbit, although a bit more rubbery."
ITEM.quantity = 1
ITEM.price = 25
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.flag = "5"
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()