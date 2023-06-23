PLUGIN.name = "Attributes"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "RPG Attributes for Frontline CMRP and some extra commands"

ix.config.Add("attributeStartingPoints", 25, "The amount of attribute points a new character can distibute upon creation.", nil, {
	data = {min = 1, max = 100},
	category = "Characters"
})

ix.command.Add("CharShowAttribs", {
	description = "List the perks the given character currently has.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character
	},

	OnRun = function(self, client, target)
	
		local str = ""
		str = str.. target:GetName().. " has the following attribute levels:"
        str = str.. "\n Reflex: " ..target:GetAttribute("reflex", 0)
        str = str.. "\n Strength: " ..target:GetAttribute("strength", 0)
        str = str.. "\n Fortitude: " ..target:GetAttribute("fortitude", 0)
        str = str.. "\n Observation: " ..target:GetAttribute("observation", 0)
        str = str.. "\n Fortune: " ..target:GetAttribute("fortune", 0)

		
		return str
	end 
	})
