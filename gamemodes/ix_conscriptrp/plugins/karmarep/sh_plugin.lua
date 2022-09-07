--[[ local PLUGIN = PLUGIN
PLUGIN.name = "Reputation"
PLUGIN.author = "Verne?"
PLUGIN.desc = "Reputation System"

PLUGIN.repDefs = {
	{"Rookie", 0},
	{"Experienced", 2000},
	{"Professional", 15000},
	{"Veteran", 60000},
    {"Expert", 130000},
	{"Master", 200000},
}

local playerMeta = FindMetaTable("Player")
local entityMeta = FindMetaTable("Entity")

function playerMeta:getReputation()
	return (self:GetNetVar("reputation")) or 0
end

function playerMeta:getRepName()
	return (self:GetNetVar("repOverride")) or 0
end

function playerMeta:addReputation(amount)
	self:SetNetVar("reputation", self:getReputation() + amount)
end

function playerMeta:setReputation(amount)
	self:SetNetVar("reputation", amount)
end

function playerMeta:getCurrentRankName()
	local rep = self:GetNetVar("reputation") or 0

	if self:getRepName() != 0 then
		return self:getRepName()
	end
	
	for i = 1, #PLUGIN.repDefs do
		if PLUGIN.repDefs[i][2] > rep then
			return PLUGIN.repDefs[i-1][1]
		end
	end

	return PLUGIN.repDefs[#PLUGIN.repDefs][1]
end

function playerMeta:getArbitraryRankName(rep)
	for i = 1, #PLUGIN.repDefs do
		if PLUGIN.repDefs[i][2] > rep then
			return PLUGIN.repDefs[i-1][1]
		end
	end

	return PLUGIN.repDefs[#PLUGIN.repDefs][1]
end

function PLUGIN:PopulateCharacterInfo(client, character, container)
	local repnametext = container:AddRow("reputation")
	repnametext:SetText(client:getCurrentRankName())
	repnametext:SetTextColor(Color(138, 43, 226))
	repnametext:SizeToContents()
end

-- Register HUD Bars.
if (SERVER) then
	local PLUGIN = PLUGIN
	
	function PLUGIN:CharacterPreSave(character)
		character:SetData("reputation", character.player:getReputation())
		character:SetData("repOverride", character.player:getRepName())
	end

	function PLUGIN:PlayerLoadedCharacter(client, character, lastChar)	
		if (character:GetData("reputation")) then
			client:SetNetVar("reputation", character:GetData("reputation"))
		else
			client:SetNetVar("reputation", 0)
		end

		if (character:GetData("repOverride")) then
			client:SetNetVar("repOverride", character:GetData("repOverride"))
		else
			client:SetNetVar("repOverride", 0)
		end
	end
end

ix.command.Add("charsetreputation", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number
	},
	OnRun = function(self, client, target, reputation)
		local target = ix.util.FindPlayer(target)
		local reputation = tonumber(reputation)

		target:setReputation(reputation)

		if client == target then
            client:Notify("You have set your reputation to "..reputation)
        else
            client:Notify("You have set "..target:Name().."'s reputation to "..reputation)
            target:Notify(client:Name().." has set your reputation to "..reputation)
        end
	end
})

ix.command.Add("charaddreputation", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number
	},
	OnRun = function(self, client, target, reputation)
		local target = ix.util.FindPlayer(target)
		local reputation = tonumber(reputation)

		target:addReputation(reputation)

		if client == target then
            client:Notify("You have added "..reputation.." to your reputation.")
        else
            client:Notify("You have added "..reputation.." to "..target:Name().."'s reputation.")
            target:Notify(client:Name().." has added "..reputation.." to your reputation.")
        end
	end
})

ix.command.Add("charcheckreputation", {
	adminOnly = true,
	arguments = {
		ix.type.string,
	},
	OnRun = function(self, client, target)
		local target = ix.util.FindPlayer(target)

		if target then 
        	client:Notify(target:Name() .. " has "..target:getReputation().." reputation.")
    	else
            client:Notify("Player not found")
        end
	end
})

ix.command.Add("charrepnameset", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.string
	},
	OnRun = function(self, client, target, name)
		local target = ix.util.FindPlayer(target)
		local reputation = name

		target:SetNetVar("repOverride", reputation)

		if client == target then
            client:Notify("Custom rankname set.")
        else
            client:Notify("Custom rankname set.")
            target:Notify(client:Name().." has set your repname.")
        end
	end
})

ix.command.Add("charrepnameremove", {
	adminOnly = true,
	arguments = {
		ix.type.string,
	},
	OnRun = function(self, client, target)
		local target = ix.util.FindPlayer(target)

		target:SetNetVar("repOverride", 0)

		if client == target then
            client:Notify("Custom rankname removed.")
        else
            client:Notify("Custom rankname removed.")
            target:Notify(client:Name().." has removed your repname.")
        end
	end
})  ]]