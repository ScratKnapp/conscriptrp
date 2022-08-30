ITEM.name = "Swamper's Delight"
ITEM.model = "models/props_lab/jar01b.mdl"
ITEM.thirst = 60
ITEM.description = "A mason jar of deep-blue liquid."
ITEM.longdesc = "A mason jar of sweet Bilberry juice infused with a light taste of Vodka. A soothing and refreshing cocktail made of Vodka mixed with Bog-Grown Bilberries found all across Eastern Europe. A common favorite among Swamp-Trekking stalkers, often said to help relieve the uncomfortable feeling of the warm, humid climate found in the Great Swamps and Northern Marshes. \n\n Thermal +1 for 30 mins"
ITEM.quantity = 3
ITEM.price = 3500
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_drink_flask.mp3"
ITEM.flag = "A"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.12
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()