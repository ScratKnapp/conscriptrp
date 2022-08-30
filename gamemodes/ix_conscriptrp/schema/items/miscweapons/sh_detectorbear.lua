ITEM.name = "Bear Detector"
ITEM.description = "A mid-tier artifact detector."
ITEM.longdesc = "This last generation anomalous activity detector can be used to locate anomalous formations and has a color diode panel, which not only indicates the direction of artifacts, but also measures the distance to them. To switch to artifact search mode, open the device's front cover. Unfortunately, the device is programmed with a somewhat outdated list of detectable artifacts."
ITEM.model = "models/kek1ch/dev_detector_2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Electronics"
ITEM.price = 25000
ITEM.flag = "1"
ITEM.class = "detector_bear"
ITEM.weaponCategory = "beltbackleft"
ITEM.canAttach = false
ITEM.keepWhenEquipped = true
ITEM.noAmmo = true
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 2

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("durability") then
		self:SetData("durability", 10000)
	end
end