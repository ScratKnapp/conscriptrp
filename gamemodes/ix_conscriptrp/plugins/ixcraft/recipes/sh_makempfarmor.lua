RECIPE.name = "Upgrade Recruit Armor"
RECIPE.description = "Upgrade a spiffy but light suit of Combine Civil Authority Armor into its standard issue variant."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebelmetrocop.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Union Suits"
RECIPE.requirements = {
	["blowtorchfuel"] = 1,
["kevlarfragments"] = 3,
["ballisticthread"] = 1,
["combinealloy"] = 2,
["mpfrctsuit"] = 1,
}
RECIPE.tools = {
	"blowtorch",
"weldingmask",
"sewingkit",
}
RECIPE.results = {
	["mpfofficersuit"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)