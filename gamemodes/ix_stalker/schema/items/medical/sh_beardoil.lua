ITEM.name = "Beard Oil"
ITEM.model = "models/kek1ch/drink_flask.mdl"
ITEM.description = "A green salve used to temporarily harden suits against chemical threats."
ITEM.longdesc = "With the knowledge of a specialist, a Beard artifact can be distilled into a soupy texture that can be slathered onto a suit as a salve to temporarily imbue a version of its effects without a need for an artifact container. After it dries, it takes the appearence of green glue that can be scraped off. \n\nFor 20 Minutes:\nIf not in hotspot: +1 Chem Tier\nIf in hotspot: +4 Rounds\nImpact -1" 
ITEM.quantity = 1
ITEM.price = 0
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "A"

ITEM.functions.Use = {
	sound = "items/battery_pickup.wav",
	OnRun = function(itemTable)
		local client = itemTable.player


	end
}

ITEM.weight = 0.1
