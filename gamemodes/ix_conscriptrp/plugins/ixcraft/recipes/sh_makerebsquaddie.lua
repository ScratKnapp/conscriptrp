RECIPE.name = "Upgrade Fighter Suit"
RECIPE.description = "Utilizing Pre-War military materials, some ballistic materials, and a sewking kit, utterly tear a suit apart and put it back together in a better way."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebel1.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["prewaroutfittingmat"] = 1,
["kevlarfragments"] = 1,
["ducttape"] = 2,
["ballisticfiber"] = 2,
["clothscrap"] = 4,
["sewingthread"] = 2,
["resistancefightersuit"] = 1,
}
RECIPE.tools = {
	"sewingkit",
}
RECIPE.results = {
	["resistancesquaddiesuit"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)