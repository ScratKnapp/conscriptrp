local PLUGIN = PLUGIN
PLUGIN.name = "EventController"
PLUGIN.author = "some faggot"
PLUGIN.desc = "Makes events occur randomly on your server"

PLUGIN.mutanteventdefs = PLUGIN.mutanteventdefs or {}
PLUGIN.chattereventdefs = PLUGIN.chattereventdefs or {}
PLUGIN.eventpoints = PLUGIN.eventpoints or {} -- EVENTPOINT STRUCTURE table.insert( PLUGIN.eventpoints, { position, name, difficulty } )
PLUGIN.artifindchatdefs = PLUGIN.artifindchatdefs or {}

ix.util.Include("sh_eventdefs.lua")

PLUGIN.spawnratebase = 400
PLUGIN.spawnrateplayer = 30
PLUGIN.spawnradius = 200
PLUGIN.populateAmount = 4

PLUGIN.pdachatter = true
PLUGIN.pdachatterchance = 50

PLUGIN.chattertimebase = 900
PLUGIN.chatterchance = 15
PLUGIN.previouschat = {}

PLUGIN.anomtimebase = 1200
PLUGIN.lastchosenarti = nil
PLUGIN.previousartifindchat = {}

PLUGIN.saferadius = 1000

local icon = Material("vgui/icons/news.png")

ix.chat.Register("eventpda", {
	CanSay = function(self, speaker, text)
		if IsValid(speaker) then
			if speaker:GetCharacter():HasFlags("N") or speaker:IsAdmin() then
				return true
			else
				return false
			end
		else
			return false
		end
	end,
	OnChatAdd = function(self, speaker, text)
		chat.AddText(Color(0,191,255), "[GPDA-SYSTEM] ", Color(0,191,255), icon, ": "..text)
	end,
	prefix = {"/eventpda"},
	CanHear = function(self, speaker, listener)
		local pda = listener:GetCharacter():GetData("pdaequipped", false)
		if pda then
			listener:EmitSound( "stalker/pda/pda_beep_1.ogg", 55, 100, 1, CHAN_AUTO ) 
			return true
		else
			return false
		end
	end,
})

ix.chat.Register("eventpdainternal", {
	CanSay = function(self, speaker, text)
		if speaker:GetCharacter() then
			local pda = speaker:GetCharacter():GetData("pdaequipped", false)
			if pda then
				speaker:EmitSound( "stalker/pda/pda_beep_1.ogg", 55, 100, 1, CHAN_AUTO ) 
				return true
			else 
				return false
			end
		end
		return false
	end,
	OnChatAdd = function(self, speaker, text, bAnonymous, data)
		chat.AddText(Color(0,191,255), Material(data[2]), "[GPDA-"..data[1].."]", Color(0,191,255), ": "..text)
	end,
	prefix = {},
	CanHear = function(self, speaker, listener)
		local pda = listener:GetCharacter():GetData("pdaequipped", false)
		if pda then
			return true
		else
			return false
		end
	end,
})

