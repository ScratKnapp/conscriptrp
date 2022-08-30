ITEM.name = "ECS Pearl Stimpack"
ITEM.description = "A stimpack made by the ECS program of the 'Gem' variety. It's labeled as 'Pearl'"
ITEM.longdesc = "All-around healer, surges the target with adrenaline before they temporarily lose consciousness and then will awake with a Moderate Stagger or worse.\n\n Immune to stun/incap for three friendly turns. Results in incap on fourth friendly turn. Results in 5 day Decreased Motor-Function TI."
ITEM.model = "models/warz/items/syringe.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.restore = 4
ITEM.radrem = 2
ITEM.sound = "stalkersound/inv_bandage.mp3"
ITEM.price = "50000"
ITEM.flag = "1"
ITEM.quantity = 1
ITEM.weight = 1
ITEM.stopsBleed = true

local function stopBleed(item)
	local client = item.player
	if(item.stopsBleed) then
		if(timer.Exists(client:Name().."res_bleed")) then
			timer.Remove(client:Name().."res_bleed")
			
			client:Notify("Your bleeding has stopped.")
		end
	end
end

function ITEM:GetDescription()
	if (!self.entity or !IsValid(self.entity)) then
		local quant = self:GetData("quantity", self.quantity)
		local str = self.longdesc.."\n \nThere's only "..quant.." use left."

		return str
	else
		return self.desc
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)

		draw.SimpleText(item:GetData("quantity", item.quantity).."/"..item.quantity, "DermaDefault", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

ITEM.functions.use = {
	name = "Heal",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		item.player:AddBuff("buff_slowheal", 20, { amount = item.restore })
		item.player:AddBuff("buff_radiationremoval", 10, { amount = item.radrem })
		ix.chat.Send(item.player, "iteminternal", "opens a "..item.name.." and uses it.", false)
		stopBleed(item)
		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end
		
		

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
/*
ITEM.functions.usetarget = {
	name = "Heal Target",
	icon = "icon16/stalker/heal.png",
	onRun = function(item)
		local data = {}
			data.start = item.player:GetShootPos()
			data.endpos = data.start + item.player:GetAimVector()*96
			data.filter = item.player
		local target = util.TraceLine(data).Entity
		local quantity = item:getData("quantity", item.quantity)
		if (IsValid(target) and target:IsPlayer()) then
			target:AddBuff("buff_slowheal", 15, { amount = item.restore*(1+(item.player:getChar():getAttrib("medical", 0)/50))/10 })
			nut.chat.send(item.player, "iteminternal", "opens a "..item.name.." and uses it on "..target:Name()..".", false)
			
			quantity = quantity - 1

			if (quantity >= 1) then
				item:setData("quantity", quantity)
				return false
			end
			
			
		else
			item.player:notify("Not looking at a player!")
			return false
		end

		return true
	end,
	onCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
