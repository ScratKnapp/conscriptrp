PLUGIN.name = "Armor"
PLUGIN.author = "Lt. Taylor"
PLUGIN.desc = "Armor system including durability, upgrades, and anomaly resistances."
PLUGIN.repairFlag = "R"

ix.flag.Add(PLUGIN.repairFlag, "Access to repair things.")

if (CLIENT) then
	local PANEL = {}
	function PANEL:Init()
	    local DuraSlider = self:Add("DNumSlider")
		DuraSlider:SetText("Armor Durability")
		DuraSlider:SetMin(0)
		DuraSlider:SetMax(100)
		DuraSlider:SetDecimals(0)
		DuraSlider:Dock(FILL)
		
		self:SetTitle("Set Armor Durability")
		self:SetSize(400, 150)
		self:Center()
		self:MakePopup()

		self.submit = self:Add("DButton")
		self.submit:Dock(BOTTOM)
		self.submit:DockMargin(0, 5, 0, 0)
		self.submit:SetTall(25)
		self.submit:SetText("Confirm")
		self.submit.DoClick = function()
		    local dura = DuraSlider:GetValue()
    		netstream.Start("armordurabilityAdjust", (dura * 100), self.itemID)
    		self:Close()
		end
	end

	function PANEL:Think()
		self:MoveToFront()
	end

	vgui.Register("ArmorDurabilityMenu", PANEL, "DFrame")

	netstream.Hook("armordurabilityAdjust", function(dura, id)
		local adjust = vgui.Create("ArmorDurabilityMenu")

		if (id) then
			adjust.itemID = id
		end
	end)
else
	netstream.Hook("armordurabilityAdjust", function(client, dura, id)
		local inv = (client:GetChar() and client:GetChar():GetInv() or nil)

		if (inv) then
			local item
			if (id) then
				item = ix.item.instances[id]
    			local ent = item:GetEntity()
    			if (item and (IsValid(ent) or item:GetOwner() == client)) then
    				(ent or client):EmitSound("buttons/combine_button1.wav", 50, 170)
                    dura = math.Round(dura)
    				item:SetData("durability", dura)
    			else
    				client:Notify("No Armor")
    			end
			end
		end
	end)
end