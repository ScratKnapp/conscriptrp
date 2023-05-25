RECIPE.name = "Melt Cans"
RECIPE.description = "Utilize a Blowtorch and melt down some tin cans."
RECIPE.model = "models/props_junk/garbage_metalcan002a.mdl"
RECIPE.station = "Work Bench"
RECIPE.requirements = {
	["tincan"] = 3,
["blowtorchfuel"] = 1,
}

RECIPE.tools = {
"blowtorch",
"weldingmask",
}

RECIPE.results = {
	["scrapmetal"] = 1,

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_techbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Work Bench."
end)