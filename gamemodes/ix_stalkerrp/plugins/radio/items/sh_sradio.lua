ITEM.name = "Stationary Radio"
ITEM.model = "models/props_lab/citizenradio.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 2000
ITEM.flag = "1"
ITEM.category = "Electronics"
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 3
ITEM.flag = "1"

local function getText(togga)
	if (togga) then
		return "<color=39, 174, 96>" .. L"on" .. "</color>"
	else
		return "<color=192, 57, 43>" .. L"off" .. "</color>"
	end
end

function ITEM:GetDescription()
	local str
	
	if (!self.entity or !IsValid(self.entity)) then
		str = "A stationary radio, used for two-way communication. \nPower: %s\nFrequency: %s"
		return Format(str, (self:GetData("power") and "On" or "Off"), self:GetData("freq", "000.0"))
	else
		local data = self.entity:GetData()
		
		str = "A stationary radio, used for two-way communication. Power: %s Frequency: %s"
		return Format(str, (self.entity:GetData("power") and "On" or "Off"), self.entity:GetData("freq", "000.0"))
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		if (item:GetData("power")) then
			surface.SetDrawColor(110, 255, 110, 100)
		else
			surface.SetDrawColor(255, 110, 110, 100)
		end

		surface.DrawRect(w - 14, h - 14, 8, 8)
	end

	local GLOW_MATERIAL = Material("sprites/glow04_noz.vmt")
	local COLOR_ACTIVE = Color(0, 255, 0)
	local COLOR_INACTIVE = Color(255, 0, 0)

	function ITEM:DrawEntity(entity, item)
		entity:DrawModel()

		local position = entity:GetPos() + entity:GetForward() * 10 + entity:GetUp() * 11 + entity:GetRight() * 9.5

		render.SetMaterial(GLOW_MATERIAL)
		render.DrawSprite(position, 14, 14, entity:GetData("power", false) and COLOR_ACTIVE or COLOR_INACTIVE)
	end
end

// On player uneqipped the item, Removes a weapon from the player and keep the ammo in the item.
ITEM.functions.toggle = { -- sorry, for name order.
	name = "Toggle",
	tip = "useTip",
	icon = "icon16/stalker/throw.png",
	OnRun = function(item)
		item:SetData("power", !item:GetData("power", false), nil, nil)
		item.player:EmitSound("buttons/button14.wav", 70, 150)

		return false
	end,
}

ITEM.functions.use = { -- sorry, for name order.
	name = "Freq",
	tip = "useTip",
	icon = "icon16/stalker/customize.png",
	OnRun = function(item)
		netstream.Start(item.player, "radioAdjust", item:GetData("freq", "000,0"), item.id)

		return false
	end,
}

ITEM.functions.Sell = {
	name = "Sell",
	icon = "icon16/stalker/sell.png",
	sound = "physics/metal/chain_impact_soft2.wav",
	OnRun = function(item)
		local client = item.player
		local sellprice = item.price
		sellprice = math.Round(sellprice*0.75)
		client:Notify( "Sold for "..(sellprice).." rubles." )
		client:GetCharacter():GiveMoney(sellprice)
	end,
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetOwner():GetCharacter():HasFlags("1")
	end
}

ITEM.functions.Value = {
	name = "Value",
	icon = "icon16/help.png",
	sound = "physics/metal/chain_impact_soft2.wav",
	OnRun = function(item)
		local client = item.player
		local sellprice = item:GetData("RealPrice") or item.price
		sellprice = math.Round(sellprice*0.75)
		client:Notify( "Item is sellable for "..(sellprice).." rubles." )
		return false
	end,
	OnCanRun = function(item)
		return !IsValid(item.entity) and item:GetOwner():GetCharacter():HasFlags("1")
	end
}