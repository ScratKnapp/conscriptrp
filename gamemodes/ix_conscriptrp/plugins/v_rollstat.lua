local PLUGIN = PLUGIN
PLUGIN.name = "Stat Rolling"
PLUGIN.author = "Val"
PLUGIN.description = "cheese.wav"

ix.command.Add("Rollstat", {
    description = "Leave fate to chance by rolling a random number with an attribute to boost your odds slightly.",
    arguments = {ix.type.string, bit.bor(ix.type.number, ix.type.optional)},
    OnRun = function(self, client, attrib, maximum)
        maximum = math.Clamp(maximum or 100, 0, 1000000)

        local value = math.random(0, maximum)
        
        local translate_tbl = {
			-- The first string indicates what the player has to type in to properly get a bonus based on their roll. The second string is the actual attribute.
			["strength"] = "strength",
            ["reflex"] = "reflex",
            ["fortitude"] = "fortitude",
            ["observation"] = "observation",
            ["fortune"] = "fortune",
			--[[
            ["medical"] = "medical",
			["accuracy"] = "accuracy",
			["agility"] = "agility",
			["constitution"] = "constitution",
            ["fabrication"] = "fabrication",
            ]]
            -- Add more attributes here by following the previous format if desired.
        }
        local temp_attrib = attrib
        if #temp_attrib > 3 then attrib = translate_tbl[string.lower(temp_attrib)] end
        local att = client:GetCharacter():GetAttribute(attrib,0)
        local add = math.Round(att*1)
		value = value

        ix.chat.Send(client, "rollStat", tostring(value), nil, nil, {
            max = maximum,
            attr=string.upper(attrib),
            additive=add,
            initialroll = value
        })

        ix.log.Add(client, "rollStat", value, maximum, attrib, add)
    end
})

ix.chat.Register("rollstat", {
    format = "** %s rolled for %s: %s + %s = %s out of %s",
    color = Color(155, 111, 176),
    CanHear = ix.config.Get("chatRange", 280),
    deadCanChat = true,
    OnChatAdd = function(self, speaker, text, bAnonymous, data)
        local max = data.max or 100
        local att = data.attr or "STR"
        local add = math.floor(data.additive / 2) or 0
        local total = add + data.initialroll
        

        local translated = L2(self.uniqueID.."Format", speaker:Name(), text, max)

        chat.AddText(self.color, translated and "** "..translated or string.format(self.format,speaker:Name(), att, text, add, total, max))
    end
})

if (SERVER) then
    ix.log.AddType("rollStat", function(client, value, maximum, attrib, add)
        return string.format("%s has rolled %s out of %d with a %q bonus of %s", client:Name(), value, maximum, attrib, add)
    end)
end