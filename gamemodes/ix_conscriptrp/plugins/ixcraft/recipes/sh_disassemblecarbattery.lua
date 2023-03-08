RECIPE.name = "Disassemble Car Battery"
RECIPE.description = "Take apart a car battery instead of throwing it into the ocean."
RECIPE.model = "models/illusion/eftcontainers/carbattery.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["carbattery"] = 1,
}

RECIPE.tools = {
	"drill",
	"pliers"
}
RECIPE.results = {
	["wirebundle"] = 4,
	["professionalelectronics"] = 3,
	["nutsbolts"] = 3,
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