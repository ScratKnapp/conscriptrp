local PLUGIN = PLUGIN
PLUGIN.name = "Suits"
PLUGIN.author = "Subleader and Alexgrist and verne (Outfit base used)"
PLUGIN.desc = "Compatible with bad air and localized damage, plus it adds damage resistance"

ix.util.Include("cl_plugin.lua")

local playerMeta = FindMetaTable("Player")

function playerMeta:getEquippedBodyArmor()
	local char = self:GetCharacter()
	local inventory = char:GetInventory()
	if inventory then
		local items = char:GetInventory():GetItems(true)

		for k, v in pairs(items) do
			if (v.isBodyArmor and v:GetData("equip")) then
				return v
			end
		end

		return nil
	end
	return nil 
end

function playerMeta:getEquippedBodyArmor()
	local char = self:GetCharacter()
	local inventory = char:GetInventory()
	if inventory then
		local items = char:GetInventory():GetItems(true)

		for k, v in pairs(items) do
			if (v.isBodyArmor and v:GetData("equip")) then
				return v
			end
		end

		return nil
	end
	return nil
end

function playerMeta:getEquippedHelmet()
	local char = self:GetCharacter()
	local inventory = char:GetInventory()
	if inventory then
		local items = char:GetInventory():GetItems(true)

		for k, v in pairs(items) do
			if (v.isHelmet and v:GetData("equip")) then
				return v
			end
		end

		return nil
	end
	return nil
end

function playerMeta:getEquippedGasmask()
	local char = self:GetCharacter()
	local inventory = char:GetInventory()
	if inventory then
		local items = char:GetInventory():GetItems(true)

		for k, v in pairs(items) do
			if (v.isGasmask and v:GetData("equip")) then
				return v
			end
		end

		return nil
	end
	return nil
end

function playerMeta:ReevaluateOverlay()
	local char = self:GetCharacter()
	local inventory = char:GetInventory()
	if inventory then
		local items = char:GetInventory():GetItems(true)

		for k, v in pairs(items) do
			if (v.overlayPath and v:GetData("equip")) then
				self:SetNetVar("gasmask", false)
			else
				self:SetNetVar("gasmask", true)
			end
		end
	end
end

function PLUGIN:PostPlayerLoadout(client)
	client:ReevaluateOverlay()
end