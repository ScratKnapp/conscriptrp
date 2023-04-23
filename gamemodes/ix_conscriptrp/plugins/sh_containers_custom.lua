--[[
	ix.container.Register(model, {
		name = "Crate",
		description = "A simple wooden create.",
		width = 4,
		height = 4,
		locksound = "",
		opensound = ""
	})
]]--

PLUGIN.name = "Custom Containers Test"
PLUGIN.author = "Bath"
PLUGIN.description = "At."

ix.container.Register("models/props_junk/wood_crate001a.mdl", {
	name = "Crate",
	description = "A simple wooden crate.",
	width = 4,
	height = 4,
})

ix.container.Register("models/props_c17/lockers001a.mdl", {
	name = "Locker",
	description = "A white locker.",
	width = 3,
	height = 5,
})

ix.container.Register("models/props_wasteland/controlroom_storagecloset001a.mdl", {
	name = "Metal Cabinet",
	description = "A green metal cabinet.",
	width = 8,
	height = 10,
})

ix.container.Register("models/props_wasteland/controlroom_storagecloset001b.mdl", {
	name = "Metal Cabinet",
	description = "A green metal cabinet.",
	width = 8,
	height = 10,
})

ix.container.Register("models/props_wasteland/controlroom_filecabinet001a.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_wasteland/controlroom_filecabinet002a.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 3,
	height = 6,
})

ix.container.Register("models/props_lab/filecabinet02.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_c17/furniturefridge001a.mdl", {
	name = "Refrigerator",
	description = "A metal box for keeping food in.",
	width = 6,
	height = 8,
})

ix.container.Register("models/props_wasteland/kitchen_fridge001a.mdl", {
	name = "Large Refrigerator",
	description = "A large metal box for storing even more food in.",
	width = 6,
	height = 8,
})

ix.container.Register("models/props_junk/trashbin01a.mdl", {
	name = "Trash Bin",
	description = "What do you expect to find in here?",
	width =4,
	height =6,
})

ix.container.Register("models/props_junk/trashdumpster01a.mdl", {
	name = "Dumpster",
	description = "A dumpster meant to stow away trash. It emanates an unpleasant smell.",
	width = 14,
	height = 10
})

ix.container.Register("models/items/ammocrate_smg1.mdl", {
	name = "Ammo Crate",
	description = "A heavy crate that stores ammo.",
	width = 10,
	height = 6,
	OnOpen = function(entity, activator)
		local closeSeq = entity:LookupSequence("Close")
		entity:ResetSequence(closeSeq)

		timer.Simple(2, function()
			if (entity and IsValid(entity)) then
				local openSeq = entity:LookupSequence("Open")
				entity:ResetSequence(openSeq)
			end
		end)
	end
})

ix.container.Register("models/props_forest/footlocker01_closed.mdl", {
	name = "Footlocker",
	description = "A small chest to store belongings in.",
	width = 5,
	height = 3
})

ix.container.Register("models/Items/item_item_crate.mdl", {
	name = "Item Crate",
	description = "A crate to store some belongings in.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_c17/cashregister01a.mdl", {
	name = "Cash Register",
	description = "A register with some buttons and a drawer.",
	width = 2,
	height = 1
})

ix.container.Register("models/mosi/fallout4/props/junk/ammobag.mdl", {
	name = "Torn Pouch",
	description = "A worn ammo pouch.",
	width = 1,
	height = 1
})

ix.container.Register("models/illusion/eftcontainers/thermobag.mdl", {
	name = "Cooler",
	description = "A commercial cooler for keeping food nice and chilled.",
	width = 4,
	height = 4
})

ix.container.Register("models/warz/items/lootcrate.mdl", {
	name = "Small Crate",
	description = "A small storage crate",
	width = 2,
	height = 2
})

ix.container.Register("models/illusion/eftcontainers/medscase.mdl", {
	name = "Medical Case",
	description = "A hardcase for safekeeping of medical items.",
	width = 4,
	height = 3
})

ix.container.Register("models/illusion/eftcontainers/ammocase.mdl", {
	name = "Munitions Crate",
	description = "A hardcase for storing ammo and magazines.",
	width = 2,
	height = 3
})

ix.container.Register("models/warz/items/lockbox.mdl", {
	name = "Reinforced Safe",
	description = "A heavy reinforced safe.",
	width = 4,
	height = 6
})

ix.container.Register("models/ez2models/props/props_arbeit/humidor.mdl", {
	name = "Jewelery Box",
	description = "A box for storing jewelery.",
	width = 2,
	height = 2
})

ix.container.Register("models/mosi/fnv/props/health/firstaidkit.mdl", {
	name = "First Aid Case",
	description = "A case for storing first aid essentials.",
	width = 3,
	height = 3
})

ix.container.Register("models/mosi/fallout4/props/junk/breadbox.mdl", {
	name = "Bread Box",
	description = "A plastic box meant to keep loaves of bread fresh.",
	width = 1,
	height = 2
})

ix.container.Register("models/warz/items/lootcrate.mdl", {
	name = "Small Crate",
	description = "A small storage crate.",
	width = 2,
	height = 2
})

ix.container.Register("models/mosi/fallout4/props/fortifications/woodencrate03.mdl", {
	name = "Long Wooden Crate",
	description = "A long wooden crate",
	width = 7,
	height = 3
})

ix.container.Register("models/z-o-m-b-i-e/st/equipment_cache/st_equipment_seif_04.mdl", {
	name = "Wall Safe",
	description = "A small combination safe that's secured in a wall.",
	width = 4,
	height = 2
})

ix.container.Register("models/z-o-m-b-i-e/st/equipment_cache/st_equipment_electric_box_02.mdl", {
	name = "Maintenance Cabinet",
	description = "A small metal box affixed to a wall.",
	width = 3,
	height = 3
})

ix.container.Register("models/z-o-m-b-i-e/st/equipment_cache/st_equipment_box_02.mdl", {
	name = "Soviet CBRN Crate",
	description = "A metal crate related to Radiological Hazards.",
	width = 7,
	height = 4
})

ix.container.Register("models/z-o-m-b-i-e/st/equipment_cache/st_equipment_box_01.mdl", {
	name = "Tool Box",
	description = "A small metal tool box, fit for storing tools.",
	width = 5,
	height = 3
})

ix.container.Register("models/z-o-m-b-i-e/st/box/st_expl_dinamit_01.mdl", {
	name = "HE Munitions Box",
	description = "A small wooden crate related to Explosives.",
	width = 4,
	height = 2
})