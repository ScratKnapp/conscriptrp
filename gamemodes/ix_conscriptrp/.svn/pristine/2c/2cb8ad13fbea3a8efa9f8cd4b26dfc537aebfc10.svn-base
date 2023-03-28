local PLUGIN = PLUGIN
PLUGIN.name = "Xen Teleport"
PLUGIN.author = "Parashock"
PLUGIN.desc = "Teleport players with Xen portal sounds and visuals."


ix.command.Add("TeleportPerson", {
    description = "Teleport a person with FX.",
    adminOnly = true,
    arguments = {ix.type.player},
    OnRun = function(self, client, target)
        local entPortal = ents.Create("obj_portal2")
        local pos_p = target:GetPos() + Vector(1, 1, 40)
        entPortal:SetPos(pos_p)
        entPortal:SetEntityOwner(target)
        entPortal:Spawn()
        entPortal:Activate()
        sound.Play("weapons/displacer/displacer_self.wav", target:GetPos(), 75, 100, 0.8)
        local trace = client:GetEyeTrace()
        trace = trace.HitPos + trace.HitNormal * 1.25
        target:ScreenFade(SCREENFADE.IN, clr, 0.5, 0.5)
        target:SetPos(trace)
        entPortal:HitObject()
        local entPortal2 = ents.Create("obj_portal2")
        pos_p = target:GetPos() + Vector(1, 1, 40)
        entPortal2:SetPos(pos_p)
        entPortal2:SetEntityOwner(target)
        entPortal2:Spawn()
        entPortal2:Activate()
        sound.Play("weapons/displacer/displacer_self.wav", target:GetPos(), 75, 100, 0.8)
        entPortal2:HitObject()
    end
}) 

ix.command.Add("TeleportPersonRandom", {
    description = "Teleport a person with FX to a random map location.",
    adminOnly = true,
    arguments = {ix.type.player},
    OnRun = function(self, client, target)
        local pos, _ = util.GetRandomWorldPos()

        if not pos then
            target:slvPlaySound("Error", nil, true)

            return
        end

        local entPortal = ents.Create("obj_portal2")
        local pos_p = target:GetPos() + Vector(1, 1, 40)
        entPortal:SetPos(pos_p)
        entPortal:SetEntityOwner(target)
        entPortal:Spawn()
        entPortal:Activate()
        sound.Play("weapons/displacer/displacer_self.wav", target:GetPos(), 75, 100, 0.8)
        target:ScreenFade(SCREENFADE.IN, clr, 0.5, 0.5)
        target:SetPos(pos)
        entPortal:HitObject()
        local entPortal2 = ents.Create("obj_portal2")
        pos_p = target:GetPos() + Vector(1, 1, 40)
        entPortal2:SetPos(pos_p)
        entPortal2:SetEntityOwner(target)
        entPortal2:Spawn()
        entPortal2:Activate()
        sound.Play("weapons/displacer/displacer_self.wav", target:GetPos(), 75, 100, 0.8)
        entPortal2:HitObject()
    end
})