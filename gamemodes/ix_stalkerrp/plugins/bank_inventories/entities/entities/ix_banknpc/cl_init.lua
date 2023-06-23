ENT.PrintName = "Bank Entity"
ENT.Author = "gm1003 ツ"
ENT.PopulateEntityInfo = true

function ENT:OnPopulateEntityInfo(tooltip)
    surface.SetFont("ixIconsSmall")

    local title = tooltip:AddRow("name")
    title:SetImportant()
    title:SetText("A set of Lockers...")
    title:SetBackgroundColor(ix.config.Get("color"))
    title:SizeToContents()

    local description = tooltip:AddRow("description")
    description:SetText("A set of locked lockers utilized to store non-mission essential supplies.")
    description:SizeToContents()
end