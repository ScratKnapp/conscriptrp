ITEM.name = "Anomaly Detector"
ITEM.model = "models/kek1ch/dev_decoder.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Electronics"
ITEM.price = 600
ITEM.description = "A device that beeps when anomalies are close."
ITEM.isAnomalydetector = true
ITEM.flag = "1"
ITEM.equipIcon = Material("materials/vgui/ui/stalker/misc/equip.png")
ITEM.repairCost = ITEM.price/100*1
ITEM.weaponCategory = "Anomaly Detector"

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		if (item:GetData("equip")) then
			surface.SetDrawColor(110, 255, 110, 255)
		else
			surface.SetDrawColor(255, 110, 110, 255)
		end

		surface.SetMaterial(item.equipIcon)
		surface.DrawTexturedRect(w-23,h-23,19,19)
	end
end

ITEM.functions.Equip = { -- sorry, for name order.
	name = "Equip",
	tip = "useTip",
	icon = "icon16/stalker/equip.png",
	sound = "stalkersound/inv_dozimetr.ogg",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local wepslots = character:GetData("wepSlots",{})

		if item:GetData("equip") then
			client:NotifyLocalized("You are already equipping this PDA.")
			return false
		end
					
		if wepslots[item.weaponCategory] then
			client:NotifyLocalized("weaponSlotFilled", item.weaponCategory)
			return false
		end
		
		wepslots[item.weaponCategory] = item.Name
		character:SetData("wepSlots",wepslots)
		item:SetData("equip", true)
		item.player:SetData("ixhasanomdetector", true)
		item.player:SetNetVar("ixhasanomdetector", true)
		return false
	end,
	OnCanRun = function(item)
		local client = item.player
		return !IsValid(item.entity) and IsValid(client) and !item:GetData("equip")
	end
}

ITEM.functions.EquipUn = { -- sorry, for name order.
	name = "Unequip",
	tip = "equipTip",
	icon = "icon16/stalker/unequip.png",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local wepslots = character:GetData("wepSlots",{})
		item:SetData("equip", false)
		item.player:SetNetVar("ixhasanomdetector", false)
		item.player:SetData("ixhasanomdetector", false)
		wepslots[item.weaponCategory] = nil
		character:SetData("wepSlots",wepslots)
		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") == true
	end
}

ITEM.functions.Sell = {
	name = "Sell",
	icon = "icon16/stalker/sell.png",
	sound = "physics/metal/chain_impact_soft2.wav",
	OnRun = function(item)
		local client = item.player
		client:Notify( "Sold for "..(item.price).." rubles." )
		client:GetCharacter():GiveMoney(item.price)
		
	end,
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetOwner():GetCharacter():HasFlags("1") and !item:GetData("equip")
	end
}

ITEM.functions.Value = {
	name = "Value",
	icon = "icon16/help.png",
	sound = "physics/metal/chain_impact_soft2.wav",
	OnRun = function(item)
		local client = item.player
		client:Notify( "Item is sellable for "..(item.price).." rubles." )
		return false
	end,
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetOwner():GetCharacter():HasFlags("1") and !item:GetData("equip")
	end
}