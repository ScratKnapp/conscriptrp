PLUGIN.name = "Survival System"
PLUGIN.author = "ZeMysticalTaco"
PLUGIN.description = "A survival system consisting of hunger and thirst."

if SERVER then
	function PLUGIN:OnCharacterCreated(client, character)
		character:SetData("hunger", 100)
		character:SetData("thirst", 100)
	end

	function PLUGIN:PlayerLoadedCharacter(client, character)
		timer.Simple(0.25, function()
			client:SetLocalVar("hunger", character:GetData("hunger", 100))
			client:SetLocalVar("thirst", character:GetData("thirst", 100))
			
		end)

		timer.Simple(1, function()
			client:UpdateThirstState(client)
			client:UpdateHungerState(client)
		end)
	end

	function PLUGIN:CharacterPreSave(character)
		local client = character:GetPlayer()

		if (IsValid(client)) then
			character:SetData("hunger", client:GetLocalVar("hunger", 0))
			character:SetData("thirst", client:GetLocalVar("thirst", 0))
		end
	end

	local playerMeta = FindMetaTable("Player")

	function playerMeta:SetHunger(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("hunger", amount)
			self:SetLocalVar("hunger", amount)
		end
	end

	function playerMeta:SetThirst(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("thirst", amount)
			self:SetLocalVar("thirst", amount)
		end
	end

	function playerMeta:TickThirst(amount)
		local char = self:GetCharacter()
		
		if (char) then
			local thirst = char:GetData("thirst",100)
			local newthirst = (thirst - amount)
			
			if char:GetData("thirst", 100) < 0 then
				char:SetData("thirst", 0)
				self:SetLocalVar("thirst", 0)
			else
				char:SetData("thirst", newthirst)
				self:SetLocalVar("thirst", newthirst)
			end
			self:UpdateThirstState(self)
		end
	end

	function playerMeta:TickHunger(amount)
		local char = self:GetCharacter()
		
		if (char) then
			local hunger = char:GetData("hunger",100)
			local newhunger = (hunger - amount)

			if newhunger < 0 then
				char:SetData("hunger", 0)
				self:SetLocalVar("hunger", 0)
			else
				char:SetData("hunger", newhunger)
				self:SetLocalVar("hunger", newhunger)
			end
			self:UpdateHungerState(self)
		end
	end
	
	local ticktimer = 0
	
	function PLUGIN:PlayerTick(ply)
		
		if ticktimer > CurTime() then return end
		ticktimer = CurTime() + 1
		
		local char = ply:GetCharacter()
		
		if char then
			if char:GetData("lastpos") then
				if char:GetData("lastpos") == ply:GetPos() then
					return
				else
					char:SetData("lastpos",ply:GetPos())
				end
			else
				char:SetData("lastpos",ply:GetPos())
			end
		end
	
		if ply:GetNetVar("hungertick", 0) <= CurTime() then
			ply:SetNetVar("hungertick", 300 + CurTime())
			ply:TickHunger(1)
		end

		if ply:GetNetVar("thirsttick", 0) <= CurTime() then
			ply:SetNetVar("thirsttick", 300 + CurTime())
			ply:TickThirst(1)
		end
	end

	function playerMeta:UpdateHungerState(client)
		local hunger = client:GetHunger()
	
		if hunger > 60 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed") * 1.1)
			client:SetMaxSpeed(200)
			client:SetJumpPower(200)
		elseif hunger <= 60 and hunger > 30 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed"))
			client:SetMaxSpeed(175)
			client:SetJumpPower(150)
		elseif hunger <= 30 and hunger > 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.8)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.8)
			client:SetMaxSpeed(150)
			client:SetJumpPower(125)
		elseif hunger <= 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.6)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.6)
			client:SetMaxSpeed(125)
			client:SetJumpPower(100)
		end
	end

	function playerMeta:UpdateThirstState(client)
		local thirst = client:GetThirst()
		
		if thirst > 60 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed") * 1.1)
			client:SetMaxSpeed(200)
			client:SetJumpPower(200)
		elseif thirst <= 60 and thirst > 30 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed"))
			client:SetMaxSpeed(175)
			client:SetJumpPower(150)
		elseif thirst <= 30 and thirst > 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.8)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.8)
			client:SetMaxSpeed(150)
			client:SetJumpPower(125)
		elseif thirst <= 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.6)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.6)
			client:SetMaxSpeed(125)
			client:SetJumpPower(100)
		end
	end
end



local playerMeta = FindMetaTable("Player")

function playerMeta:GetHunger()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("hunger", 100)
	end
