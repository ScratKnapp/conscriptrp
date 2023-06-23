ITEM.name = "Consumable"
ITEM.description = "Something to eat"
ITEM.longdesc = ""
ITEM.model = "models/kleiner.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.hunger = 0
ITEM.thirst = 0
ITEM.empty = false
ITEM.quantity = 1

function ITEM:GetDescription()
	local quant = self:GetData("quantity", 1)
	local str = self.description
	if self.longdesc then
		str = str.."\n\n"..(self.longdesc or "")
	end

	local customData = self:GetData("custom", {})
	if(customData.desc) then
		str = customData.desc
	end

	if (customData.longdesc) then
		str = str.."\n\n"..customData.longdesc or ""
	end

	if (self.entity) then
		return (self.description)
	else
        return (str)
	end
end

function ITEM:GetName()
	local name = self.name
	
	local customData = self:GetData("custom", {})
	if(customData.name) then
		name = customData.name
	end
	
	return name
end

ITEM.functions.Custom = {
	name = "Customize",
	tip = "Customize this item",
	icon = "icon16/wrench.png",
	OnRun = function(item)		
		ix.plugin.list["customization"]:startCustom(item.player, item)
		
		return false
	end,
	
	OnCanRun = function(item)
		local client = item.player
		return client:GetCharacter():HasFlags("N") and !IsValid(item.entity)
	end
}

ITEM.functions.Inspect = {
	name = "Inspect",
	tip = "Inspect this item",
	icon = "icon16/picture.png",
	OnClick = function(item, test)
		local customData = item:GetData("custom", {})

		local frame = vgui.Create("DFrame")
		frame:SetSize(540, 680)
		frame:SetTitle(item.name)
		frame:MakePopup()
		frame:Center()

		frame.html = frame:Add("DHTML")
		frame.html:Dock(FILL)
		
		local imageCode = [[<img src = "]]..customData.img..[["/>]]
		
		frame.html:SetHTML([[<html><body style="background-color: #000000; color: #282B2D; font-family: 'Book Antiqua', Palatino, 'Palatino Linotype', 'Palatino LT STD', Georgia, serif; font-size 16px; text-align: justify;">]]..imageCode..[[</body></html>]])
	end,
	OnRun = function(item)
		return false
	end,
	OnCanRun = function(item)
		local customData = item:GetData("custom", {})
	
		if(!customData.img) then
			return false
		end
		
		if(item.entity) then
			return false
		end
		
		return true
	end
}

ITEM.functions.Clone = {
	name = "Clone",
	tip = "Clone this item",
	icon = "icon16/wrench.png",
	OnRun = function(item)
		local client = item.player	
	
		client:requestQuery("Are you sure you want to clone this item?", "Clone", function(text)
			if text then
				local inventory = client:GetCharacter():GetInventory()
				
				if(!inventory:Add(item.uniqueID, 1, item.data)) then
					client:Notify("Inventory is full")
				end
			end
		end)
		return false
	end,
	OnCanRun = function(item)
		local client = item.player
		return client:GetCharacter():HasFlags("N") and !IsValid(item.entity)
	end
}

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		local cooked = item:GetData("cooked", 1)
		local quantity = item:GetData("quantity", item.quantity)

		draw.SimpleText(quantity.."/"..item.quantity, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:DecideFunction()
	if ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Drink",
			icon = "icon16/stalker/drink.png",
			OnCanRun = function(item)
				if !IsValid(item.entity) then
					if item.thirst != 0 then
						if item.player:GetCharacter():GetData("thirst", 100) >= 100 then
							return false
						end
					end
					if item.hunger != 0 then
						if item.player:GetCharacter():GetData("hunger", 100) >= 100 then
							return false
						end
					end
				end
			end,
			OnRun = function(item)
				local itemtable = item
				local player = itemtable.player
				local hunger = player:GetCharacter():GetData("hunger", 100)
				local thirst = player:GetCharacter():GetData("thirst", 100)
				local quantity = itemtable:GetData("quantity", itemtable.quantity)
				local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
				player:SetHealth(newhealth)
				player:SetHunger(hunger + itemtable.hunger)
				player:SetThirst(thirst + itemtable.thirst)
				player:UpdateThirstState(itemtable.player)
				if itemtable.empty then
					local inv = player:GetCharacter():GetInventory()
					inv:Add(itemtable.empty)
				end
				
				if itemtable.healot and not timer.Exists("foodheal") then
					timer.Create("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				elseif itemtable.healot and timer.Exists("foodheal") then
					timer.Adjust("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					itemtable:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 then
		ITEM.functions.use = {
			name = "Eat",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)
				if !IsValid(item.entity) then
					if item.thirst != 0 then
						if item.player:GetCharacter():GetData("thirst", 100) >= 100 then
							return false
						end
					end
					if item.hunger != 0 then
						if item.player:GetCharacter():GetData("hunger", 100) >= 100 then
							return false
						end
					end
				end
			end,
			OnRun = function(item)
				local itemtable = item
				local player = itemtable.player
				local hunger = player:GetCharacter():GetData("hunger", 100)
				local thirst = player:GetCharacter():GetData("thirst", 100)
				local quantity = itemtable:GetData("quantity", itemtable.quantity)
				local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
				player:SetHealth(newhealth)
				player:SetHunger(hunger + itemtable.hunger)
				player:SetThirst(thirst + itemtable.thirst)
				player:UpdateThirstState(itemtable.player)
				if itemtable.empty then
					local inv = player:GetCharacter():GetInventory()
					inv:Add(itemtable.empty)
				end
				
				if itemtable.healot and not timer.Exists("foodheal") then
					timer.Create("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				elseif itemtable.healot and timer.Exists("foodheal") then
					timer.Adjust("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					itemtable:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 and ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Consume",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)
				if !IsValid(item.entity) then
					if item.thirst != 0 then
						if item.player:GetCharacter():GetData("thirst", 100) >= 100 then
							return false
						end
					end
					if item.hunger != 0 then
						if item.player:GetCharacter():GetData("hunger", 100) >= 100 then
							return false
						end
					end
				end
			end,
			OnRun = function(item)
				local itemtable = item
				local player = itemtable.player
				local hunger = player:GetCharacter():GetData("hunger", 100)
				local thirst = player:GetCharacter():GetData("thirst", 100)
				local quantity = itemtable:GetData("quantity", itemtable.quantity)
				local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
				player:SetHealth(newhealth)
				player:SetHunger(hunger + itemtable.hunger)
				player:SetThirst(thirst + itemtable.thirst)
				player:UpdateThirstState(itemtable.player)
				if itemtable.empty then
					local inv = player:GetCharacter():GetInventory()
					inv:Add(itemtable.empty)
				end
				
				if itemtable.healot and not timer.Exists("foodheal") then
					timer.Create("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				elseif itemtable.healot and timer.Exists("foodheal") then
					timer.Adjust("foodheal", 3, 5, function()
						local newhealth = math.Clamp(player:Health() + itemtable.heal, 1, 100)
						player:SetHealth(newhealth)
					end)
				end


		
				if (istable(self.attribBoosts)) then
					for k, v in pairs(self.attribBoosts) do
						player.GetCharacter():AddBoost(self.uniqueID, k, v)
					end
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					itemtable:SetData("quantity", quantity)
					return false
				end
			end
		}
	end	
end