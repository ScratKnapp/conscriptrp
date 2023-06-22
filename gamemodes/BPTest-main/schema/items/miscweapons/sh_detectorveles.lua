ITEM.name = "Veles Detector"
ITEM.description = "A high-tier artifact detector"
ITEM.longdesc = "A next generation scientific detection scanner. Thanks to three modernized detection chambers, the position of artifacts is shown on a special display screen. When closed, the device registers only radiation and anomalies. To switch to artifact search mode, open the front LED display. When in search mode, the detector is capable of locating all artifacts known to science."
ITEM.model = "models/kek1ch/dev_detector_3.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 65000
ITEM.flag = "4"
ITEM.category = "Electronics"
ITEM.class = "detector_veles"
ITEM.weaponCategory = "beltbackleft"
ITEM.canAttach = false
ITEM.keepWhenEquipped = true
ITEM.noAmmo = true
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 3

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("durability") then
		self:SetData("durability", 10000)
	end
end