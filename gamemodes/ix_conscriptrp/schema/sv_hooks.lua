
-- Here is where all of your serverside hooks should go.


function Schema:LoadData()
	self:LoadCombineLocks()
	self:LoadCWULocks()
	self:LoadHackedLocks()
	self:LoadForceFields()
	self:LoadAdminForceFields()
end

function Schema:SaveData()
	self:SaveCombineLocks()
	self:SaveCWULocks()
	self:SaveHackedLocks()
	self:SaveForceFields()
	self:SaveAdminForceFields()
end




function Schema:PlayerMessageSend(speaker, chatType, text, anonymous, receivers, rawText)
	if (chatType == "ic" or chatType == "w" or chatType == "y") then
		local class = self.voices.GetClass(speaker)

		for k, v in ipairs(class) do
			local info = self.voices.Get(v, rawText)

			if (info) then
				local volume = 80

				if (chatType == "w") then
					volume = 60
				elseif (chatType == "y") then
					volume = 150
				end

				if (info.sound) then
					if (info.global) then
						netstream.Start(nil, "PlaySound", info.sound)
					else
						local sounds = {info.sound}

						if (speaker:IsCombine()) then
							speaker.bTypingBeep = nil
							sounds[#sounds + 1] = "NPC_MetroPolice.Radio.Off"
						end

						ix.util.EmitQueuedSounds(speaker, sounds, nil, nil, volume)
					end
				end

				if (speaker:IsCombine()) then
					return string.format("<:: %s ::>", info.text)
				else
					return info.text
				end
			end
		end

		if (speaker:IsCombine()) then
			return string.format("<:: %s ::>", text)
		end
	end
end

function Schema:PlayerSpray(client)
	return true
end

function Schema:GetPlayerPainSound(client)
	return table.Random(painSounds)
end

function Schema:PlayerFootstep(client, position, foot, soundName, volume)
	local factionTable = ix.faction.Get(client:Team())

	if (factionTable.runSounds and client:IsRunning()) then
		client:EmitSound(factionTable.runSounds[foot])
		return true
	end

	client:EmitSound(soundName)
	return true
end

function Schema:PlayerSpawnEffect(client, weapon, info)
	return client:IsAdmin() or client:GetCharacter():HasFlags("N")
end

function Schema:Initialize()
	game.ConsoleCommand("net_maxfilesize 64\n");
	game.ConsoleCommand("sv_kickerrornum 0\n");

	game.ConsoleCommand("sv_allowupload 0\n");
	game.ConsoleCommand("sv_allowdownload 0\n");
	game.ConsoleCommand("sv_allowcslua 0\n");
end

netstream.Hook("qurReq", function(client, time, bResponse)
	if (client.nutQueReqs and client.nutQueReqs[time]) then
		client.nutQueReqs[time](bResponse)
		client.nutQueReqs[time] = nil
	end
end)