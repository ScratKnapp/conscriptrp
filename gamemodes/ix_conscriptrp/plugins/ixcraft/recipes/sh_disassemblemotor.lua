RECIPE.name = "Disassemble Electrical Motor"
RECIPE.description = "Take apart an electrical motor to salvage the juicy components within."
RECIPE.model = "models/illusion/eftcontainers/engine.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["electricalmotor"] = 1,
}

RECIPE.tools = {
	"screwdriver",
	"pliers"
}
RECIPE.results = {
	["wirebundle"] = 2,
	["professionalelectronics"] = 1,
	["consumerelectronics"] = 2,
	["nutsbolts"] = 2,
	["capacitors"] = 2,


}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)