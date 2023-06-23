sound.Add({	name		= "V92_Uni_QuickMove",
	channel		= CHAN_WEAPON,
	level		= 100,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= "jessev92/weapons/univ/throw_gren.wav",
})

sound.Add({	name		= "V92_Uni_Draw",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= "jessev92/weapons/univ/draw1.wav",
})

sound.Add({	name		= "V92_Uni_Holster",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= "jessev92/weapons/univ/holster1.wav",
})


SWEP.PrintName			= "Echo Detector"			
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.Category = "S.T.A.L.K.E.R. Detector Sweps"
SWEP.Author	= "Subleader and AirBlack"
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = "Right click for throw a bolt."	
SWEP.Base	= "base_sweps_detector"
SWEP.HoldType = "pistol"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = true
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/v_cw_fraggrenade.mdl"
SWEP.WorldModel = "models/kali/miscstuff/stalker/detector_echo.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.Spawnable	= true
SWEP.AdminSpawnable	= true

SWEP.UseDel = CurTime()

function SWEP:IdleTiming()
end

SWEP.Primary.Delay				= 0
SWEP.Primary.Recoil				= 0
SWEP.Primary.Damage				= 0
SWEP.Primary.NumShots			= 0
SWEP.Primary.Cone				= 0	
SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip		= -1
SWEP.Primary.Automatic   		= false
SWEP.Primary.Ammo         		= "none"
SWEP.Secondary.Delay			= 0
SWEP.Secondary.Recoil			= 0
SWEP.Secondary.Damage			= 0
SWEP.Secondary.NumShots			= 0
SWEP.Secondary.Cone		  		= 0
SWEP.Secondary.ClipSize			= -1
SWEP.Secondary.DefaultClip		= -1
SWEP.Secondary.Automatic   		= false
SWEP.Secondary.Ammo         	= "none"

