RECIPE.name = "Melt Sign Down"
RECIPE.description = "Utilize a Blowtorch and melt down a metal bus sign."
RECIPE.model = "models/props_c17/streetsign003b.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Work Bench"
RECIPE.requirements = {
	["bussign"] = 1,
["blowtorchfuel"] = 1,
}

RECIPE.tools = {
"blowtorch",
"weldingmask",
}

RECIPE.results = {
	["scrapmetal"] = 2,

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Work Bench."
end)