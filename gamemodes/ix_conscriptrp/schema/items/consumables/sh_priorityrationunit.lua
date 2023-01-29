ITEM.name = "Universal Union Priority Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinat.mdl"
ITEM.hunger = 30
ITEM.description = "A Universal Union issued Priority Ration Unit."
ITEM.longdesc = "The best of the best when it comes to ration units. Issued to high priority Citizens, such as Administrators, CWU leadership, or other Combine's pets. The menu is vast and flavorful despite its plain boxed appearence, proving that the Combine can make positive improvements to the culinary arts just as much as they lower the bar. Too bad most people are never going to see it."
ITEM.quantity = 1
ITEM.price = 350
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