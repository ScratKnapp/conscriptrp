local PLUGIN = PLUGIN
PLUGIN.name = "EZ Durability"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "Allows admins easy access to manage suit durability with commands."



ix.command.Add("CharDamageArmor", {
	description = "Damage a characters currently equipped armor by the given amount.",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number,
	},
	OnRun = function(self, client, target, damage)
		local char = target:GetChar()
		local inventory = char:GetInv()
		local resItems = {} 
		local str = " "

		for k, v in pairs (inventory:GetItems()) do
			if(!v:GetData("equip", false)) then continue end --ignores unequipped items
			
			local res = v.res
			if (res) then
				table.insert(resItems, v)
			end
		end


		if resItems == nil then 
			str = str.. client.. " has no suit equipped."
			return str

		end 

		for k, v in pairs(resItems) do
			local curDura = v:GetData("durability", 100)
			local newDura = math.Round(math.Clamp(curDura - damage, 0, 100))
			v:SetData("durability", newDura)

			str = str.. "reduced " .. target .. " 's " .. v:GetData("name") .. " from " .. curDura .. "% to " .. newDura .. "\n"
		end

		return str


	end
})