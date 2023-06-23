ITEM.name = "Universal Union Beer"
ITEM.model = "models/bioshockinfinite/hext_bottle_lager.mdl"
ITEM.thirst = 10
ITEM.description = "Universal Union approved beer substitute."
ITEM.longdesc = "This UU-branded bottle of beer has an alcohol content of 0.5% ABV, or roughly one tenth that of beers before the war. It's effectively water with barley flavoring."
ITEM.quantity = 1
ITEM.price = 30
ITEM.width = 1
ITEM.height = 1
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