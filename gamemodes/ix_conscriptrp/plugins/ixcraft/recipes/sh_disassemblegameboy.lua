RECIPE.name = "Disassemble Handheld Game System"
RECIPE.description = "Take apart a game console for common consumer electronic components. Hopefully nobody had a saved game they needed on there."
RECIPE.model = "models/illusion/eftcontainers/tetriz.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["gameboy"] = 1,
}

RECIPE.tools = {
	"screwdriver"
}
RECIPE.results = {
	["wirebundle"] = 1,
	["aabattery"] = 2,
	["consumerelectronics"] = 1,
	["nutsbolts"] = 1,
	["capacitors"] = 1,


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