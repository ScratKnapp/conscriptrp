RECIPE.name = "Upgrade Soviet CBRN Suit"
RECIPE.description = "Tear out the thin ballistic vest from a CBRN suit and install a specific harness carrier designed for such a set of Hazmat equipment."
RECIPE.model = "models/shtokerbox/ground_outfit_skat.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["outfitsewingkitbasic"] = 1,
["ducttape"] = 1,
["sovietcbrnsuit"] = 1,
["cbrnupgradekit"] = 1,

}
RECIPE.tools = {
	"sewingkit",
}
RECIPE.results = {
	["sovietnrssuit"] = 1,
["kevlarfragments"] = 2,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)