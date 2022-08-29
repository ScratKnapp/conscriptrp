
-- The shared init file. You'll want to fill out the info for your schema and include any other files that you need.

-- Schema info
Schema.name = "Call of the Zone"
Schema.author = "faggot, verne"
Schema.description = "A STALKER Roleplaying gamemode with tabletop elements."
--Schema.logo = "vgui/background/wallpaper.jpg"


ix.util.Include("libs/thirdparty/sh_netstream2.lua")

-- Additional files that aren't auto-included should be included here. Note that ix.util.Include will take care of properly
-- using AddCSLuaFile, given that your files have the proper naming scheme.

-- You could technically put most of your schema code into a couple of files, but that makes your code a lot harder to manage -
-- especially once your project grows in size. The standard convention is to have your miscellaneous functions that don't belong
-- in a library reside in your cl/sh/sv_schema.lua files. Your gamemode hooks should reside in cl/sh/sv_hooks.lua. Logical
-- groupings of functions should be put into their own libraries in the libs/ folder. Everything in the libs/ folder is loaded
-- automatically.
ix.util.Include("cl_schema.lua")
ix.util.Include("sv_schema.lua")

ix.util.Include("cl_skin.lua")

ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sv_hooks.lua")

-- You'll need to manually include files in the meta/ folder, however.
ix.util.Include("meta/sh_character.lua")
ix.util.Include("meta/sh_player.lua")

ix.flag.Add("1", "T1 Trade.")
ix.flag.Add("A", "Admin")
ix.flag.Add("N", "Event/Customization")
ix.flag.Add("P", "PAC Access")
ix.flag.Add("3", "T2 Trade.")
ix.flag.Add("4", "T3 Trade.")
ix.flag.Add("5", "Consumables")
ix.flag.Add("6", "Armor Technician")
ix.flag.Add ("7", "Weapon Technician")



ALWAYS_RAISED["weapon_flashlight"] = true
ALWAYS_RAISED["stalker_bolt"] = true
ALWAYS_RAISED["detector_bear"] = true
ALWAYS_RAISED["detector_veles"] = true
ALWAYS_RAISED["detector_echo"] = true
ALWAYS_RAISED["guitar"] = true

ix.currency.symbol = "₽"
ix.currency.singular = "ruble"
ix.currency.plural = "rubles"

-- We will use this better later
local stalker_models = { 	
	["models/Barney.mdl"] = true,
	["models/nasca/stalker/male_berill1.mdl"] = true,
	["models/nasca/stalker/male_sunset_lone.mdl"] = true,
	["models/nasca/stalker/male_ssp_eco.mdl"] = true,
	["models/nasca/stalker/female_ssp_eco.mdl"] = true,
	["models/nasca/stalker/male_eagle_lone.mdl"] = true,
	["models/nasca/stalker/male_expedition.mdl"] = true,
	["models/nasca/stalker/female_midnight_lone.mdl"] = true,
	["models/nasca/stalker/female_sunrise_lone.mdl"] = true,
	["models/nasca/stalker/male_berill5m_lone.mdl"] = true,
	["models/nasca/stalker/male_cs1a.mdl"] = true,
	["models/nasca/stalker/male_cs1b.mdl"] = true,
	["models/nasca/stalker/male_cs2.mdl"] = true,
	["models/nasca/stalker/male_cs3a.mdl"] = true,
	["models/nasca/stalker/male_cs3b.mdl"] = true,
	["models/nasca/stalker/female_expedition.mdl"] = true,
	["models/nasca/stalker/male_exo_lone.mdl"] = true,
	["models/nasca/stalker/male_hawk_lone.mdl"] = true,
	["models/nasca/stalker/male_jupiter_duty.mdl"] = true,
	["models/nasca/stalker/male_midnight_lone.mdl"] = true,
	["models/nasca/stalker/male_nbc_lone.mdl"] = true,
	["models/nasca/stalker/male_seva_lone.mdl"] = true,
	["models/nasca/stalker/male_stingray9_lone.mdl"] = true,
	["models/nasca/stalker/male_sunrise_lone.mdl"] = true,
	["models/silver/stalker/female_cs1a_lone.mdl"] = true,
	["models/silver/stalker/female_cs1b_lone.mdl"] = true,
	["models/silver/stalker/female_dusk_lone.mdl"] = true,
	["models/silver/stalker/female_nbc_lone.mdl"] = true,
	["models/silver/stalker/female_seva_lone.mdl"] = true,
	["models/silver/stalker/male_cs1a_lone.mdl"] = true,
	["models/silver/stalker/male_cs1b_lone.mdl"] = true,
	["models/silver/stalker/female_sunset_lone.mdl"] = true





}

for k, v in pairs(stalker_models) do
	player_manager.AddValidModel("stalker_default", k)
	util.PrecacheModel(k)
end

player_manager.AddValidHands( "stalker_default", "models/arms/c_arms_stalker.mdl", 0, 0 )