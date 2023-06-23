local PLUGIN = PLUGIN
PLUGIN.name = "EZ Durability"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "Allows admins easy access to manage suit durability with commands."



ix.command.Add("CharDamageArmor", {
	description = "Damage a characters currently equipped armor durability by the given amount.",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number,
	},
	OnRun = function(self, client, target, damage)
		local inventory = target:GetInv()
		local resItems = {} 
		local str = ""

		for k, v in pairs (inventory:GetItems()) do
			if(!v:GetData("equip", false)) then continue end --ignores unequipped items
			
			local res = v.res
			if (res) then
				table.insert(resItems, v)
			end
		end


		if next(resItems) == nil then 
			str = str.. target:GetName().. " has no suit equipped."
			return str
		end 

		for k, v in pairs(resItems) do
			local curDura = v:GetData("durability", 100)
			local newDura = math.Round(math.Clamp(curDura - damage, 0, 100))
			v:SetData("durability", newDura)

			str = str.. "Reduced the durability of the " .. v.name.. " equipped by " ..target:GetName().. " from " .. curDura.. "% to " .. newDura .. "%"
	
		end
		return str
	end
})


ix.command.Add("Charrepairarmor", {
	description = "Repair a characters currently equipped armor durability by the given amount.",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number,
	},
	OnRun = function(self, client, target, repair)
		local inventory = target:GetInv()
		local resItems = {} 
		local str = ""

		for k, v in pairs (inventory:GetItems()) do
			if(!v:GetData("equip", false)) then continue end --ignores unequipped items
			
			local res = v.res
			if (res) then
				table.insert(resItems, v)
			end
		end

		if next(resItems) == nil then 
			str = str.. target:GetName().. " has no suit equipped."
			return str

		end 

		for k, v in pairs(resItems) do
			local curDura = v:GetData("durability", 100)
			local newDura = math.Round(math.Clamp(curDura + repair, 0, 100))
			v:SetData("durability", newDura)

			str = str.. "Increased the durability of the " .. v.name.. " equipped by " ..target:GetName().. " from " .. curDura.. "% to " .. newDura .. "%"

		end

		return str
	end
})



ix.command.Add("Charsetarmor", {
	description = "Set a character's currently equipped armor durability to the given number.",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number,
	},
	OnRun = function(self, client, target, newvalue)
		local inventory = target:GetInv()
		local resItems = {} 
		local str = ""

		for k, v in pairs (inventory:GetItems()) do
			if(!v:GetData("equip", false)) then continue end --ignores unequipped items
			
			local res = v.res
			if (res) then
				table.insert(resItems, v)
			end
		end

		if next(resItems) == nil then 
			str = str.. target:GetName().. " has no suit equipped."
			return str

		end 

		for k, v in pairs(resItems) do
			local curDura = v:GetData("durability", 100)
			local newDura = math.Round(math.Clamp(newvalue, 0, 100))
			v:SetData("durability", newDura)

			str = str.. "Set the durability of the " .. v.name.. " equipped by " ..target:GetName().. " from " .. curDura.. "% to " .. newDura .. "%"
	
		end

		return str
	end
})