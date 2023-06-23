ITEM.name = "Strobe's Mask"
ITEM.model = "models/shtokerbox/ground_mask_heat.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Electronics"
ITEM.price = 3000
ITEM.flag = "1"
ITEM.equipIcon = Material("materials/vgui/ui/stalker/misc/equip.png")
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 0.25
ITEM.weaponCategory = "PDA"

function ITEM:GetDescription()
	return "A highly modified, black MPF Mask with a screen as its visor. Such a visor sports a built-in PDA device, and randomly displays data most users can't exactly make sense of. It seems whoever modified this mask did so in a very makeshift manner, as occasionally the entire visor will flash red and spam ERROR messages across the wearer's view. \nFace: II\nHead: II" .. "\n\nAvatar: " .. self:GetData("avatar","vgui/icons/face_31.png") .. "\n\nNickname: " .. self:GetData("nickname", "meme")
end

ITEM.functions.setavatar = { -- sorry, for name order.
	name = "Select Avatar",
	tip = "useTip",
	icon = "icon16/stalker/customize.png",
	OnRun = function(item)
		item.player:RequestString("Set Avatar", "What avatar do you want this PDA to use? Select any material path.", function(text)
			if text != "" then
				item:SetData("avatar", text)
				item:GetOwner():GetCharacter():SetData("pdaavatar", text)
			end
		end, item:GetData("avatar", "vgui/icons/face_31.png"))
		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client)
	end
}

ITEM.functions.setnickname = { -- sorry, for name order.
	name = "Set your nickname",
	tip = "useTip",
	icon = "icon16/stalker/customize.png",
	OnRun = function(item)
		item.player:RequestString("Set Nickname", "What nickname do you want to use with this PDA?", function(text)
			item:SetData("nickname", text)
			item:GetOwner():GetCharacter():SetData("pdanickname", text)
		end, item:GetData("nickname", item.player:Name()))
		return false
	end,
}

function ITEM:OnEquipped()
	self.player:GetCharacter():SetData("pdaavatar", self:GetData("avatar", "lutz"))
	self.player:GetCharacter():SetData("pdanickname", self:GetData("nickname", "lutz"))
end

function ITEM:OnUnEquipped()

end

function ITEM:OnInstanced()
	self:SetData("avatar", "vgui/icons/face_31.png")
	self:SetData("nickname", "NEW_USER")
end
