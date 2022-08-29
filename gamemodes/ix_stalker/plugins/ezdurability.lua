local PLUGIN = PLUGIN
PLUGIN.name = "EZ Durability"
PLUGIN.author = "Scrat Knapp"
PLUGIN.desc = "Allows admins easy access to manage suit durability with commands."



ix.command.Add("CharDamageArmor", {
	description = "@cmdCharGiveFlag",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number,
	},
	OnRun = function(self, client, target, flags)
		-- show string request if no flags are specified
		if (!flags) then
			local available = ""

			-- sort and display flags the character already has
			for k, _ in SortedPairs(ix.flag.list) do
				if (!target:HasFlags(k)) then
					available = available .. k
				end
			end

			return client:RequestString("@flagGiveTitle", "@cmdCharGiveFlag", function(text)
				ix.command.Run(client, "CharGiveFlag", {target:GetName(), text})
			end, available)
		end
		hook.Run("CharGiveFlag",client,target,flags)
		target:GiveFlags(flags)
		ix.util.NotifyLocalized("flagGive", nil, client:GetName(), target:GetName(), flags)
	end
})