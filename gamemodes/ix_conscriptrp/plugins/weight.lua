PLUGIN.name = "Weight"
PLUGIN.author = "Lt. Taylor"
PLUGIN.desc = "Adds a Weight system for items"

local backpacks = {
	["Modern Military Backpack (Ukranian)"] = 55,
	["Modern Military Backpack (USA)"] = 55,
	["Modern Military Backpack (Russian)"] = 55,
	["Large Modern Military Backpack (Ukranian)"] = 60,
	["Large Modern Military Backpack (USA)"] = 60,
	["Large Modern Military Backpack (Russian)"] = 60,
	["Zone Survival Backpack"] = 65,
	["Zone Survival Backpack (Camouflaged)"] = 65,
	["Large Zone Survival Backpack"] = 70,
	["Large Zone Survival Backpack (Camouflaged)"] = 70,
}
 
if (SERVER) then
    function PLUGIN:CharacterLoaded(char) 
        if char == nil then return end
        local character = char
		local carrybuff = character:GetData("WeightBuffCur") or 0
        local inventory = character:GetInv()
        local weight = 0
        local totweight = 0
        local maxweight = 50
        for x, y in pairs(inventory:GetItems()) do
			if y.weight == nil then continue end
			
			local quantity = y:GetData("quantity",1)
			
            if y:GetData("weight") ~= nil then
                weight = y:GetData("weight",0)
            elseif y.weight ~= nil then
                weight = y.weight
            end
            
            if y.isCW then
                if weight ~= (y.weight + y:GetData("weight",0)) then
            	    weight = y.weight + y:GetData("weight",0)
            	end
            end
            
            totweight = ((quantity * weight) + totweight)
        end
		
		for x,y in pairs(inventory:GetItems(true)) do
			if backpacks[y.name] then
				if backpacks[y.name] > maxweight then
					maxweight = backpacks[y.name]
				end
			end
		end
		
		maxweight = maxweight + carrybuff
        character:SetData("Weight", totweight)
        character:SetData("MaxWeight", maxweight)
    end
elseif (CLIENT) then
    function PLUGIN:PostDrawInventory(panel)
        if LocalPlayer():GetChar() == nil then return end
        local character = LocalPlayer():GetChar()
        local weight = character:GetData("Weight",0)
        local maxweight = character:GetData("MaxWeight",50)
        if IsValid(panel) then
			local newString = L"inv" .. " | " .. weight .. "kg of " .. maxweight .. "kg"
			if panel:GetTitle() == newString then
				return
			else
				panel:SetTitle(newString)
			end
        end
    end
end

function PLUGIN:PlayerInteractItem(client, action, item)
    local character = client:GetChar()
	local carrybuff = character:GetData("WeightBuffCur") or 0
    local inventory = character:GetInv()
    local weight = 0
    local totweight = 0
    local maxweight = 50
	
	if action == "take" then
		if item.weight then
			if item:GetData("quantity") then
				totweight = (totweight + (item:GetData("quantity") * item.weight))
			else
				totweight = (totweight + item.weight)
			end
		end
    elseif action == "drop" then
		if item.weight then
			if item:GetData("quantity") then
				totweight = (totweight - (item:GetData("quantity") * item.weight))
			else
				totweight = (totweight - item.weight)
			end
		end
	end
	
    for x, y in pairs(inventory:GetItems()) do
		if y.weight == nil then continue end
		local quantity = y:GetData("quantity",1)
		
        if y:GetData("weight") ~= nil then
            weight = y:GetData("weight",0)
        elseif y.weight ~= nil then
            weight = y.weight
        end
        
        if y.isCW then
            if weight ~= (y.weight + y:GetData("weight",0)) then
                weight = y.weight + y:GetData("weight",0)
			end
        end
        
        totweight = ((quantity * weight) + totweight)
    end
	
	for x,y in pairs(inventory:GetItems(true)) do
		if backpacks[y.name] then
			if backpacks[y.name] > maxweight then
				maxweight = backpacks[y.name]
			end
		end
	end
	
	maxweight = maxweight + carrybuff
    character:SetData("Weight", totweight)
    character:SetData("MaxWeight", maxweight)
end