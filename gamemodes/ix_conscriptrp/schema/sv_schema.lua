
-- Here is where all of your serverside functions should go.

-- Example server function that will slap the given player.
function Schema:SlapPlayer(client)
	if (IsValid(client) and client:IsPlayer()) then
		client:SetVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(0, 20)))
		client:TakeDamage(math.random(5, 10))
	end
end


function Schema:SaveCombineLocks()
	local data = {}

	for _, v in ipairs(ents.FindByClass("ix_combinelock")) do
		if (IsValid(v.door)) then
			data[#data + 1] = {
				v.door:MapCreationID(),
				v.door:WorldToLocal(v:GetPos()),
				v.door:WorldToLocalAngles(v:GetAngles()),
				v:GetLocked()
			}
		end
	end

	ix.data.Set("combineLocks", data)
end




function Schema:LoadCombineLocks()
	for _, v in ipairs(ix.data.Get("combineLocks") or {}) do
		local door = ents.GetMapCreatedEntity(v[1])

		if (IsValid(door) and door:IsDoor()) then
			local lock = ents.Create("ix_combinelock")

			lock:SetPos(door:GetPos())
			lock:Spawn()
			lock:SetDoor(door, door:LocalToWorld(v[2]), door:LocalToWorldAngles(v[3]))
			lock:SetLocked(v[4])
		end
	end
end




function Schema:SaveCWULocks()
	local data = {}

	for _, v in ipairs(ents.FindByClass("ix_cwulock")) do
		if (IsValid(v.door)) then
			data[#data + 1] = {
				v.door:MapCreationID(),
				v.door:WorldToLocal(v:GetPos()),
				v.door:WorldToLocalAngles(v:GetAngles()),
				v:GetLocked()
			}
		end
	end

	ix.data.Set("cwuLocks", data)
end


function Schema:LoadCWULocks()
	for _, v in ipairs(ix.data.Get("cwuLocks") or {}) do
		local door = ents.GetMapCreatedEntity(v[1])

		if (IsValid(door) and door:IsDoor()) then
			local lock = ents.Create("ix_cwulock")

			lock:SetPos(door:GetPos())
			lock:Spawn()
			lock:SetDoor(door, door:LocalToWorld(v[2]), door:LocalToWorldAngles(v[3]))
			lock:SetLocked(v[4])
		end
	end
end


function Schema:SaveHackedLocks()
	local data = {}

	for _, v in ipairs(ents.FindByClass("ix_hackedlock")) do
		if (IsValid(v.door)) then
			data[#data + 1] = {
				v.door:MapCreationID(),
				v.door:WorldToLocal(v:GetPos()),
				v.door:WorldToLocalAngles(v:GetAngles()),
				v:GetLocked()
			}
		end
	end

	ix.data.Set("hackedLocks", data)
end


function Schema:LoadHackedLocks()
	for _, v in ipairs(ix.data.Get("hackedLocks") or {}) do
		local door = ents.GetMapCreatedEntity(v[1])

		if (IsValid(door) and door:IsDoor()) then
			local lock = ents.Create("ix_hackedlock")

			lock:SetPos(door:GetPos())
			lock:Spawn()
			lock:SetDoor(door, door:LocalToWorld(v[2]), door:LocalToWorldAngles(v[3]))
			lock:SetLocked(v[4])
		end
	end
end


function Schema:SaveForceFields()
	local data = {}

	for _, v in ipairs(ents.FindByClass("ix_forcefield")) do
		data[#data + 1] = {v:GetPos(), v:GetAngles(), v:GetMode()}
	end

	ix.data.Set("forceFields", data)
end


function Schema:LoadForceFields()
	for _, v in ipairs(ix.data.Get("forceFields") or {}) do
		local field = ents.Create("ix_forcefield")

		field:SetPos(v[1])
		field:SetAngles(v[2])
		field:Spawn()
		field:SetMode(v[3])
	end
end


function Schema:SaveAdminForceFields()
	local data = {}

	for _, v in ipairs(ents.FindByClass("ix_adminforcefield")) do
		data[#data + 1] = {v:GetPos(), v:GetAngles(), v:GetMode()}
	end

	ix.data.Set("adminForceFields", data)
end


function Schema:LoadAdminForceFields()
	for _, v in ipairs(ix.data.Get("adminforceFields") or {}) do
		local field = ents.Create("ix_adminforcefield")

		field:SetPos(v[1])
		field:SetAngles(v[2])
		field:Spawn()
		field:SetMode(v[3])
	end
end