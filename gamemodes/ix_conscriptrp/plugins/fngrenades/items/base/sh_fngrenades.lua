local PLUGIN = PLUGIN

ITEM.name = "Grenade"
ITEM.description = "An object you throw at enemies for tactical reasons."
ITEM.category = "Weapons"
ITEM.model = "models/weapons/w_pistol.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.weaponCategory = "secondary"
ITEM.price = 1
ITEM.isWeapon = true
ITEM.isGrenade = true
ITEM.quantity = 1

function ITEM:GetDescription()
	local description = self.description
	description = description.."\nWeight: "..self.weight.."kg"
	return description
end

ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/tick.png",
	OnRun = function(item)
		local client = item.player
		local items = client:GetChar():GetInv():GetItems()
        
		client.carryWeapons = client.carryWeapons or {}
        
		for k, v in pairs(items) do
			if (v.id != item.id) then
				local itemTable = ix.item.instances[v.id]
				
				if (!itemTable) then
					client:NotifyLocalized("tellAdmin", "wid!xt")

					return false
				else
					if (itemTable.isWeapon and client.carryWeapons[item.weaponCategory] and itemTable:GetData("equip")) then
						client:NotifyLocalized("weaponSlotFilled")

						return false
					end
				end
			end
		end
		
		if (client:HasWeapon(item.class)) then
			client:StripWeapon(item.class)
		end

		local weapon = client:Give(item.class)

		if (IsValid(weapon)) then
			client.carryWeapons[item.weaponCategory] = weapon
			client:SelectWeapon(weapon:GetClass())

			client:EmitSound("items/ammo_pickup.wav", 80)

			-- Remove default given ammo.
			if (client:GetAmmoCount(weapon:GetPrimaryAmmoType()) == weapon:Clip1() and item:GetData("ammo", 0) == 0) then
				client:RemoveAmmo(weapon:Clip1(), weapon:GetPrimaryAmmoType())
			end
			item:SetData("equip", true)
            
            if item.name == "M18 Smoke Grenade" then
                client:SetAmmo(1, "Smoke Grenades")
            end
            
			weapon:SetClip1(item:GetData("ammo", 0))
            
			if (item.onEquipWeapon) then
				item:onEquipWeapon(client, weapon)
			end
		else
			print(Format("[Nutscript] Weapon %s does not exist!", item.class))
		end

		return false
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity) and item:GetData("equip") != true)
	end
}

function ITEM:onCanBeTransfered(oldInventory, newInventory)
	if (newInventory and self:GetData("equip")) then
		return false
	end

	return true
end

function ITEM:onTransfered()
	local client = self:GetOwner()

	if IsValid(client) then
		client.armor[self.armorclass] = nil
		client:SetNetVar(self.armorclass, nil)
	end

	if self:GetData("equip") then self:SetData("equip", false) end
end

function ITEM:onLoadout()
    self.player.carryWeapons = self.player.carryWeapons or {}

    local weapon = self.player.carryWeapons[self.weaponCategory]

	if (!weapon or !IsValid(weapon)) then
		weapon = self.player:GetWeapon(self.class)	
	end

	if (weapon and weapon:IsValid()) then
		self:SetData("ammo", weapon:Clip1())
		self.player:StripWeapon(self.class)
	end

	self.player.carryWeapons[self.weaponCategory] = nil

	self:SetData("equip", nil)

	if (self.onUnequipWeapon) then
		self:onUnequipWeapon(client, weapon)
	end
end

function ITEM:onSave()
	local weapon = self.player:GetWeapon(self.class)

	if (IsValid(weapon)) then
		self:SetData("ammo", weapon:Clip1())
	end
end

ITEM:Hook("drop", function(item)
	if (item:GetData("equip")) then
		item:SetData("equip", nil)

		item.player.carryWeapons = item.player.carryWeapons or {}

		local weapon = item.player.carryWeapons[item.weaponCategory]

		if (IsValid(weapon)) then
			item:SetData("ammo", weapon:Clip1())

			item.player:StripWeapon(item.class)
			item.player.carryWeapons[item.weaponCategory] = nil
			item.player:EmitSound("items/ammo_pickup.wav", 80)
		end
	end
end)

function ITEM:onRemoved()
	local inv = ix.item.inventories[self.invID]
	if IsValid(inv) then
    	local receiver = inv.GetReceiver and inv:GetReceiver()
    
    	if (IsValid(receiver) and receiver:IsPlayer()) then
            local weapon = receiver:GetWeapon(self.class)
    
            if (IsValid(weapon)) then
                weapon:Remove()
            end
    	end
	end
