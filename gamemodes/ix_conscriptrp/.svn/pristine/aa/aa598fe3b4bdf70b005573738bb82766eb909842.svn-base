RECIPE.name = "Disassemble Tank Battery"
RECIPE.description = "Take apart a tank battery for the treasures within."
RECIPE.model = "models/illusion/eftcontainers/militarybattery.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["tankbattery"] = 1,
}

RECIPE.tools = {
	"drill",
	"pliers"
}
RECIPE.results = {
	["wirebundle"] = 5,
	["professionalelectronics"] = 2,
	["militaryelectronics"] = 2,
	["nutsbolts"] = 3,
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