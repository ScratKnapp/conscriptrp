PLUGIN.name = "FNGrenades"
PLUGIN.author = "Lt. Taylor"
PLUGIN.desc = "Adds a grenade system for CW2.0."


function PLUGIN:GrenadeThrown(entity, grenade)
    entity = entity.Owner
    if entity:IsPlayer() then
        for k, v in pairs(entity:GetChar():GetInv():GetItems()) do
            if v:GetData("equip", false) == true and v.isGrenade then
                entity:StripWeapon(v.class)
    			entity.carryWeapons[v.weaponCategory] = nil
    			v:SetData("equip", false)
    			v:Remove()
		    end
	    end
    end
end

function PLUGIN:GrenadeOvercooked(entity, grenade)
    entity = entity.Owner
    if entity:IsPlayer() then
        for k, v in pairs(entity:GetChar():GetInv():GetItems()) do
            if v:GetData("equip", false) == true and v.isGrenade then
                entity:StripWeapon(v.class)
    			entity.carryWeapons[v.weaponCategory] = nil
    			v:SetData("equip", false)
    			v:Remove()
		    end
	    end
    end
end

ix.chat.Register("shipment", {
	OnChatAdd = function(speaker, text)
		chat.AddText(Color(0, 97, 255), text)
	end,
	color = Color(0, 97, 255),
	onCanHear = ix.config.Get("chatRange", 280),
	deadCanChat = false
})

ix.command.Add("shipment", {
	syntax = "[Insurance % Paid]",
	OnRun = function(client, arguments)
	    local percent = math.random(0, 100)
	    local modifier = 0
	    local initial = 65
	    local outcome = ""
	    
	    if arguments[1] then
	        modifier = arguments[1] * 4
        end
        
	    local chance = initial - modifier
	    
	    if chance < percent then
	        outcome = "Success: Your delivery arrived on time and in order."
        else
            outcome = "Failure: It seems there was trouble with your shipment, You'll need to retrieve it."
        end
	    
		ix.chat.Send(client, "shipment", outcome)
		return true
	end
})