ITEM.name = "Cooked Headcrab"
ITEM.model = "models/arachnit/steamvr/hla/headcrab_dinner/headcrab_dinner.mdl"
ITEM.hunger = 10
ITEM.description = "A deboned and cooked Headcrab."
ITEM.longdesc = "A cooked and prepared headcrab. It is 'safe' to eat, but isn't very filling nor tasty."
ITEM.quantity = 2
ITEM.price = 20
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