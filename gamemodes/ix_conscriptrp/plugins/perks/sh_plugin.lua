local PLUGIN = PLUGIN
PLUGIN.name = "Perks"
PLUGIN.author = "Verne"
PLUGIN.desc = "Perks that can be added to a character.."

ix.command.Add("CharAddTrait", {
	description = "Assign a trait to a character.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.string,
	},
	OnRun = function(self, client, target, perkName)

		for k, v in pairs(ix.perks.list) do
			if (ix.util.StringMatches(L(v.name, client), perkName) or ix.util.StringMatches(k, perkName)) then
				target:SetPrk(k, 1)
				return "Added trait " ..perkName.. " to " .. target:GetName()
			end
		end

		return "Trait not found!"
	end
})

ix.command.Add("CharRemoveTrait", {
	description = "Remove a trait from a character.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.string,
	},
	OnRun = function(self, client, target, perkName)
		for k, v in pairs(ix.perks.list) do
			if (ix.util.StringMatches(L(v.name, client), perkName) or ix.util.StringMatches(k, perkName)) then
				target:SetPrk(k, 0)
				return "Removed trait " ..perkName.. " from " .. target:GetName()
			end
		end

		return "Trait not found!"
	end
})



ix.command.Add("CharShowTraits", {
	description = "List the perks the given character currently has.",
	privilege = "Manage Character Attributes",
	adminOnly = true,
	arguments = {
		ix.type.character
	},

	OnRun = function(self, client, target)
	
		local str = ""
		str = str.. target:GetName().. " has the following traits:"
		local perklist = {}
		for k, v in pairs(ix.perks.list) do
			perklist[k] = target:GetPerk(k, 0)
		end

		for k, v in SortedPairsByMemberValue(ix.perks.list, "name") do

			if perklist[k] >= 1 then
				str = str.. "\n" ..v.name
				str = str.. "\n" ..v.effect
				str = str.. "\n=====\n" 
			end 
		end	
		return str
	end 
	})

ix.command.Add("MyTraits", {
	description = "View your traits.",
adminOnly = false,
	OnRun = function(self, client)
		local str = "Your current traits are:"
		local perklist = {}
		for k, v in pairs(ix.perks.list) do
			perklist[k] = client:GetCharacter():GetPerk(k, 0)
		end

		for k, v in SortedPairsByMemberValue(ix.perks.list, "name") do

			if perklist[k] >= 1 then
				str = str.. "\n" ..v.name
				str = str.. "\n" ..v.description
				str = str.. "\n" ..v.effect
				str = str.. "\n=====" 
			end 
		end	
		return str
	end
})


function PLUGIN:PostPlayerLoadout(client)
	ix.perks.Setup(client)
end

ix.config.Add("maxPerks", 5, "The total maximum amount of Perk points allowed.", nil, {
	data = {min = 0, max = 250},
	category = "characters"
})

ix.char.RegisterVar("perks", {
	field = "perks",
	fieldType = ix.type.text,
	default = {},
	index = 5,
	category = "attributes",
	isLocal = true,
	OnDisplay = function(self, container, payload)
		local maximum = hook.Run("GetDefaultPerkPoints", LocalPlayer(), payload) or ix.config.Get("maxPerks", 30)

		if (maximum < 1) then
			return
		end

		local perks = container:Add("DScrollPanel")
		perks:Dock(TOP)

		local y
		local total = 0

		payload.perks = {}

		-- total spendable attribute points
		local totalBar = perks:Add("ixAttributeBar")
		totalBar:SetMax(2)
		totalBar:SetValue(2)
		totalBar:Dock(TOP)
		totalBar:DockMargin(2, 2, 2, 2)
		totalBar:SetText("Perk points left:".." ("..totalBar:GetValue()..")")
		totalBar:SetReadOnly(true)
		totalBar:SetColor(Color(20, 120, 20, 255))

		y = totalBar:GetTall() + 4

		for k, v in SortedPairsByMemberValue(ix.perks.list, "name") do
			payload.perks[k] = 0

			local bar = perks:Add("ixAttributeBar")
			bar:SetMax(maximum)
			bar:Dock(TOP)
			bar:DockMargin(2, 2, 2, 2)
			bar:SetText(L(v.name))
			bar.OnChanged = function(this, difference)
				if ((total + difference) > maximum) then
					return false
				end

				total = total + difference
				payload.perks[k] = payload.perks[k] + difference

				totalBar:SetValue(totalBar.value - difference)
			end

			if (v.noStartBonus) then
				bar:SetReadOnly()
			end
		end

		perks:SetTall(y * (8*(ScrH()/1080)))
		return perks
	end,
	OnValidate = function(self, value, data, client)
		if (value != nil) then
			if (istable(value)) then
				local count = 0

				for _, v in pairs(value) do
					count = count + v
				end

				if (count > (hook.Run("GetDefaultPerkPoints", client, count) or ix.config.Get("maxPerks", 30))) then
					return false, "unknownError"
				end
			else
				return false, "unknownError"
			end
		end
	end,
	ShouldDisplay = function(self, container, payload)
		return true --!table.IsEmpty(ix.perks.list)
	end
})