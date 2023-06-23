RECIPE.name = "Upgrade Conscript Fatigues"
RECIPE.description = "Utilizing such an already poor-quality armor-kit and some modern ballistic fiber, turn a relatively weak Uniform into something that can tank a bullet or two."
RECIPE.model = "models/shtokerbox/ground_outfit_sunrise.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["ballisticfiber"] = 1,
	["outfitsewingkitbasic"] = 1,
["kevlarfragments"] = 2,
["ducttape"] = 1,
["conscriptuniform"] = 1,
}
RECIPE.tools = {
	"sewingkit",
}
RECIPE.results = {
	["conscriptpatrol"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)