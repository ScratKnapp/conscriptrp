RECIPE.name = "Upgrade Officer Armor"
RECIPE.description = "Upgrade a standard Officer suit of Combine Civil Authority Armor into its Squad-Leader issued variant."
RECIPE.model = "models/tnb/items/aphelion/shirt_rebelmetrocop.mdl"
RECIPE.station = "Workbench"
RECIPE.category = "Armor"
RECIPE.requirements = {
["kevlarfragments"] = 3,
["ballisticfiber"] = 2,
["ducttape"] = 2,
["sewingthread"] = 2,
["outfitsewingkitadvanced"] = 1,
["mpfofficerarmor"] = 1,
}
RECIPE.tools = {
"sewingkit",
}
RECIPE.results = {
	["mpfcommandarmor"] = 1,

}
RECIPE.blueprint = "blueprintcommandarmor"




RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)