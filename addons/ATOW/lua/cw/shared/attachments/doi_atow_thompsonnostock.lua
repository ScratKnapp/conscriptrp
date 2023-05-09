local att = {}
att.name = "doi_atow_thompsonnostock"
att.displayName = "No Stock"
att.displayNameShort = "Remove"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {RecoilMult = 0.3,
DrawSpeedMult = 0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/bhpstock")
	att.description = {[1] = {t = "Sacrifices control for reduced weight.", c = CustomizableWeaponry.textColors.VPOSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.on)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.off)
end

CustomizableWeaponry:registerAttachment(att)