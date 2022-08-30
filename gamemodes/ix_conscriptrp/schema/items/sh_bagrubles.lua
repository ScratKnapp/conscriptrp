ITEM.name = "Ukrainian rubles"
ITEM.description = "A bunch of weathered Ukrainian currency."
ITEM.longdesc = "Trade in the Zone is primarily conducted via hard currency, due to a lack of faith in electronic transfers over PDAs. While it is an option, few believe it to be safe, as losing your PDA could then mean losing all of your wealth."
ITEM.model = "models/kek1ch/money_ukraina.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "A"
ITEM.maxStack = 5000000
ITEM.quantity = 0
ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 0),
	fov = 2.5,
}
ITEM.weight = 0.001

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		draw.SimpleText(item:GetData("quantity", 1), "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

ITEM.functions.use = {
	name = "Put in Wallet",
	icon = "icon16/stalker/sell.png",
	sound = "stalkersound/money_1.mp3",
	OnRun = function(item)
		local position = item.player:GetItemDropPos()
		local client = item.player
		local quant = item:GetData("quantity", 1)
		client:GetCharacter():GiveMoney(quant)
		ix.chat.Send(item.player, "iteminternal", "counts up some rubles and puts them in their wallet.", false)
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}

function ITEM:GetDescription()
	local quant = self:GetData("quantity", 1)
	local str = self.longdesc

	local customData = self:GetData("custom", {})
	if(customData.desc) then
		str = customData.desc
	end

	if (self.entity) then
		local quant = self:GetData("quantity", 1)
		return self.description.."\n \nThis bundle of cash has a value of "..math.Round(quant).." rubles."
	else
        return (str.."\n\n".."This bundle of cash has a value of "..math.Round(quant).." rubles.")
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