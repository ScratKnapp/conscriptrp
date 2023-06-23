local att = {}
att.name = "doi_atow_barcarry"
att.displayName = "Carry Handle"
att.displayNameShort = "Carry"

att.statModifiers = {DrawSpeedMult = .1,}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/carryhandle")
	att.description = {[1] = {t = "Heavy duty carrying handle.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.CarryBGs.main, self.CarryBGs.on)
end

function att:detachFunc()
	self:setBodygroup(self.CarryBGs.main, self.CarryBGs.off)
end

CustomizableWeaponry:registerAttachment(att)