end

ITEM.functions.Sell =
{
    
    name = "Sell",
    tip = "Sells Item",
    icon = "icon16/money.png",
    
    OnRun = function(item)
        local player = item.player;
        local character = player:GetChar();
        
        if item:GetData("wepdurability", 100) == 100 then
            repairscost = 0
        else
            repairscost = math.Round(((item.price - (item.price * (item:GetData("wepdurability") / 100)))*1.54), 0)
        end
        
        if (repairscost >= (item.price*0.9)) then
        	item.player:Notify("This item is worthless")
            return false
        end
        
        if item:GetData("equip", true) then
            item:SetData("equip", nil)
		    item.player:StripWeapon(item.class)
		end
        
		character:GiveMoney((item.price * 0.9) - repairscost);
		item:Remove()
		player:NotifyLocalized("Item sold for " .. ((item.price*0.9) - repairscost))
        return false
    end;
	
    OnCanRun = function(item)
        local char = item.player:GetChar()
        if( char:HasFlags("a") or 
    		char:HasFlags("A") or 
    		char:HasFlags("b") or
    		char:HasFlags("B") or
    		char:HasFlags("C") or
    		char:HasFlags("d") or
    		char:HasFlags("D") or
    		char:HasFlags("f") or
    		char:HasFlags("I") or
    		char:HasFlags("g") or
    		char:HasFlags("G") or
    		char:HasFlags("h") or
    		char:HasFlags("j") or
    		char:HasFlags("J") or
    		char:HasFlags("k") or
    		char:HasFlags("l") or
    		char:HasFlags("L") or
    		char:HasFlags("m")
    	    ) 
    	then
    		return (!IsValid(item.entity))
    	else
    	    return false
	    end
	end;
}

ITEM.functions.SellPriceCheck =
{
    
    name = "Check Value",
    tip = "Checks the value of the item you will receive",
    icon = "icon16/money_dollar.png",
    
    OnRun = function(item)
        local player = item.player;
        local character = player:GetChar();
        
        if item:GetData("wepdurability", 100) == 100 then
            repairscost = 0
        else
            repairscost = math.Round(((item.price - (item.price * (item:GetData("wepdurability") / 100)))*1.54), 0)
        end
        
        if (repairscost >= (item.price*0.9)) then
        	item.player:Notify("This item is worthless")
            return false
        end
        
		player:NotifyLocalized("Item is worth " .. ((item.price*0.9) - repairscost) .. " if sold")
        return false
    end;
	
    OnCanRun = function(item)
        local char = item.player:GetChar()
        if( char:HasFlags("a") or 
    		char:HasFlags("A") or 
    		char:HasFlags("b") or
    		char:HasFlags("B") or
    		char:HasFlags("C") or
    		char:HasFlags("d") or
    		char:HasFlags("D") or
    		char:HasFlags("f") or
    		char:HasFlags("I") or
    		char:HasFlags("g") or
    		char:HasFlags("G") or
    		char:HasFlags("h") or
    		char:HasFlags("j") or
    		char:HasFlags("J") or
    		char:HasFlags("k") or
    		char:HasFlags("l") or
    		char:HasFlags("L") or
    		char:HasFlags("m")
    	    ) 
    	then
    		return (!IsValid(item.entity))
    	else
    	    return false
	    end
	end;
}

ITEM.functions.EquipUn = { -- sorry, for name order.
	name = "Unequip",
	tip = "equipTip",
	icon = "icon16/cross.png",
	OnRun = function(item)
		item.player.carryWeapons = item.player.carryWeapons or {}

		local weapon = item.player.carryWeapons[item.weaponCategory]

		if (!weapon or !IsValid(weapon)) then
			weapon = item.player:GetWeapon(item.class)	
		end

		if (weapon and weapon:IsValid()) then
			item:SetData("ammo", weapon:Clip1())
		
			item.player:StripWeapon(item.class)
		else
			print(Format("[Nutscript] Weapon %s does not exist!", item.class))
		end

		item.player:EmitSound("items/ammo_pickup.wav", 80)
		item.player.carryWeapons[item.weaponCategory] = nil

		item:SetData("equip", nil)

		if (item.onUnequipWeapon) then
			item:onUnequipWeapon(client, weapon)
		end

		return false
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity) and item:GetData("equip") == true)
	end
}

if CLIENT then
    function ITEM:paintOver(item, w, h)
        surface.SetDrawColor(item:GetData("equip") and Color(110, 255, 110, 100) or Color(255, 110, 110, 100))
		surface.DrawRect(w - 16, 10, 8, 8)
	end
end