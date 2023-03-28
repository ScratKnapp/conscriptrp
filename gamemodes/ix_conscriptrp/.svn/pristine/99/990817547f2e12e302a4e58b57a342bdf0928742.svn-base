
-- The shared init file. You'll want to fill out the info for your schema and include any other files that you need.

-- Schema info
Schema.name = "Conscript Military RP"
Schema.author = "Scrat Knapp and many others"
Schema.description = "A Half Life 2 Beta-inspired Roleplaying gamemode with tabletop elements."
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

--ix.util.Include("cl_skin.lua")

ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sv_hooks.lua")
ix.util.Include("sh_voices.lua")

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
ix.flag.Add("6", "Tech Nerd Craftables")
ix.flag.Add ("7", "Field Medic Craftables")
ix.flag.Add("8", "Pyromaniac Craftables")



ix.anim.SetModelClass("models/dpfilms/metropolice/biopolice.mdl", "metrocop") -- GRID
ix.anim.SetModelClass("models/dpfilms/metropolice/civil_medic.mdl", "metrocop") -- HELIX
ix.anim.SetModelClass("models/dpfilms/metropolice/rtb_police.mdl", "metrocop") -- SHIELD
ix.anim.SetModelClass("models/dpfilms/metropolice/hunter_police.mdl", "metrocop") -- HAMMER
ix.anim.SetModelClass("models/policetrench.mdl", "metrocop") -- JURY
ix.anim.SetModelClass("models/dpfilms/metropolice/hdpolice.mdl", "metrocop") -- RCT
ix.anim.SetModelClass("models/dpfilms/metropolice/urban_police.mdl", "metrocop") -- UNION
ix.anim.SetModelClass("models/dpfilms/metropolice/police_bt.mdl", "metrocop") -- Command
ix.anim.SetModelClass("models/dpfilms/metropolice/playermodels/elite_police.mdl", "metrocop") -- High Command



ix.currency.symbol = "Ŧ"
ix.currency.singular = "token"
ix.currency.plural = "tokens"
