local att = {}
att.name = "doi_atow_greasedbolt"
att.displayName = "Machined Bolt"
att.displayNameShort = "Machined"
att.isBG = true

att.statModifiers = {FireDelayMult = -.19,
ReloadSpeedMult = .1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/greasedbolt")
	att.description = {[1] = {t = "Smooths bolt cycling, increasing RPM.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.29
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end //*/
	
	self.RoundBeltBoneNames = {
		"Clip_Round_1",
		"Clip_Round_2",
		"Clip_Round_3",
		"Clip_Round_4",
		"Clip_Round_5",
		"Clip_2_Round_1",
		"Clip_2_Round_2",
		"Clip_2_Round_3",
		"Clip_2_Round_4",
		"Clip_2_Round_5",
	}
end

function att:detachFunc()
function self:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end //*/
	
	self.RoundBeltBoneNames = {
		"Bullet_1",
		"Bullet_2",
	}
end

CustomizableWeaponry:registerAttachment(att)