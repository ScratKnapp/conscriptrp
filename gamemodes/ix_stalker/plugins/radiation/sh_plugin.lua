local PLUGIN = PLUGIN
PLUGIN.name = "Radiation"
PLUGIN.author = "Some body onc-"
PLUGIN.desc = "Radiation System"

ix.util.Include("cl_plugin.lua")

local playerMeta = FindMetaTable("Player")
local entityMeta = FindMetaTable("Entity")

function playerMeta:getRadiation()
	return (self:GetNetVar("AccumRads")) or 0
end

function playerMeta:getRadiationPercent()
	return math.Clamp(self:getRadiation()/100, 0 ,1)
end

function playerMeta:addRadiation(amount)
	local curRadiation = self:getRadiation()

	self:SetNetVar("AccumRads", 
		math.Clamp(math.min(curRadiation) + amount, 0, 100)
	)
end

function playerMeta:setRadiation(amount)
	self:SetNetVar("AccumRads", math.Clamp(amount, 0, 100))
end

function playerMeta:hasGeiger()
	local char = self:GetChar()
	local geigercounter = self:GetNetVar("ixhasgeiger")

	if !geigercounter then
		return false
	else
		return true
	end
end

function PLUGIN:PostPlayerLoadout(client)
	if client:GetData("ixhasgeiger", false) then
		client:SetNetVar("ixhasgeiger", true)
	end
end

function playerMeta:getRadResist()
	local res = 0
	local char = self:GetCharacter()
	local items = char:GetInventory():GetItems(true)

	for k,v in pairs(items) do
		if (v.radProt and v:GetData("equip") == true) then
			res = res + v.radProt
			break
		end
	end

	--second loop for artifacts

	if ix.plugin.list["buffs"] then
		if self:HasBuff("buff_radprotect") then
			res = res + 0.1
		end
	end

	return res
end

function PLUGIN:EntityTakeDamage(entity, dmgInfo)
	--RADIATION OVERRIDE
	if ( entity:IsPlayer() and dmgInfo:IsDamageType(DMG_RADIATION)) then
		local radAmount = (dmgInfo:GetDamage()/10)
		local radResist = entity:getRadResist()
		
		entity:addRadiation(math.Clamp(radAmount - radResist ,0, 100))
		dmgInfo:SetDamage(0)
	end
end

-- Register HUD Bars.
if (CLIENT) then
	local color = Color(39, 174, 96)

	--nut.bar.add(function() return (LocalPlayer():getRadiationPercent()) end, color, nil, "radiation")
	function PLUGIN:RenderScreenspaceEffects()
		if (LocalPlayer():getRadiation() > 45 and LocalPlayer():getRadiation() < 75) then
			DrawMotionBlur(0.05, 0.15, 0.001)
		elseif(LocalPlayer():getRadiation() > 75) then
			DrawMotionBlur(0.1, 0.3, 0.001)
		end
    end
else
	local PLUGIN = PLUGIN
	
	function PLUGIN:CharacterPreSave(character)
		local savedRads = math.Clamp(character.player:getRadiation(), 0, 100)
		character:SetData("radiation", savedRads)
	end

	function PLUGIN:PostPlayerLoadout(client)
		if (client:GetCharacter():GetData("radiation")) then
			client:SetNetVar("AccumRads", client:GetCharacter():GetData("radiation"))
		else
			client:SetNetVar("AccumRads", 0)
		end
	end

	function PLUGIN:PlayerDeath(client)
		client.resetRads = true
	end

	function PLUGIN:PlayerSpawn(client)
		if (client.resetRads) then
			client:SetNetVar("AccumRads", 0)
			client.resetRads = false
		end
	end
end

ix.command.Add("charsetradiation", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number,
	},
	OnRun = function(self, client, target, radiation)
		local target = ix.util.FindPlayer(target)
		local radiation = tonumber(radiation)

		target:setRadiation(radiation)

		if client == target then
            client:Notify("You have set your radiation to "..radiation)
        else
            client:Notify("You have set "..target:Name().."'s radiation to "..radiation)
            target:Notify(client:Name().." has set your radiation to "..radiation)
        end
	end
})