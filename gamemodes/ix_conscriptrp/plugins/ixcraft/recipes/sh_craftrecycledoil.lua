RECIPE.name = "Recycle Oil"
RECIPE.description = "Play with flammable substances until it creates an even more flammable substance."
RECIPE.model = "models/mosi/fallout4/props/junk/components/oil.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["oilcannister"] = 1,
	["watercan"] = 2,
}
RECIPE.results = {
	["recycledoil"] = 1,

}

RECIPE.blueprint = "blueprintradio"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)