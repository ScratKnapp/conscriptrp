RECIPE.name = "Recycle Oil"
RECIPE.description = "Combine the contents of a rusted Oil Cannister and Breen's Water into a cylinder-shaped beaker. Utilize a fine-grate filter to scoop remaining rust-bits from the separated fluids."
RECIPE.model = "models/mosi/fallout4/props/junk/components/oil.mdl"
RECIPE.station = "Chemistry Bench"
RECIPE.category = "Disassembly"
RECIPE.requirements = {
	["oilcannister"] = 1,
	["watercan"] = 2,
}
RECIPE.results = {
	["recycledoil"] = 2,

}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Chemistry Bench."
end)