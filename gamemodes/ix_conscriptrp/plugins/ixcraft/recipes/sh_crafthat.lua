RECIPE.name = "Hat"
RECIPE.description = "Craft a hat with Refined Metal."
RECIPE.model = "models/tnb/items/aphelion/beanie.mdl"
RECIPE.requirements = {
	["refinedmetal"] = 3,
}


RECIPE.results = {
	["beanie"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)