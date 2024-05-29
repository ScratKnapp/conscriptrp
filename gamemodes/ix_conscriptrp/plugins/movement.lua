PLUGIN.name = 'Movement'
PLUGIN.author = 'Scrat Knapp'
PLUGIN.description = 'Adds a command to help players tell how much theyve moved for their turn.'


ix.command.Add( "Movement", {
    description = "Begin or Finish counting movement.",
    OnRun = function( self, client )
        char = client:GetCharacter()
        if char:GetVar("isMoving") then
            local startPos = char:GetVar("isMoving")
            local endPos = client:GetPos()
            local distance = endPos:Distance(startPos)

            distance =  distance - (distance % 1)
            distance = (distance / 39.3701) 
            distance =  distance - (distance % 1)

            client:Notify("You've moved " .. distance .. " Meters.")
            char:SetVar("isMoving", nil)
            ix.log.Add(client, "moveEnd", distance, apcost)

        else 
            client:Notify("You're moving. Use again to calculate distance travelled.")
            local startPos = client:GetPos()
            char:SetVar("isMoving", startPos)
            ix.log.Add(client, "moveStart", client)
        end 
    end
} )

if (SERVER) then
    ix.log.AddType("moveStart", function(client)
        return string.format("%s has begun moving.", client:Name())
    end)

    ix.log.AddType("moveEnd", function(client, distance, apcost)
        return string.format("%s has finished moving. Distance: %sm.", client:Name(), distance)
    end)
end