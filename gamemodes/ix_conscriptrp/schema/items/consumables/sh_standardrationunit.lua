ITEM.name = "Universal Union Standard Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinar.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union issued Minimal Ration Unit."
ITEM.longdesc = "Standard Ration Units are the baseline meals. Often plain and unimaginitive, they're still a decent offering with enough calories, vitamins, and minimals to keep one properly healthy, but not enough to grow physically strong to rebel."
ITEM.quantity = 1
ITEM.price = 30
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
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