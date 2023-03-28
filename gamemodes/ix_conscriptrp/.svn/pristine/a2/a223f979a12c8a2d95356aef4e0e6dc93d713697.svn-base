RECIPE.name = "Trauma Gauze"
RECIPE.description = "Disinfecting fabric and combining it with medical bandaging allows you to sew and thread together a more effective roll of proper wound-packing medical gauze."
RECIPE.model = "models/carlsmei/escapefromtarkov/medical/bandage.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["vodka"] = 1,
	["bandage"] = 2,
	["fabricpatch"] = 2,
}
RECIPE.results = {
	["traumagauze"] = 1,

}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)