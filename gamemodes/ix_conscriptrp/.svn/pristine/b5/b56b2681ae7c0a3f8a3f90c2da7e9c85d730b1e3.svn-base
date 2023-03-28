
-- Here is where all of your shared hooks should go.

-- Disable entity driving.
function Schema:CanDrive(client, entity)
	return false
end

function Schema:CanPlayerUseBusiness(client, uniqueID)
	if !client:GetCharacter():HasFlags("1") and !client:GetCharacter():HasFlags("6") and !client:GetCharacter():HasFlags("5") and !client:GetCharacter():HasFlags("7") then
    	return false
    end
end

function Schema:PlayerNoClip(client)
	if client:IsAdmin() or client:GetCharacter():HasFlags("N") then
		return true
	else
		return false
	end
end

function Schema:ShouldShowPlayerOnScoreboard(client)
	if client:GetCharacter():GetFaction() == FACTION_ADMINS then
		return false
	end
end

function Schema:CanTransferItem(itemObject, curInv, inventory)
	if (SERVER) then
		local client = itemObject.GetOwner and itemObject:GetOwner() or nil

		if (IsValid(client) and curInv.GetReceivers) then
			local bAuthorized = false

			for _, v in ipairs(curInv:GetReceivers()) do
				if (client == v) then
					bAuthorized = true
					break
				end
			end

			if (!bAuthorized) then
				return false
			end
		end
	end

	-- we can transfer anything that isn't a bag
	if (!itemObject or !itemObject.isBag) then
		return
	end

	-- don't allow bags to be put inside bags
	if (inventory.id != 0 and curInv.id != inventory.id) then
		if (inventory.vars and inventory.vars.isBag and not itemObject.isBaggable) then
			local owner = itemObject:GetOwner()

			if (IsValid(owner)) then
				owner:NotifyLocalized("nestedBags")
			end

			return false
		end
	elseif (inventory.id != 0 and curInv.id == inventory.id) then
		-- we are simply moving items around if we're transferring to the same inventory
		return
	end

	inventory = ix.item.inventories[itemObject:GetData("id")]

	-- don't allow transferring items that are in use
	if (inventory) then
		for _, v in pairs(inventory:GetItems()) do
			if (v:GetData("equip") == true) then
				local owner = itemObject:GetOwner()

				if (owner and IsValid(owner)) then
					owner:NotifyLocalized("equippedBag")
				end

				return false
			end
		end
	end
	
	return true
end


