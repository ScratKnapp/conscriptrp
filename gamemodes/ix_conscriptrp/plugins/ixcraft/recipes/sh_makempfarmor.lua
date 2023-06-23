RECIPE.name = "Upgrade Recruit Armor"
RECIPE.description = "Upgrade a spiffy but light suit of Combine Civil Authority Armor into its standard issue variant."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebelmetrocop.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
["kevlarfragments"] = 3,
["ballisticfiber"] = 1,
["sewingthread"] = 1,
["outfitsewingkitbasic"] = 1,
["mpfrctarmor"] = 1,
}
RECIPE.tools = {
"sewingkit",
}
RECIPE.results = {
	["mpfofficerarmor"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)