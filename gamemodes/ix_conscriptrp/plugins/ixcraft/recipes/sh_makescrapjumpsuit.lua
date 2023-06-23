RECIPE.name = "Craft Scrap Jumpsuit"
RECIPE.description = "Follow a highly detailed blueprint to weld together and produce a ballistically effective armor suit."
RECIPE.model = "models/shtokerbox/ground_outfit_exoskeleton.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["reclaimedmetal"] = 2,
	["scrapmetal"] = 6,
	["ducttape"] = 2,
	["blowtorchfuel"] = 2,
	["combinemetal"] = 1,
	["cityjumpsuit"] = 1,
["sewingthread"] = 2,
}

RECIPE.tools = {
	"hammer",
"sewingkit",
"blowtorch",
"weldingmask",
}
RECIPE.results = {
	["scrapjumpsuit"] = 1,

}

RECIPE.blueprint = "blueprintscrapsuit"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)