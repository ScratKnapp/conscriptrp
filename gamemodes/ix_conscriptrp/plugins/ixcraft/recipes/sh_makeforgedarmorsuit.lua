RECIPE.name = "Craft Forged Metal Armor"
RECIPE.description = "Follow a highly detailed blueprint to weld together and produce a ballistically effective armor suit."
RECIPE.model = "models/shtokerbox/ground_outfit_exoskeleton.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["forgedmetal"] = 4,
	["reclaimedmetal"] = 8,
	["ducttape"] = 4,
	["blowtorchfuel"] = 3,
	["combinemetal"] = 3,
	["cityjumpsuit"] = 1,
	["ballisticfiber"] = 2,
["sewingthread"] = 3,
}

RECIPE.tools = {
	"hammer",
"sewingkit",
"blowtorch",
"weldingmask",
}
RECIPE.results = {
	["forgedmetalarmor"] = 1,

}

RECIPE.blueprint = "blueprintforgedsuit"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)