if SERVER then
	local spawntime = 1
	local chattertime = 1
	local anomtime = 1
	local populate = true
	
	
	local function isClear(position)
		
		local currentdefs = {}
		local currentents = ents.FindInSphere( position, PLUGIN.saferadius )

		for i,j in pairs (currentents) do
			if j:IsPlayer() then
				return false
			elseif (string.sub(j:GetClass(), 1, 10) == "npc_mutant") then
				return false
			end
		end
		return true
	end
	
	local function spawnEvent(eventpoint, spawn)
		if isClear(eventpoint[1]) then
			--spawnents
			if spawn.entities then
				for k = 1, #spawn.entities do
					for i = 1, spawn.entities[k][2] do
						local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
						local data = {}
						data.start = position
						data.endpos = position
						data.mins = Vector(-16, -16, 0)
						data.maxs = Vector(16, 16, 71)
						local trace = util.TraceHull(data)
							
						if trace.Entity:IsValid() then
							continue
						end

						local newNPC = ents.Create(spawn.entities[k][1])
						newNPC:SetPos(position)
						newNPC:Spawn()
					end
				end
			end
			--spawnitems
			if spawn.items then
				for k = 1, #spawn.items do
					local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
					local data = {}
					data.start = position
					data.endpos = position
					data.mins = Vector(-16, -16, 0)
					data.maxs = Vector(16, 16, 71)
					local trace = util.TraceHull(data)
					
					if trace.Entity:IsValid() then
						continue
					end

					ix.item.Spawn(spawn.items[k][1], position, nil, AngleRand(), spawn.items[k][2] or {})
				end
			end
			--spawn props
			if spawn.props then
				for k = 1, #spawn.props do
					for i = 1, spawn.props[k][2] do
						local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
						local data = {}
						data.start = position
						data.endpos = position
						data.mins = Vector(-16, -16, 0)
						data.maxs = Vector(16, 16, 71)
						local trace = util.TraceHull(data)
						
						if trace.Entity:IsValid() then
							continue
						end

						local prop = ents.Create( "prop_physics" )
						prop:SetModel( spawn.props[k][1] )
						prop:SetPos( position )
						prop:Spawn()
						timer.Simple(300, function() prop:Remove() end)
					end
				end
			end
			--spawn ragdolls
			if spawn.ragdolls then
				for k = 1, #spawn.ragdolls do
					for i = 1, spawn.ragdolls[k][2] do
						local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
						local data = {}
						data.start = position
						data.endpos = position
						data.mins = Vector(-16, -16, 0)
						data.maxs = Vector(16, 16, 71)
						local trace = util.TraceHull(data)
						
						if trace.Entity:IsValid() then
							continue
						end
						
						/*
						local ragdoll = ClientsideRagdoll( spawn.ragdolls[k][1] )
						ragdoll:SetPos( position )
						ragdoll:SetSkin(spawn.ragdolls[k][3])
						ragdoll:SetBodyGroups(spawn.ragdolls[k][4])
						ragdoll:SetNoDraw( false )
						ragdoll:DrawShadow( true )
						ragdoll:Fire( "FadeAndRemove", "", 300 )
						*/
						-- Serversided ragdolls, tough performance
						local ragdoll = ents.Create( "prop_ragdoll" )
						ragdoll:SetModel( spawn.ragdolls[k][1] )
						ragdoll:SetPos( position )
						ragdoll:Spawn()
						ragdoll:SetSkin(spawn.ragdolls[k][3])
						ragdoll:SetBodyGroups(spawn.ragdolls[k][4])
						ragdoll:SetCollisionGroup( COLLISION_GROUP_DEBRIS ) --minimal performance hit
						ragdoll:Fire( "FadeAndRemove", "", 300 )

					end
				end
			end
			--spawn loot
			if spawn.loot then
				for k = 1, #spawn.loot do
					for i = 1, spawn.loot[k][2] do
						local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
						local data = {}
						data.start = position
						data.endpos = position
						data.mins = Vector(-16, -16, 0)
						data.maxs = Vector(16, 16, 71)
						local trace = util.TraceHull(data)
						
						if trace.Entity:IsValid() then
							continue
						end

						if math.random(100) <= spawn.lootChance then
							ix.item.Spawn(spawn.loot[k][1], position, nil, AngleRand(), spawn.loot[k][3] or {})
						end
					end
				end
			end
		end
	end
	
	function PLUGIN:questSpawn()
		local eventpoint = table.Random(self.eventpoints)
		local spawn = table.Random(self.mutanteventdefs)
		local questID = math.random(1,10000)
		local mutCount = 0
		
		for k = 1, #spawn.entities do
			for i = 1, spawn.entities[k][2] do
				local position = eventpoint[1] + Vector( math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), math.Rand(-PLUGIN.spawnradius,PLUGIN.spawnradius), 32 )
				local data = {}
				data.start = position
				data.endpos = position
				data.mins = Vector(-16, -16, 0)
				data.maxs = Vector(16, 16, 71)
				local trace = util.TraceHull(data)
				
				if trace.Entity:IsValid() then
					continue
				end
				
				local newNPC = ents.Create(spawn.entities[k][1])
				newNPC:SetPos(position)
				newNPC:SetNWString("questID", questID)
				newNPC:Spawn()
				mutCount = mutCount + 1
			end
		end
		local returndata = {eventpoint[2], questID, mutCount}
		return returndata
	end

	function PLUGIN:setSpawnTime(time)
		spawntime = time
	end
	
	function PLUGIN:setChatterTime(time)
		chattertime = time
	end
	
	function PLUGIN:setAnomTime(time)
		anomtime = time
	end
	
	function PLUGIN:setPopulate(bool)
		populate = bool
	end

	function PLUGIN:LoadData()
		self.eventpoints = self:GetData() or {}
	end

	function PLUGIN:SaveData()
		self:SetData(self.eventpoints)
	end
		
	function PLUGIN:Think()
		
		if anomtime < CurTime() then
			anomtime = CurTime() + self.anomtimebase
			local itemtable = {}
			local artifindchat = table.Random(self.artifindchatdefs)
			local chosenarti
			
			for k,v in pairs(ents.GetAll()) do
				if v.ixItemID ~= nil then
					local item = ix.item.instances[v.ixItemID]
					if item.isArtefact then
						table.insert(itemtable,item)
					end
				end
			end
			
			if #itemtable > 0 then
				chosenarti = table.Random(itemtable)
				if #itemtable > 1 then
					while chosenarti == self.lastchosenarti do
						chosenarti = table.Random(itemtable)
					end
				end
			end
			
			if chosenarti then
				self.lastchosenarti = chosenarti
				
				if table.Count(self.artifindchatdefs) > 1 then
					while artifindchat == self.previousartifindchat do
						artifindchat = table.Random(self.artifindchatdefs)
					end
				end
				
				self.previousartifindchat = artifindchat
				
				for x,y in pairs(artifindchat) do
				
					local articount = 0
					
					for k,v in pairs(y) do
						articount = articount + 4
						timer.Simple(120 + articount, function()
							for _,ply in pairs(player.GetAll()) do
								ix.chat.Send(ply, "eventpdainternal", Format(v.text, chosenarti.name), true, ply, {v.name, v.image})
							end
						end)
					end
				end
			end
		end
		
		--[[
		if chattertime < CurTime() then
			chattertime = CurTime() + self.chattertimebase
			
			if math.Rand(1,100) <= self.chatterchance then
				local chatselect = table.Random(self.chattereventdefs)
				
				if table.Count(self.chattereventdefs) > 1 then
					while chatselect == self.previouschat do
						chatselect = table.Random(self.chattereventdefs)
					end
				end
				
				self.previouschat = chatselect
				
				for x,y in pairs(chatselect) do
					local count = 1
					for k,v in pairs(y) do 
						count = count + 1
						timer.Simple((4 * k), function()
							for _, ply in pairs( player.GetAll() ) do
								ix.chat.Send(ply, "eventpdainternal", v.text, true, ply, {v.name, v.image})
							end
						end)
					end
				end
			end
		end
		--]] --Removed Chatter, commented out unnecessary code bits
	
		if populate then
			for i = 1, self.populateAmount do
				local eventpoint = table.Random(self.eventpoints)
				local spawn = table.Random(self.mutanteventdefs)
				
				local entities = ents.GetAll()
				local nbcount = 0
				
				for k,v in pairs(entities) do
					if string.match(string.lower(v:GetClass()),"nb_") then
						nbcount = nbcount + 1
					end
				end
				
				if nbcount > 20 then break end
				
				if spawn then
					if (!eventpoint) then
						break
					end

					while table.Random(spawn.difficulty) != eventpoint[3] do
						spawn = table.Random(self.mutanteventdefs)
					end
					
					spawnEvent(eventpoint,spawn)
				end
			end
			
			populate = false
		end
		
		if spawntime < CurTime() then
			spawntime = CurTime() + self.spawnratebase
			
			local entities = ents.GetAll()
			local nbcount = 0
			
			for k,v in pairs(entities) do
				if string.match(string.lower(v:GetClass()),"nb_") then
					nbcount = nbcount + 1
				end 
			end
			
			if nbcount > 20 then return end

			local eventpoint = table.Random(self.eventpoints)
			local spawn = table.Random(self.mutanteventdefs)
			local spawn2
			local eventpoint2
			
			if table.Count(self.eventpoints) > 1 and table.Count(self.mutanteventdefs) > 1 then
				eventpoint2 = table.Random(self.eventpoints)
				spawn2 = table.Random(self.mutanteventdefs)
			end
			
			if spawn2 then
				while spawn.pdabroadcast == spawn2.pdabroadcast do
					spawn2 = table.Random(self.mutanteventdefs)
				end
			end
			
			if eventpoint2 then
				while eventpoint2 == eventpoint do
					eventpoint = table.Random(self.eventpoints)
				end
			end

			if (!eventpoint) then
				return
			end


			while table.Random(spawn.difficulty) != eventpoint[3] do
				spawn = table.Random(self.mutanteventdefs)
			end

			spawnEvent(eventpoint, spawn)
			spawnEvent(eventpoint2, spawn2)
			
			if self.pdachatter == true then
				if math.Rand(1,100) <= self.pdachatterchance then
					for k, ply in pairs( player.GetAll() ) do
						ix.chat.Send(ply, "eventpdainternal", Format(spawn.pdabroadcast, eventpoint[2]), true, ply, {"SYSTEM", "vgui/icons/news.png"})
					end
				end
				timer.Simple(2, function()
					if math.Rand(1,100) <= self.pdachatterchance then
						for k, ply in pairs( player.GetAll() ) do
							ix.chat.Send(ply, "eventpdainternal", Format(spawn2.pdabroadcast, eventpoint2[2]), true, ply, {"SYSTEM", "vgui/icons/news.png"})
						end
					end
				end)
			end
		end
	end	
