ITEM.name = "Oatmeal"
ITEM.model = "models/illusion/eftcontainers/oatmeal.mdl"
ITEM.hunger = 14
ITEM.description = "A box of oatmeal flakes."
ITEM.longdesc = "Package of oat flakes, primary component of healthy porridge for breakfast. While it contains plenty of protein, the effort it generally takes to prepare in the Zone discourages most from packing it, making it a fairly unpopular option among Stalkers."
ITEM.quantity = 8
ITEM.price = 800
ITEM.width = 1
ITEM.height = 2
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_ration2.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.05
ITEM.heal = 5
ITEM.healot = 3
ITEM:DecideFunction()