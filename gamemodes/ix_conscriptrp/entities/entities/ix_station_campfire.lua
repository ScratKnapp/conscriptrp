AddCSLuaFile()

ENT.Base            = "base_ai"
ENT.Type            = "anim"
ENT.PrintName        = "Campfire"
ENT.Author            = "Ultra"
ENT.Category         = "Helix"

ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.HUDName = "Campfire"
ENT.HUDDesc = "A campfire."

if (SERVER) then
    function ENT:Initialize()
        self:SetModel("models/vj_props/fireplace.mdl")
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:SetUseType(SIMPLE_USE)

        local phys = self:GetPhysicsObject()
        if (phys:IsValid()) then
            phys:Wake()
        end
    end
end


if (CLIENT) then
    function ENT:OnPopulateEntityInfo(tooltip)
        surface.SetFont("ixIconsSmall")
    
        local title = tooltip:AddRow("name")
        title:SetImportant()
        title:SetText("Campfire")
        title:SetBackgroundColor(ix.config.Get("color"))
        title:SizeToContents()
    
        local description = tooltip:AddRow("description")
        description:SetText("A campfire, fitted with metal grille and potholders, making it suitable for basic cooking tasks.")
        description:SizeToContents()
    
    end
end