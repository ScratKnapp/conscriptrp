PLUGIN.name = "Core changes"
PLUGIN.author = "verne"
PLUGIN.desc = "Changes some core helix things"

--adds automatic me's when picking up items
function PLUGIN:PlayerInteractItem(client, action, item)
	if (type(item) == "Entity") then
		if (IsValid(item)) then
			local itemID = item.ixItemID
			item = ix.item.instances[itemID]
		else
			return
		end
	elseif (type(item) == "number") then
		item = ix.item.instances[item]
	end

	if (!item) then
		return
	end

	if action == "take" then
		ix.chat.Send(client, "iteminternal", Format("picks up the %s.", item.name), false)
	end
end


function PLUGIN:LoadFonts(font, genericFont)
	surface.CreateFont("ixTypingIndicator", {
		font = "alsina",
		size = 128,
		extended = true,
		weight = 1000
	})
end


if (SERVER) then
	function PLUGIN:KeyPress(client, key)
		if (key == IN_JUMP) then
			if (client:OnGround()) then
				local current = client:GetLocalVar("stm", 0)
				local value = math.Clamp(current - 20, -5, 100)

				client:SetLocalVar("stm", value)
			end
		end
	end
end

