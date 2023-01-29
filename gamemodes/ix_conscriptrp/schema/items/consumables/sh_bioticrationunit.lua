ITEM.name = "Universal Union Biotic Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinas.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union issued Biotic Ration Unit."
ITEM.longdesc = "Biotic Ration Units were devised specifically for enslaved Vortigaunts due to their unique dietary needs. Only one menu item - blended headcrab with some mild depressants to keep the beings docile. Although technically edible by humans, its horrific rotten flesh smell and taste makes that a tough endeavor. Vorts, for their part, are generally content with the offering. SUSTENANCE!"
ITEM.quantity = 1
ITEM.price = 15
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