PLUGIN.name = "NPC Drops"
PLUGIN.author = "some faggot"
PLUGIN.desc = "Makes NPCs drop items after dying"

function PLUGIN:OnNPCKilled(entity, attacker, inflictor)
	local class = entity:GetClass()
--	print(class)
	
	if !attacker:IsPlayer() then
		return
	end

	if class == "npc_mutant_classiczombie" then
		if math.random(101) < 15 then -- 12 %
			ix.item.Spawn("zombiehand", entity:GetPos() + Vector(0, 0, 8))
		end
	end
	
	if class == "npc_mutant_boar" then
		if math.random(101) < 10 then -- 10 %
			ix.item.Spawn("boarhoof", entity:GetPos() + Vector(0, 0, 8))
		end
	end
	
	if class == "npc_mutant_dog" then
		if math.random(101) < 20 then -- 15 %
			ix.item.Spawn("dogtail", entity:GetPos() + Vector(0, 0, 8))
		end	
	end
	
	if class == "npc_mutant_flesh" then
		if math.random(101) < 10 then -- 8 %
			ix.item.Spawn("flesheye", entity:GetPos() + Vector(0, 0, 8))
		end
	end
	
	if class == "npc_mutant_pseudodog" then
		if math.random(101) < 10 then -- 8 %
			ix.item.Spawn("pseudotail", entity:GetPos() + Vector(0, 0, 8))
		end
	end
	
	if class == "npc_mutant_rodent" then
		if math.random(101) < 30 then -- 20 %
			ix.item.Spawn("tushkanohead", entity:GetPos() + Vector(0, 0, 8))
		end
	end
	
	if class == "npc_mutant_snork" then
		if math.random(101) < 12 then -- 12 %
			ix.item.Spawn("snorkfoot", entity:GetPos() + Vector(0, 0, 8))
		end
	end
end

local PLUGIN = PLUGIN