else
	netstream.Hook("nut_DisplaySpawnPoints", function(data)
		for k, v in pairs(data) do
			local emitter = ParticleEmitter( v[1] )
			local smoke = emitter:Add( "sprites/glow04_noz", v[1] )
			smoke:SetVelocity( Vector( 0, 0, 1 ) )
			smoke:SetDieTime(10)
			smoke:SetStartAlpha(255)
			smoke:SetEndAlpha(255)
			smoke:SetStartSize(64)
			smoke:SetEndSize(64)
			smoke:SetColor(255,186,50)
			smoke:SetAirResistance(300)
		end
	end)

end

ix.command.Add("eventadd", {
	superAdminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number
	},
	OnRun = function(self, client, name, difficulty)
		local trace = client:GetEyeTraceNoCursor()
		local hitpos = trace.HitPos + trace.HitNormal*5
		local name = name or "UNNAMED AREA"
		local difficulty = difficulty or 1

		if isnumber(difficulty) then
			table.insert( PLUGIN.eventpoints, { hitpos, name, difficulty } )
			client:Notify( "Event area named '"..name.."' with difficulty "..difficulty.." succesfully added"  )
		else
			client:ChatPrint("Difficulty must be a number.")
		end
		PLUGIN:SaveData()
	end
})

ix.command.Add("eventremove", {
	superAdminOnly = true,
	OnRun = function(self, client, arguments)
		local trace = client:GetEyeTraceNoCursor()
		local hitpos = trace.HitPos + trace.HitNormal*5
		local range = arguments[1] or 128
		local mt = 0
		for k, v in pairs( PLUGIN.eventpoints ) do
			local distance = v[1]:Distance( hitpos )
			if distance <= tonumber(range) then
				PLUGIN.eventpoints[k] = nil
				mt = mt + 1
			end
		end
		client:Notify( mt .. " event locations has been removed.")
		PLUGIN:SaveData()
	end
})