local PLAYER_HOLDTYPE_TRANSLATOR = PLAYER_HOLDTYPE_TRANSLATOR
PLAYER_HOLDTYPE_TRANSLATOR = {}
PLAYER_HOLDTYPE_TRANSLATOR[""] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["fist"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["pistol"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["grenade"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["melee"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["slam"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["melee2"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["passive"] = "passive"
PLAYER_HOLDTYPE_TRANSLATOR["knife"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["duel"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["bugbait"] = "normal"
PLAYER_HOLDTYPE_TRANSLATOR["ar2"] = "passive"
PLAYER_HOLDTYPE_TRANSLATOR["shotgun"] = "passive"
PLAYER_HOLDTYPE_TRANSLATOR["smg"] = "passive"

function Schema:TranslateActivity(client, act)
	local clientInfo = client:GetTable()
	local modelClass = clientInfo.ixAnimModelClass or "player"
	local bRaised = client:IsWepRaised()

	if (modelClass == "player") then
		local weapon = client:GetActiveWeapon()
		local bAlwaysRaised = ix.config.Get("weaponAlwaysRaised")
		weapon = IsValid(weapon) and weapon or nil

		if (!bAlwaysRaised and weapon and !bRaised and client:OnGround()) then
			local model = string.lower(client:GetModel())

			if (string.find(model, "zombie")) then
				local tree = ix.anim.zombie

				if (string.find(model, "fast")) then
					tree = ix.anim.fastZombie
				end

				if (tree[act]) then
					return tree[act]
				end
			end

			local holdType = weapon and (weapon.HoldType or weapon:GetHoldType()) or "normal"

			if (!bAlwaysRaised and weapon and !bRaised and client:OnGround()) then
				holdType = PLAYER_HOLDTYPE_TRANSLATOR[holdType] or "passive"
			end

			local tree = ix.anim.player[holdType]

			if (tree and tree[act]) then
				if (isstring(tree[act])) then
					clientInfo.CalcSeqOverride = client:LookupSequence(tree[act])

					return
				else
					return tree[act]
				end
			end
		end

		return
	end

	if (clientInfo.ixAnimTable) then
		local glide = clientInfo.ixAnimGlide

		if (client:InVehicle()) then
			act = clientInfo.ixAnimTable[1]

			local fixVector = clientInfo.ixAnimTable[2]

			if (isvector(fixVector)) then
				client:SetLocalPos(Vector(16.5438, -0.1642, -20.5493))
			end

			if (isstring(act)) then
				clientInfo.CalcSeqOverride = client:LookupSequence(act)
			else
				return act
			end
		elseif (client:OnGround()) then
			if (clientInfo.ixAnimTable[act]) then
				local act2 = clientInfo.ixAnimTable[act][bRaised and 2 or 1]

				if (isstring(act2)) then
					clientInfo.CalcSeqOverride = client:LookupSequence(act2)
				else
					return act2
				end
			end
		elseif (glide) then
			if (isstring(glide)) then
				clientInfo.CalcSeqOverride = client:LookupSequence(glide)
			else
				return clientInfo.ixAnimGlide
			end
		end
	end
end

if SERVER then
	local playerMeta = FindMetaTable("Player")

	function playerMeta:requestQuery(title, subTitle, callback)
		local time = math.floor(os.time())

		self.nutQueReqs = self.nutQueReqs or {}
		self.nutQueReqs[time] = callback

		netstream.Start(self, "qurReq", time, title, subTitle)
	end
end


ix.command.Add("CharFallOver", {
	description = "disabled",
	arguments = bit.bor(ix.type.number, ix.type.optional),
	OnRun = function(self, client, time)
 		return
	end
})

do
	hook.Add("InitializedConfig", "ixMoneyCommands", function()
		local MONEY_NAME = string.gsub(ix.util.ExpandCamelCase(ix.currency.plural), "%s", "")

		ix.command.Add("Give" .. MONEY_NAME, {
			alias = {"GiveMoney"},
			description = "@cmdGiveMoney",
			arguments = ix.type.number,
			OnRun = function(self, client, amount)
				amount = math.floor(amount)

				if (amount <= 0) then
					return L("invalidArg", client, 1)
				end

				local data = {}
					data.start = client:GetShootPos()
					data.endpos = data.start + client:GetAimVector() * 96
					data.filter = client
				local target = util.TraceLine(data).Entity

				if (IsValid(target) and target:IsPlayer() and target:GetCharacter()) then
					if (!client:GetCharacter():HasMoney(amount)) then
						return
					end

					target:GetCharacter():GiveMoney(amount)
					client:GetCharacter():TakeMoney(amount)
					hook.Run("GaveMoney",client,target,amount)
					target:NotifyLocalized("moneyTaken", ix.currency.Get(amount))
					client:NotifyLocalized("moneyGiven", ix.currency.Get(amount))
				end
			end
		})

		ix.command.Add("CharSet" .. MONEY_NAME, {
			alias = {"CharSetMoney"},
			description = "@cmdCharSetMoney",
			superAdminOnly = true,
			arguments = {
				ix.type.character,
				ix.type.number
			},
			OnRun = function(self, client, target, amount)
				amount = math.Round(amount)

				if (amount <= 0) then
					return "@invalidArg", 2
				end
				hook.Run("CharSetMoney",client,target,amount)
				target:SetMoney(amount)
				client:NotifyLocalized("setMoney", target:GetName(), ix.currency.Get(amount))
			end
		})

		ix.command.Add("Drop" .. MONEY_NAME, {
			arguments = {
				ix.type.number
			},
			alias = {"DropMoney"},
			OnRun = function(self, client, amount)
				local amount = tonumber(amount)

				if (!amount or !isnumber(amount) or amount < 1) then
					return "@invalidArg", 1
				end

				if (!client:GetCharacter():HasMoney(amount)) then
					return "@insufficientMoney"
				end

				amount = math.Clamp(math.Round(amount),1,500000000)
				hook.Run("DroppedMoney",client, amount)
				client:GetCharacter():TakeMoney(amount)
				ix.item.Spawn("stacktokens", client:GetItemDropPos(), nil, AngleRand(), {["quantity"] = amount})
			end
		})
	end)
end

function Schema:PurchaseItems(client,x,y)
	while y > 0 do
		local item = ix.item.list[x]
		local k, v, baginv = client:GetChar():GetInv():FindEmptySlot(item.width,item.height)
		if baginv then
			client:GetChar():GiveMoney(item.price)
		else
			local succ = client:GetChar():GetInv():Add(x)
			if !succ then
				client:GetChar():GetInv():Add(item)
			end
		end
		hook.Run("PurchasedItems", client, x)
		y = y - 1
	end
end
