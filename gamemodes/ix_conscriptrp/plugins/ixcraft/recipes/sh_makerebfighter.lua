RECIPE.name = "Upgrade Partisan Suit"
RECIPE.description = "Utilizing Kevlar bits, layered scrap, and of course duct tape, make an inconspicuous set of Partisan Armor into a proper set of Resistance Fatigues."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebel1.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["blowtorchfuel"] = 1,
["kevlarfragments"] = 1,
["ducttape"] = 1,
["combinemetal"] = 1,
["reclaimedmetal"] = 1,
["partisansuit"] = 1,
}
RECIPE.tools = {
	"blowtorch",
"weldingmask",
}
RECIPE.results = {
	["resistancefightersuit"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)