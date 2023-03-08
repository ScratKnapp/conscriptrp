RECIPE.name = "Disassemble Power Supply Unit"
RECIPE.description = "Take apart a computer's Power Supply. It can be extremely dangerous, but luckily you've got the skills and tools to do so safely."
RECIPE.model = "models/illusion/eftcontainers/powersupplyunit.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["psu"] = 1,
}

RECIPE.tools = {
	"screwdriver",
	"pliers"
}
RECIPE.results = {
	["wirebundle"] = 3,
	["professionalelectronics"] = 1,
	["consumerelectronics"] = 2,
	["nutsbolts"] = 1,
	["capacitors"] = 3,


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