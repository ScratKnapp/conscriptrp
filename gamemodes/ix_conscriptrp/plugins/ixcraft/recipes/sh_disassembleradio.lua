RECIPE.name = "Disassemble Radio"
RECIPE.description = "Take apart a handheld radio, because communication is sorely overrated."
RECIPE.model = "models/illusion/eftcontainers/gasanalyser.mdl"
RECIPE.category = "Disassembly"
RECIPE.requirements = {
	["radio"] = 1,
}

RECIPE.tools = {
	"screwdriver"
}
RECIPE.results = {
	["wirebundle"] = 2,
	["aabattery"] = 2,
	["consumerelectronics"] = 1,
	["nutsbolts"] = 1,
	["capacitors"] = 2,


}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)