ix.command.Add("eventdisplay", {
	adminOnly = true,
	OnRun = function(self, client, arguments)
		if SERVER then
			netstream.Start(client, "nut_DisplaySpawnPoints", PLUGIN.eventpoints)
			client:Notify( "Displayed All Points for 10 secs." )
		end
	end
})

ix.command.Add("eventforce", {
	adminOnly = true,
	OnRun = function(client, arguments)
		PLUGIN:setSpawnTime(1)
	end
})

ix.command.Add("chatterforce", {
	adminOnly = true,
	OnRun = function(client, arguments)
		PLUGIN:setChatterTime(1)
	end
})

ix.command.Add("anomchatforce", {
	adminOnly = true,
	OnRun = function(client, arguments)
		PLUGIN:setAnomTime(1)
	end
})

ix.command.Add("announce", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.string,
		bit.bor(ix.type.string, ix.type.optional),
	},
	OnRun = function(self, client, name, text, image)
		if not image then
			image = "vgui/icons/news.png"
		end
		
		for _, ply in pairs( player.GetAll() ) do
			ix.chat.Send(ply, "eventpdainternal", text, true, ply, {name, image})
		end
	end
})

ix.command.Add("eventpopulate", {
	adminOnly = true,
	--syntax = "<number amount>",
	OnRun = function(self, client, arguments)
		PLUGIN:setPopulate(true)
		--local amount = tonumber(arguments[1]) or 5
		--if isnumber(amount) then
		--	PLUGIN.populateAmount = arguments[1]
		--else
		--	client:ChatPrint("Amount must be a number.")
		--end
	end
})