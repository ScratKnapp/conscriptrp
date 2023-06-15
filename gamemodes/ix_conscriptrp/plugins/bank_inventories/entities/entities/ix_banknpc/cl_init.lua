ENT.PrintName = "Bank NPC"
ENT.Author = "gm1003 ツ"
ENT.PopulateEntityInfo = true

function ENT:OnPopulateEntityInfo(tooltip)
    surface.SetFont("ixIconsSmall")

    local title = tooltip:AddRow("name")
    title:SetImportant()
    title:SetText("Bank NPC")
    title:SetBackgroundColor(ix.config.Get("color"))
    title:SizeToContents()

    local description = tooltip:AddRow("description")
    description:SetText("A bank account that holds your extra money and items")
    description:SizeToContents()
end