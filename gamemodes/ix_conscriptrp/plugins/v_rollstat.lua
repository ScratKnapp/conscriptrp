--[[
Barely tested. Made upon request and then never used again afaik. Report any issues to me (Val#0420 on discord).
]]
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
        local add = 0
        local stat = ""
        stat = attrib
        -- This is gonna get messy.
      

        if stat == "pickpocket" then
            
            local statadd = client:GetCharacter():GetPerk("stickyfingers", 0)

            if statadd == 1 then
                add = 10
            end

            statadd = client:GetCharacter():GetPerk("stickyfingers2", 0)

            if statadd == 1 then
                add = 15
            end


            local statadd = client:GetCharacter():GetPerk("stickyfingers3", 0)

            if statadd == 1 then
                add = 15
            end
        
       
        elseif stat == "lockpick" then

            local statadd = client:GetCharacter():GetPerk("housebreaker", 0)

            if statadd == 1 then
                add = 5
            end

            statadd = client:GetCharacter():GetPerk("housebreaker2", 0)

            if statadd == 1 then
                add = 10
            end


            statadd = client:GetCharacter():GetPerk("housebreaker3", 0)

            if statadd == 1 then
                add = 15
            end
        
        elseif stat == "evade" then
            
            local statadd = client:GetCharacter():GetPerk("agile", 0)

            if statadd == 1 then
                add = 5
            end


        elseif stat == "evadeantlion" then
            
            local statadd = client:GetCharacter():GetPerk("agile", 0)

            if statadd == 1 then
                add = add + 5
            end

            statadd = client:GetCharacter():GetPerk("bughunter", 0)

            if statadd == 1 then
                add = add + 10
            end

        
        
        elseif stat == "evadezombie" then
            
            local statadd = client:GetCharacter():GetPerk("agile", 0)

            if statadd == 1 then
                add = add + 5
            end

            statadd = client:GetCharacter():GetPerk("zombiehunter", 0)

            if statadd == 1 then
                add = add + 10
            end

            
        elseif stat == "attackantlion" then
            
            local statadd = client:GetCharacter():GetPerk("bughunter", 0)

            if statadd == 1 then
                add = add + 10
            end


                      
        elseif stat == "attackzombie" then
            
            local statadd = client:GetCharacter():GetPerk("zombiehunter", 0)

            if statadd == 1 then
                add = add + 10
            end


        else 
            return "Invalid stat."
            
        end
    



        ix.chat.Send(client, "rollStat", tostring(value), nil, nil, {
            max = maximum,
            attr=string.upper(stat),
            additive=add,
            initialroll = value
        })

        ix.log.Add(client, "rollStat", value, maximum, stat, add)
    end
})

ix.chat.Register("rollstat", {
    format = "** %s rolled for %s: %s+%s = %s out of %s",
    color = Color(155, 111, 176),
    CanHear = ix.config.Get("chatRange", 280),
    deadCanChat = true,
    OnChatAdd = function(self, speaker, text, bAnonymous, data)
        local max = data.max or 100
        local att = data.attr or "STR"
        local add = data.additive or 0
        local total = data.additive + data.initialroll
        local translated = L2(self.uniqueID.."Format", speaker:Name(), text, max)

        chat.AddText(self.color, translated and "** "..translated or string.format(self.format,speaker:Name(), att, text, add, total, max))
    end
})

if (SERVER) then
    ix.log.AddType("rollStat", function(client, value, maximum, attrib, add)
        return string.format("%s has rolled %s out of %d with a %q bonus of %s", client:Name(), value, maximum, attrib, add)
    end)
end
