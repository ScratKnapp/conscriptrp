local PLUGIN = PLUGIN
PLUGIN.name = "Rollmod"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "Define roll modifiers on a character to be used by various rolling systems."

ix.char.RegisterVar("GeneralRollMod", {
    field = "generalrollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("StrengthRollMod", {
    field = "strengthrollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("FortitudeRollMod", {
    field = "fortituderollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("FortuneRollMod", {
    field = "fortunerollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("ReflexRollMod", {
    field = "reflexrollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("ObservationRollMod", {
    field = "observationrollmod",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})


ix.command.Add("SetRollMod", {
	description = "Directly set a roll modifier on a character.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
        ix.type.number,
		bit.bor(ix.type.string, ix.type.optional)
	},
	OnRun = function(self, client, target, mod, modtype)

		if not modtype then
			modtype = "GENERAL"
		end
		modtype = string.upper(modtype)

		local str
        local char = target


		if modtype == "GENERAL" or modtype == "GEN" then
        	char.vars.GeneralRollMod = mod
			str = "Set General modifier of " ..target:GetName().. " to ".. mod 
		end

		if modtype == "STRENGTH" or modtype == "STR" then
        	char.vars.StrengthRollMod = mod
			str = "Set Strength modifier of " ..target:GetName().. " to ".. mod 
		end
        
		if modtype == "FORTITUDE" or modtype == "FORTI" then
        	char.vars.FortitudeRollMod = mod
			str = "Set Fortitude modifier of " ..target:GetName().. " to ".. mod 
		end

		if modtype == "FORTUNE" or modtype == "FORTU" then
        	char.vars.FortuneRollMod = mod
			str = "Set Fortune modifier of " ..target:GetName().. " to ".. mod 
		end
		
		if modtype == "REFLEX" or modtype == "REF" then
        	char.vars.ReflexRollMod = mod
			str = "Set Reflex modifier of " ..target:GetName().. " to ".. mod 
		end

		if modtype == "OBSERVATION" or modtype == "OBS" then
        	char.vars.ObservationRollMod = mod
			str = "Set Observation modifier of " ..target:GetName().. " to ".. mod 
		end

        return str or "Cannot find that roll type!"
		
	end
})

ix.command.Add("AddRollMod", {
	description = "Add given number to a character's existing roll modifier.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
        ix.type.number,
		bit.bor(ix.type.string, ix.type.optional)
	},
	OnRun = function(self, client, target, mod, modtype)

		if not modtype then
			modtype = "GENERAL"
		end
		modtype = string.upper(modtype)

		local str
        local char = target


		if modtype == "GENERAL" or modtype == "GEN" then
        	char.vars.GeneralRollMod = char.vars.GeneralRollMod + mod
			str = "Increased General modifier of " ..target:GetName().. " by " ..mod
		end

		if modtype == "STRENGTH" or modtype == "STR" then
        	char.vars.StrengthRollMod = char.vars.StrengthRollMod + mod
			str = "Increased Strength modifier of " ..target:GetName().. " by " ..mod
		end
        
		if modtype == "FORTITUDE" or modtype == "FORTI" then
        	char.vars.FortitudeRollMod = char.vars.FortitudeRollMod + mod
			str = "Increased Fortitude modifier of " ..target:GetName().. " by " ..mod
		end

		if modtype == "FORTUNE" or modtype == "FORTU" then
        	char.vars.FortuneRollMod = char.vars.FortuneRollMod + mod
			str = "Increased Fortune modifier of " ..target:GetName().. " by " ..mod
		end
		
		if modtype == "REFLEX" or modtype == "REF" then
        	char.vars.ReflexRollMod = char.vars.ReflexRollMod + mod
			str = "Increased Reflex modifier of " ..target:GetName().. " by " ..mod
		end

		if modtype == "OBSERVATION" or modtype == "OBS" then
        	char.vars.ObservationRollMod = char.vars.ObservationRollMod + mod
			str = "Increased Observation modifier of " ..target:GetName().. " by " ..mod
		end

		char:Save()
		
        return str or "Cannot find that roll type!"
		
	end
})



ix.command.Add("GetRollMods", {
	description = "Get a character's roll modifications.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
	},
	OnRun = function(self, client, target)
		local str = ""
        local char = target

		if not (char.vars.GeneralRollMod) then
			char.vars.GeneralRollMod = 0
		end

		if not (char.vars.StrengthRollMod) then
			char.vars.StrengthRollMod = 0
		end

		if not (char.vars.FortitudeRollMod) then
			char.vars.FortitudeRollMod = 0
		end

		if not (char.vars.FortuneRollMod) then
			char.vars.FortuneRollMod = 0
		end

		if not (char.vars.ReflexRollMod) then
			char.vars.ReflexRollMod = 0
		end

		if not (char.vars.ObservationRollMod) then
			char.vars.ObservationRollMod = 0
		end

		str = str .. target:GetName() .. " currently has the following roll modifiers:\n"
		str = str.. "General: " ..char.vars.GeneralRollMod .. "\n"
		str = str.. "Strength: " ..char.vars.StrengthRollMod .. "\n"
		str = str.. "Fortitude: " ..char.vars.FortitudeRollMod  .. "\n"
		str = str.. "Fortune: " ..char.vars.FortuneRollMod .. "\n"
		str = str.. "Reflex: " ..char.vars.ReflexRollMod .. "\n"
		str = str.. "Observation: " ..char.vars.ObservationRollMod .. "\n"

        return (str)
		
	end
})

ix.command.Add("MyRollMods", {
	description = "View your current roll modifiers.",
	OnRun = function(self, client)
		local str = ""
        local char = client:GetCharacter()

		if not (char.vars.GeneralRollMod) then
			char.vars.GeneralRollMod = 0
		end

		if not (char.vars.StrengthRollMod) then
			char.vars.StrengthRollMod = 0
		end

		if not (char.vars.FortitudeRollMod) then
			char.vars.FortitudeRollMod = 0
		end

		if not (char.vars.FortuneRollMod) then
			char.vars.FortuneRollMod = 0
		end

		if not (char.vars.ReflexRollMod) then
			char.vars.ReflexRollMod = 0
		end

		if not (char.vars.ObservationRollMod) then
			char.vars.ObservationRollMod = 0
		end

		str = str .. "You currently have the following roll modifiers:\n"
		str = str.. "General: " ..char.vars.GeneralRollMod .. "\n"
		str = str.. "Strength: " ..char.vars.StrengthRollMod .. "\n"
		str = str.. "Fortitude: " ..char.vars.FortitudeRollMod  .. "\n"
		str = str.. "Fortune: " ..char.vars.FortuneRollMod .. "\n"
		str = str.. "Reflex: " ..char.vars.ReflexRollMod .. "\n"
		str = str.. "Observation: " ..char.vars.ObservationRollMod .. "\n"
        return (str)
		
		
	end
})


ix.command.Add("ClearRollMods", {
	description = "Reset all of a character's roll modifiers to zero.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
	},
	OnRun = function(self, client, target)
		local str = ""
        local char = target

		char.vars.GeneralRollMod= 0
		char.vars.StrengthRollMod = 0
		char.vars.FortitudeRollMod = 0
		char.vars.FortuneRollMod = 0
		char.vars.ReflexRollMod = 0
		char.vars.ObservationRollMod = 0

		

        return "Cleared all roll modifiers for " .. target:GetName()
		
	end
})