SWEP.ViewModelBoneMods = {
	["l-ring-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-3.333, 10, -16.667) },
	["l-thumb-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, 18.888, -3.333) },
	["l-pinky-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-38.889, 21.111, -10) },
	["l-middle-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.186, 0), angle = Angle(14.444, 1.11, -18.889) },
	["l-index-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 0, 0) },
	["lwrist"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -87.778) },
	["r-index-low"] = { scale = Vector(1, 1, 1), pos = Vector(-0.186, 0, 0), angle = Angle(-1.111, -1.111, 16.666) },
	["r-thumb-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, -14.445, 16.666) },
	["r-middle-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(36.666, 0, 0) },
	["r-pinky-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(36.666, 0, 0) },
	["Base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["r-ring-low"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(34.444, 0, 0) },
	["Dummy01"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.VElements = {
	["echo"] = { type = "Model", model = "models/kali/miscstuff/stalker/detector_echo.mdl", bone = "lwrist", rel = "", pos = Vector(3.635, 1.557, -0.9), angle = Angle(-50.26, 15.194, 139.091), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {[1] = 1} },
	--["detector"] = { type = "Model", model = "models/kali/miscstuff/stalker/detector_bear.mdl", bone = "l-upperarm", rel = "", pos = Vector(8.831, 0.518, -2.5), angle = Angle(33.895, 68.96, 17.531), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
	["element_name"] = { type = "Model", model = "models/kali/miscstuff/stalker/bolt.mdl", bone = "Base", rel = "", pos = Vector(0, 0, 0), angle = Angle(12.857, -29.222, 180), size = Vector(0.755, 0.755, 0.755), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
}

SWEP.WElements = {
	["Bear"] = { type = "Model", model = "models/kali/miscstuff/stalker/detector_echo.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.675, 1.557, -2.597), angle = Angle(-106.364, -167.144, 12.857), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} }
}

function SWEP:PrimaryAttack()
	if (self.UseDel < CurTime()) then
		self.UseDel = CurTime() + 3
		self.Owner:DoAttackEvent( )	
		self.Weapon:SendWeaponAnim(ACT_VM_PULLPIN)
		self.Owner:ViewPunch( Angle( 10, -10, 0 ) )
		if (SERVER) then
			timer.Simple( 0.9, function()
				self:EmitSound( Sound("weapons/slam/throw.wav", 100, 100 ) )
				local bolt = ents.Create( "ent_stalker_bolt" )	
				bolt:SetPos(self.Owner:GetShootPos() + self.Owner:GetAimVector() * 10)
				bolt:SetAngles(self.Owner:EyeAngles())
				bolt:Spawn()
				bolt:SetOwner( self.Owner )
				bolt:Fire("kill", "", 12)
				bolt:GetPhysicsObject():ApplyForceCenter( self.Owner:GetVelocity() + self.Owner:GetAimVector() * 5000)
				bolt:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-500,500),math.random(-500,500),math.random(-500,500)))		
				bolt:GetPhysicsObject():SetMass(1)
			end)
		--	if GetConVarNumber("vnt_stalker_bolt_ammo") != 0 then	
		--		self:TakePrimaryAmmo(1)	
		--	end
		end
		timer.Simple( 0.75, function()	
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		end)
	end
end

function SWEP:SecondaryAttack()
	if (self.UseDel < CurTime()) then
		self.UseDel = CurTime() + 3
		self.Owner:DoAttackEvent( )	
		self.Weapon:SendWeaponAnim(ACT_VM_PULLPIN)
		self.Owner:ViewPunch( Angle( -2, 0, 0 ) )
		if (SERVER) then
			timer.Simple( 0.9, function()
				self:EmitSound( Sound("weapons/slam/throw.wav", 100, 100 ) )
				local bolt = ents.Create( "ent_stalker_bolt" )	
				bolt:SetPos(self.Owner:GetShootPos() + self.Owner:GetAimVector() * 10)
				bolt:SetAngles(self.Owner:EyeAngles())
				bolt:Spawn()
				bolt:SetOwner( self.Owner )
				bolt:Fire("kill", "", 12)
				bolt:GetPhysicsObject():ApplyForceCenter( self.Owner:GetVelocity() + self.Owner:GetAimVector() * 2500)
				bolt:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-500,500),math.random(-500,500),math.random(-500,500)))		
				bolt:GetPhysicsObject():SetMass(1)
			end)
		--	if GetConVarNumber("vnt_stalker_bolt_ammo") != 0 then
		--		self:TakePrimaryAmmo(1)
		--	end
		end
		timer.Simple( 0.75, function()	
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		end)
	end
end

function SWEP:Deploy()
	timer.Simple( 0.75, function()	
	end)
	return true
end

local anomalies = {}

--Common Artifacts--
anomalies["models/nasca/etherealsrp_artifacts/droplet.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/jellyfish.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/slime.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/sparkler.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/thorn.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/crystal.mdl"] = true
anomalies["models/artefacts/grib.mdl"] = true
anomalies["models/artefacts/sun.mdl"] = true -- Core
anomalies["models/artefacts/yoyo.mdl"] = true -- Colony
anomalies["models/srp/items/art_stoneflower.mdl"] = true -- Scorched
anomalies["models/srp/items/art_mammasbeads.mdl"] = true -- Strand
anomalies["models/tnb/stalker/artifacts/static.mdl"] = true -- Sheet
anomalies["models/tnb/stalker/artifacts/wrenched.mdl"] = true -- Spike




--Uncommon Artifacts--
anomalies["models/nasca/etherealsrp_artifacts/battery.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/crystal_thorn.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/fireball.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/flash.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/nightstar.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/slug.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/stoneblood.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/stoneflower.mdl"] = true
anomalies["models/nasca/etherealsrp_artifacts/meatchunk.mdl"] = true
anomalies["models/artefacts/ice.mdl"] = true
anomalies["models/tnb/stalker/artifacts/sponge.mdl"] = true
anomalies["models/ethprops/consumable/flask_water.mdl"] = true
anomalies["models/artefacts/plenka.mdl"] = true
anomalies["models/artefacts/moss.mdl"] = true
anomalies["models/artefacts/spike.mdl"] = true -- Nugget
anomalies["models/artefacts/chelust.mdl"] = true -- Pearls
anomalies["models/artefacts/emerald.mdl"] = true -- Kryptonite
anomalies["models/hunter/plates/plate.mdl"] = true -- Pacifier
anomalies["models/props/de_inferno/wall_lamp_ring.mdl"] = true -- Wheel
anomalies["models/artefacts/mica.mdl"] = true -- Crater
anomalies["models/predatorcz/stalker/artifacts/medusa.mdl"] = true -- Mushroom
anomalies["models/tnb/stalker/artifacts/slug.mdl"] = true -- Blue
anomalies["models/artefacts/ball.mdl"] = true -- Meteorite
anomalies["models/artefacts/bud.mdl"] = true -- Crystal Flower
anomalies["models/spitball_medium.mdl"] = true -- Moody

SWEP.LastBeep = 0
function SWEP:Think()
	if CLIENT then
		local anoms = {}
		for k,v in pairs(ents.GetAll()) do
			if v:GetClass() == "ix_item" then
				if anomalies[string.lower(v:GetModel())] then
					table.insert(anoms, v)
				end
			end
		end
		local dist = 181
		local ent = nil
		for k,v in pairs(anoms) do
			local pos = v:GetPos()
			local dek = pos - self.Owner:GetShootPos()
			local aimvec = self.Owner:GetAimVector()
			local sos = dek:GetNormalized()
			local dot = sos:Dot(aimvec)
			local clampdot = (1-math.Clamp(dot, 0, 0.5))
			if v:GetPos():Distance(self.Owner:GetPos())*clampdot < dist then
				dist = v:GetPos():Distance(self.Owner:GetPos())*clampdot
				ent = v
			end
		end
		if dist < 180 then
			if self.LastBeep + dist/180 - CurTime() <= 0 then
				self.LastBeep = CurTime()
				self.VElements["echo"].skin = 2
				timer.Simple(0.1, function()
					if IsValid(self) and IsValid(self.Weapon) then
						self.VElements["echo"].skin = 1
					end
				end)
				self.Owner:EmitSound(Sound("stalkerdetectors/echo.wav"), 100, 100)//math.Clamp(250-dist/2,50,250))
			end
		end
	end
end
