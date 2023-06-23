
ITEM.name = "Generic Item"
ITEM.description = "Generic Description"
ITEM.model = "models/maxofs2d/hover_rings.mdl"
ITEM.longdesc = ""


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


function ITEM:GetName()
	local str = self:GetData("name", "Generic Name")
	
	local customData = self:GetData("custom", {})
	if(customData.name) then
		str = customData.name
	end

	return (str)
end

function ITEM:GetDescription()
	local str = self:GetData("description", "Custom Description")
	if self.longdesc then
		str = str.."\n"..(self.longdesc or "")
	end

	local customData = self:GetData("custom", {})
	if(customData.desc) then
		str = customData.desc
	end

	if (customData.longdesc) then
		str = str.."\n"..customData.longdesc or ""
	end

	if (self.entity) then
		return (self.description)
	else
        return (str)
	end
end


function ITEM:GetModel()
	local str = self:GetData("model", "models/Gibs/HGIBS.mdl")

	local customData = self:GetData("custom", {})
	if(customData.model) then
		str = customData.model
	end

	return (str)
end
