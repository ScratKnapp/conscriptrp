local PLUGIN = PLUGIN
PLUGIN.name = "Leveling"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "A very simple leveling system."

ix.char.RegisterVar("Level", {
    field = "level",
    fieldType = ix.type.number,
    default = 1,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("SkillPoints", {
    field = "skillpoints",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("XP", {
    field = "xp",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("XPToNextLevel", {
    field = "xptonextlevel",
    fieldType = ix.type.number,
    default = 250,
    isLocal = true,
    bNoDisplay = true
})

ix.char.RegisterVar("LifetimeXP", {
    field = "lifetimexp",
    fieldType = ix.type.number,
    default = 0,
    isLocal = true,
    bNoDisplay = true
})

ix.command.Add("CharRewardXP", {
    description = "Add XP to a character.",
    adminOnly = true,
    arguments = {
    ix.type.character, 
    ix.type.number},
    OnRun = function(self, client, target, points)

        if (points <= 0) then
            return "Cannot give zero or negative XP."
        end 

        local currentxp = target:GetXP()
        local currentlifetimexp = target:GetLifetimeXP()
        local currentlevel = target:GetLevel()
        local currentskillpoints = target:GetSkillPoints()

        if (currentlevel == 25) then
            return "Character is max level."
        end 

        target:SetXP(currentxp + points)
        target:SetLifetimeXP(currentlifetimexp + points)

        if (target:GetXP() >= target:GetXPToNextLevel()) then 
            target:SetLevel(currentlevel + 1)

            if (target:GetLevel() == 25) then
                target:SetXPToNextLevel(0)
                client:Notify(target:GetName() .. " has gained " .. points .. " XP and has reached the maximum Level of " .. target:GetLevel() .. "!")
                target:GetPlayer():Notify("You receive " .. points .. " XP, and reach the maximum " .. target:GetLevel().. "! No more XP can be gained.")
                return
            end 


            target:SetXP (target:GetXP() - target:GetXPToNextLevel())

            target:SetXPToNextLevel(target:GetXPToNextLevel()  * 2)
            target:SetXPToNextLevel(math.floor(target:GetXPToNextLevel()))

            target:SetSkillPoints(target:GetSkillPoints() + 5)

            

            client:Notify(target:GetName() .. " has gained " .. points .. " XP and has reached Level " .. target:GetLevel() .. "!")
            target:GetPlayer():Notify("You receive " .. points .. " XP, and reach Level " .. target:GetLevel().. "!")

        else 
            client:Notify(target:GetName() .. " has gained " .. points .. " XP.")
            target:GetPlayer():Notify("You receive " .. points .. " XP!")
        end 
        

    end
})

ix.command.Add("MyProgress", {
	description = "View your current level, skill points, and progress.",
	OnRun = function(self, client)
		local str = ""
        local char = client:GetCharacter()
        
        str = str .. "Level: " .. char:GetLevel() .. "\n"
        str = str .. "XP to Next Level: " .. char:GetXPToNextLevel() - char:GetXP() .. " XP \n"
        str = str .. "Lifetime XP Gained: " ..char:GetLifetimeXP() .. "\n"
        str = str .. "Skillpoints: " ..char:GetSkillPoints() .. "\n"
        return str
	end
})


ix.command.Add("CharAddSkillpoints", {
    description = "Add skill points to a character.",
    adminOnly = true,
    arguments = {
    ix.type.character, 
    ix.type.number},
    OnRun = function(self, client, target, points)
        local currentpoints = target:GetSkillPoints()
        target:SetSkillPoints(currentpoints + points)
        client:Notify(target:GetName() .. " now has " .. tostring(currentpoints + points .. " skill points."))
    end
})


ix.command.Add("SpendSkillpoints", {
    description = "Spend some of your skill points on your attributes.",
    arguments = {
    ix.type.string, 
    ix.type.number},
    OnRun = function(self, client, skill, pointstospend)
        char = client:GetCharacter()
        currentpoints = char:GetSkillPoints()
        skill = string.upper(skill)

        if (currentpoints == 0) then
            client:Notify("You don't have any skillpoints to spend.")
            return
        end 

        if (pointstospend < 0) then
            client:Notify("Cannot spend a negative number of points.")
            return
        end 

        if (currentpoints < pointstospend) then
            client:Notify("You don't have enough skillpoints to upgrade your skill to that level.")
            return
        end 

        if (skill == "STRENGTH") then
            currentlevel = char:GetAttribute("strength")
            if (currentlevel >= 50) then
                client:Notify("That attribute is already at max level!")
                return
            end 
            if (currentlevel + pointstospend > 50) then
                client:Notify("You cannot raise an attribute above 50.")
                return
            end 
            char:UpdateAttrib("strength", pointstospend)
            char:SetSkillPoints(currentpoints - pointstospend)
            client:Notify("Successfully upgraded Strength from " .. currentlevel .. " to " .. char:GetAttribute("strength") .. ".\n Skillpoints remaining: " .. char:GetSkillPoints())
            return
        end 

        if (skill == "FORTITUDE") then
            currentlevel = char:GetAttribute("fortitude")
            if (currentlevel >= 50) then
                client:Notify("That attribute is already at max level!")
                return
            end 
            if (currentlevel + pointstospend > 50) then
                client:Notify("You cannot raise an attribute above 50.")
                return
            end 
            char:UpdateAttrib("fortitude", pointstospend)
            char:SetSkillPoints(currentpoints - pointstospend)
            client:Notify("Successfully upgraded Fortitude from " .. currentlevel .. " to " .. char:GetAttribute("fortitude") .. ".\n Skillpoints remaining: " .. char:GetSkillPoints())
            return
        end 

        if (skill == "FORTUNE") then
            currentlevel = char:GetAttribute("fortune")
            if (currentlevel >= 50) then
                client:Notify("That attribute is already at max level!")
                return
            end 
            if (currentlevel + pointstospend > 50) then
                client:Notify("You cannot raise an attribute above 50.")
                return
            end 
            char:UpdateAttrib("fortune", pointstospend)
            char:SetSkillPoints(currentpoints - pointstospend)
            client:Notify("Successfully upgraded Fortune from " .. currentlevel .. " to " .. char:GetAttribute("fortune") .. ".\n Skillpoints remaining: " .. char:GetSkillPoints())
            return
        end 

        if (skill == "REFLEX") then
            currentlevel = char:GetAttribute("reflex")
            if (currentlevel >= 50) then
                client:Notify("That attribute is already at max level!")
                return
            end 
            if (currentlevel + pointstospend > 50) then
                client:Notify("You cannot raise an attribute above 50.")
                return
            end 
            char:UpdateAttrib("reflex", pointstospend)
            char:SetSkillPoints(currentpoints - pointstospend)
            client:Notify("Successfully upgraded Reflex from " .. currentlevel .. " to " .. char:GetAttribute("reflex") .. ".\n Skillpoints remaining: " .. char:GetSkillPoints())
            return
        end 


        if (skill == "OBSERVATION") then
            currentlevel = char:GetAttribute("observation")
            if (currentlevel >= 50) then
                client:Notify("That attribute is already at max level!")
                return
            end 
            if (currentlevel + pointstospend > 50) then
                client:Notify("You cannot raise an attribute above 50.")
                return
            end 
            char:UpdateAttrib("observation", pointstospend)
            char:SetSkillPoints(currentpoints - pointstospend)
            client:Notify("Successfully upgraded Observation from " .. currentlevel .. " to " .. char:GetScience() .. ".\n Skillpoints remaining: " .. char:GetSkillPoints())
            return
        end 

        client:Notify("That attribute doesn't exist!")
        return

    end
})

ix.command.Add("CharGetProgress", {
    description = "View a character's leveling progress and skillpoints.",
    adminOnly = true,
    arguments = {ix.type.character},
	OnRun = function(self, client, target)
		local str = ""
        local char = target
        
        str = str .. "Progress of " .. char:GetName() .. ": \n"
        str = str .. "Level: " .. char:GetLevel() .. "\n"
        str = str .. "Next Level in: " .. char:GetXPToNextLevel() - char:GetXP() .. " XP \n"
        str = str .. "Lifetime XP Gained: " ..char:GetLifetimeXP() .. "\n"
        str = str .. "Skillpoints: " ..char:GetSkillPoints() .. "\n"
        return str
	end
})