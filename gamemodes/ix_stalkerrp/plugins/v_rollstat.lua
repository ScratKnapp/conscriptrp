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
			["str"] = "strength",
            ["ref"] = "reflex",
            ["forti"] = "fortitude",
            ["obs"] = "observation",
            ["fortu"] = "fortune",
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
        attrib = translate_tbl[string.lower(temp_attrib)]

        if !attrib then 
            return "Invalid attribute."
        end 
        
        local att = client:GetCharacter():GetAttribute(attrib,0)
        local add = att --math.Round(att*1)
		value = value
        local char = client:GetCharacter()
        local generalmodifier = char.vars.GeneralRollMod
        local strengthmodifier = char.vars.StrengthRollMod
        local fortitudemodifier = char.vars.FortitudeRollMod
        local fortunemodifier = char.vars.FortuneRollMod
        local reflexmodifier = char.vars.ReflexRollMod
        local observationmodifier = char.vars.ObservationRollMod


        ix.chat.Send(client, "rollStat", tostring(value), nil, nil, {
            max = maximum,
            attr=string.upper(attrib),
            additive=add,
            genmod = generalmodifier,
            strmod = strengthmodifier,
            fortimod = fortitudemodifier,
            fortumod = fortunemodifier,
            refmod = reflexmodifier,
            obsmod = observationmodifier,
            initialroll = value,
    
            
        
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
        local add = data.additive
        local totaladd = 0
        local total = 0
      
    
        print(generalmodifier)
        -- Real yanderedev hours here

        if (add == 0) then 
            add = -10
            total = data.initialroll - 10
        end 

        if (add == 1) then 
            add = -9
            total = data.initialroll - 9
        end 

        if (add == 2) then 
            add = -8
            total = data.initialroll - 8
        end 

        if (add == 3) then 
            add = -7
            total = data.initialroll - 7
        end 

        if (add == 4) then 
            add = -6
            total = data.initialroll - 6
        end 

        if (add == 5) then 
            add = -5
            total = data.initialroll - 5
        end 

        if (add == 6) then 
            add = -4
            total = data.initialroll - 4
        end 

        if (add == 7) then 
            add = -3
            total = data.initialroll - 3
        end 

        if (add == 8) then 
            add = -2
            total = data.initialroll - 2
        end 

        if (add == 9) then 
            add = -1
            total = data.initialroll - 1
        end 


        if (add >= 10) then
           
            add = add - 10
            add = math.floor(add / 2)
            total = data.initialroll + add


        end

       
        if (data.genmod and data.genmod ~= 0) then
            add = add + data.genmod
            total = data.initialroll + add
        end

        if (att == "STRENGTH" and data.strmod and data.strmod ~= 0) then
            add = add + data.strmod
            total = data.initialroll + add
        end


        if (att == "FORTITUDE" and data.fortimod and data.fortimod ~= 0) then
            add = add + data.fortimod
            total = data.initialroll + add
        end

        if (att == "FORTUNE" and data.fortumod and data.fortumod ~= 0) then
            add = add + data.fortumod
            total = data.initialroll + add
        end

        if (att == "REFLEX" and data.refmod and data.refmod ~= 0) then
            add = add + data.refmod
            total = data.initialroll + add
        end

        if (att == "OBSERVATION" and data.obsmod and data.obsmod ~= 0) then
            add = add + data.obsmod
            total = data.initialroll + add
        end
 
        local translated = L2(self.uniqueID.."Format", speaker:Name(), text, max)

        chat.AddText(self.color, translated and "** "..translated or string.format(self.format,speaker:Name(), att, text, add, total, max))
    end
})

 if (SERVER) then
    ix.log.AddType("rollStat", function(client, value, maximum, attrib, add)
        return string.format("%s has rolled a base %s out of %d with a %q skill of %s", client:Name(), value, maximum, attrib, add)
    end)
end

ix.command.Add("Rollstatmodifier", {
    description = "Roll a number out of the given maximum and add the given amount to it.",
    arguments = {ix.type.number, bit.bor(ix.type.number, ix.type.optional)},
    OnRun = function(self, client, modifier, maximum)
        maximum = math.Clamp(maximum or 100, 0, 1000000)

        local value = math.random(0, maximum)
        local modifier = modifier or 0
        local total = value + modifier
     
        
        ix.chat.Send(client, "rollStatModifier", tostring(value), nil, nil, {
            val = value,
            mod = modifier,
            max = maximum,
            tot = total
            
        })

       ix.log.Add(client, "rollStatModifier", value, total, modifier, maximum)
    end
})

ix.chat.Register("rollStatModifier", {
    format = "** %s rolled %s + %s = %s out of %s",
    color = Color(155, 111, 176),
    CanHear = ix.config.Get("chatRange", 280),
    deadCanChat = true,
    OnChatAdd = function(self, speaker, text, bAnonymous, data)
        local max = data.max or 100
        local mod = data.mod or 0
        local val = data.val
        local tot = data.tot
     
        --local total = add + data.initialroll
        local translated = L2(self.uniqueID.."Format", speaker:Name(), text, max)

        chat.AddText(self.color, translated and "** "..translated or string.format(self.format,speaker:Name(), val, mod, tot, max))
    end
})

--[[ if (SERVER) then
    ix.log.AddType("rollStatModifier", function(client, value, maximum, modifier, total)
        return string.format("%s has rolled %s out of %d with a modifier of %s for a total of %s", client:Name(), value, maximum, modifier, total)
    end)
end ]]


