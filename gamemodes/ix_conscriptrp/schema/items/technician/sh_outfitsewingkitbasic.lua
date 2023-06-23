ITEM.name = "Outfit Sewing Kit"
ITEM.model = "models/kek1ch/sewing_kit_a.mdl"
ITEM.description = "Common tools and materials for taking care of damaged outfits."
ITEM.longdesc = "A light sewing kit consisting of a cloth reel, several steel needles and a pair of scissors. It can be used to sew up bullet holes or ruptures in soft fabrics of outfits. Its practical applications are limited due to the short length of the thread and subpar durability of needles, so the kit will be useless in case of more serious damage. For the same reason, it's compatible with only a handful of materials. Nonetheless, it is strongly advised to always use whatever is available to make the kit more effective."
ITEM.flag = "3"
ITEM.category = "Technician"
ITEM.price = 15000
ITEM.repairAmount = 5
ITEM.repairTreshhold = 80
ITEM.maxStack = 3
ITEM.sound = "stalkersound/inv_repair_sewing_kit_fast.mp3"
ITEM.weight = 0.2
 
ITEM.functions.use = {
	name = "Stitch up outfit",
	tip = "useTip",
	icon = "icon16/stalker/repair.png",
	isMulti = true,
	multiOptions = function(item, client)
		local targets = {}
		local char = client:GetCharacter()
		
		
		if (char) then
			local inv = char:GetInventory()

			if (inv) then
				local items = inv:GetItems()

				for k, v in pairs(items) do
					if (v.isBodyArmor or v.isHelmet or v.isGasmask) and item.repairTreshhold < v:GetData("durability", 0) and v:GetData("durability", 0) < 100 then
						table.insert(targets, {
							name = "Repair "..v.name.." with "..math.Round(v:GetData("durability",0), 2).." percent durability to "..math.Clamp(math.Round(v:GetData("durability",0), 2)+item.repairAmount, 0, 100).." percent durability.",
							data = {v:GetID()},
						})
					else
						continue
					end
				end
			end
		end

		return targets
		end,
	OnCanRun = function(item)				
		return (!IsValid(item.entity))
	end,
	OnRun = function(item, data)
		local client = item.player
		local char = client:GetCharacter()
		local inv = char:GetInventory()
		local items = inv:GetItems()
		local target = data
		
		for k, invItem in pairs(items) do
			if (data[1]) then
				if (invItem:GetID() == data[1]) then
					target = invItem

					break
				end
			else
				client:Notify("No outfit selected.")
				return false
			end
		end
		
		if item:GetData("quantity",3) > 3 then
			item:SetData("quantity",3)
		end
		
		if target:GetData("equip") != true then
			if target:GetData("durability",100) > item.repairTreshhold then
				target:SetData("durability", math.Clamp(target:GetData("durability",100) + item.repairAmount, 0, 100))
				client:Notify(target.name.." successfully repaired.")
				item.player:EmitSound(item.sound or "items/battery_pickup.wav")
				if item:GetData("quantity",3) > 1 then
					item:SetData("quantity", item:GetData("quantity",3) - 1)
					return false
				else
					return true
				end
			else
				client:Notify("Óutfit too damaged.")
				return false
			end
		else
			client:Notify("Unequip the outfit first!")
			return false	
		end
	end,
}

function ITEM:GetDescription()
	local quant = self:GetData("quantity", 1)
	local str = self.description.."\n"..self.longdesc.."\n\n"

	local customData = self:GetData("custom", {})
	if(customData.desc) then
		str = customData.desc
	end

	if (self.entity) then
		return self.description.."\n \nThis tool has "..math.Round(quant).." uses left durability."
	else
        return (str.."Amount of durability restored: "..self.repairAmount.."% \nMinimum durability percentage: "..self.repairTreshhold.."%".."\n \nThis tool has "..quant.."/"..self.maxStack.." uses left.")
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
		draw.SimpleText(item:GetData("quantity", 1).."/"..item.maxStack, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("quantity") then
		self:SetData("quantity", self.maxStack)
	end
end