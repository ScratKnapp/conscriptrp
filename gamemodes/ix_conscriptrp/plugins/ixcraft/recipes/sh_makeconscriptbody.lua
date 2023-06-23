RECIPE.name = "Upgrade Conscript Patrol Armor"
RECIPE.description = "Tear apart of a set of upgraded rags and reassemble them into an even better set of upgraded rags."
RECIPE.model = "models/shtokerbox/ground_outfit_sunrise.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["ballisticfiber"] = 1,
	["sewingthread"] = 1,
["ducttape"] = 2,
["clothscrap"] = 5,
["conscriptpatrol"] = 1,
}
RECIPE.tools = {
	"sewingkit",
}
RECIPE.results = {
	["conscriptbodyarmor"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)