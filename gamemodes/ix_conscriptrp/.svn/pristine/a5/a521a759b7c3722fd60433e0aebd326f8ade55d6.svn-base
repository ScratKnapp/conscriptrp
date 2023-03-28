RECIPE.name = "Repair Manhack"
RECIPE.description = "Restore a broken Manhack to working order with spare parts."
RECIPE.model = "models/gibs/manhack_gib02.mdl"
RECIPE.category = "Repair"
RECIPE.station = "Technology Bench"
RECIPE.requirements = {
	["manhackbroken"] = 1,
	["combinebattery"] = 1,
	["wirebundle"] = 2,
	["capacitors"] = 1,
	["nutsbolts"] = 2,
}

RECIPE.tools = {
	"screwdriver",
	"pliers"
}
RECIPE.results = {
	["manhack"] = 1,



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