end

function playerMeta:GetThirst()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("thirst", 100)
	end
end

function PLUGIN:AdjustStaminaOffset(client, offset)
	local hunger = client:GetHunger()
	local thirst = client:GetThirst()

	if (hunger <= 0) or (thirst <= 0) then
		return offset-0.9
	elseif (hunger <= 30 and hunger > 0) or (thirst <= 30 and thirst > 0) then 
		return offset-0.6
	elseif (hunger <= 60 and hunger > 30) or (thirst <= 60 and thirst > 30) then
		return offset-0.3
	elseif hunger > 60 or thirst > 60 then
		return offset
	end
end

function PLUGIN:HUDPaint()
	local hunger = Material("vgui/hud/hunger.png", "noclamp smooth") 
	local hunger2 = Material("vgui/hud/hunger2.png", "noclamp smooth") 
	local hunger3 = Material("vgui/hud/hunger3.png", "noclamp smooth") 
	local hunger4 = Material("vgui/hud/hunger4.png", "noclamp smooth") 
	local thirst = Material("vgui/hud/thirst.png", "noclamp smooth") 
	local thirst2 = Material("vgui/hud/thirst2.png", "noclamp smooth") 
	local thirst3 = Material("vgui/hud/thirst3.png", "noclamp smooth") 
	local thirst4 = Material("vgui/hud/thirst4.png", "noclamp smooth") 
	local lp = LocalPlayer()
	local wep = LocalPlayer():GetActiveWeapon()
	local char = lp:GetCharacter()
	if (!lp:GetCharacter() or !lp:Alive() or ix.gui.characterMenu:IsVisible()) then return end

	surface.SetMaterial(thirst)
	if LocalPlayer():GetThirst() > 60 then
		surface.SetMaterial(thirst)
		surface.SetDrawColor(Color(0, 0, 0, 0))
	elseif LocalPlayer():GetThirst() <= 60 and LocalPlayer():GetThirst() > 45 then
		surface.SetMaterial(thirst)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetThirst() <= 45 and LocalPlayer():GetThirst() > 30 then
		surface.SetMaterial(thirst2)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetThirst() <= 30 and LocalPlayer():GetThirst() > 15 then
		surface.SetMaterial(thirst3)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetThirst() <= 15 then
		surface.SetMaterial(thirst4)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	end
	surface.DrawTexturedRect(ScrW()-80, ScrH()-500, 33, 35, Color(0, 255, 0, 255))

	surface.SetMaterial(hunger)
	if LocalPlayer():GetHunger() > 60 then
		surface.SetMaterial(hunger)
		surface.SetDrawColor(Color(0, 0, 0, 0))
	elseif LocalPlayer():GetHunger() <= 60 and LocalPlayer():GetHunger() > 45 then
		surface.SetMaterial(hunger)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetHunger() <= 45 and LocalPlayer():GetHunger() > 30 then
		surface.SetMaterial(hunger2)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetHunger() <= 30 and LocalPlayer():GetHunger() > 15 then
		surface.SetMaterial(hunger3)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	elseif LocalPlayer():GetHunger() <= 15 then
		surface.SetMaterial(hunger4)
		surface.SetDrawColor(Color(255, 255, 255, 255))
	end
	surface.DrawTexturedRect(ScrW()-80, ScrH()-450, 33, 35, Color(0, 255, 0, 255))

end

ix.command.Add("charsetthirst", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number,
	},
	OnRun = function(self, client, target, thirst)
		local target = ix.util.FindPlayer(target)
		local thirst = tonumber(thirst)
		
		if !target then
			client:Notify("Invalid Target!")
			return
		end
		target:SetThirst(thirst)

		if client == target then
            client:Notify("You have set your thrist to "..thirst)
        else
            client:Notify("You have set "..target:Name().."'s thirst to "..thirst)
            target:Notify(client:Name().." has set your thirst to "..thirst)
        end
        target:UpdateThirstState(target)
	end
})

ix.command.Add("charsethunger", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number,
	},
	OnRun = function(self, client, target, hunger)
		local target = ix.util.FindPlayer(target)
		local hunger = tonumber(hunger)

		if !target then
			client:Notify("Invalid Target!")
			return
		end

		target:SetHunger(hunger)

		if client == target then
            client:Notify("You have set your hunger to "..hunger)
        else
            client:Notify("You have set "..target:Name().."'s hunger to "..hunger)
            target:Notify(client:Name().." has set your hunger to "..hunger)
        end
        target:UpdateHungerState(target)
	end
})