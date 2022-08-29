ITEM.name = "Echo Detector"
ITEM.description = "A low-tier artifact detector."
ITEM.longdesc = "This dated anomalous activity detector produces an alarm signal when anomalous particles enter a special chamber as you approach an anomaly. It can also register the presence of artifacts and measure the distance to the nearest one. The distance is indicated by the frequency of the sound the detector emits. To switch to artifact search mode, open the device's front cover. Due to its simple design, Echo can only be used to locate the most common artifacts."
ITEM.model = "models/kek1ch/dev_detector_1.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 5000
ITEM.flag = "1"
ITEM.category = "Electronics"
ITEM.class = "detector_echo"
ITEM.weaponCategory = "beltbackleft"
ITEM.canAttach = false
ITEM.keepWhenEquipped = true
ITEM.noAmmo = true
ITEM.weight = 1

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("durability") then
		self:SetData("durability", 10000)
	end
end