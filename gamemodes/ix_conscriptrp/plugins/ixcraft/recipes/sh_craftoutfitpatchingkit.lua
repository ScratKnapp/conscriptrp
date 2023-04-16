RECIPE.name = "Outfit Patching Kit"
RECIPE.description = "Make a little kit of ballistic patches fit for patching up soft-armor and securing a suit where it's been breached. Can only work for so much damage."
RECIPE.model = "models/warz/items/sandbag_unbuilt.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["kevlarfragments"] = 3,
	["ducttape"] = 2,
}

RECIPE.results = {
	["outfitsewingkitbasic"] = 1,
}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)