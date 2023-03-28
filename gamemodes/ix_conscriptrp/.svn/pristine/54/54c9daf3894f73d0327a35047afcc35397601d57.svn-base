RECIPE.name = "Repair City Scanner"
RECIPE.description = "Restore a broken City Scanner to working order with spare parts."
RECIPE.model = "models/gibs/scanner_gib05.mdl"
RECIPE.category = "Repair"
RECIPE.station = "Technology Bench"
RECIPE.requirements = {
	["scannerbroken"] = 1,
	["combinebattery"] = 1,
	["wirebundle"] = 3,
	["capacitors"] = 3,
	["nutsbolts"] = 4,
}

RECIPE.tools = {
	"screwdriver",
	"pliers"
}
RECIPE.results = {
	["scanner"] = 1,



}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_techbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Technology Bench."
end)