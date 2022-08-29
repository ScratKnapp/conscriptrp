TOOL.Category = "S.T.A.L.K.E.R. Anomalies"
TOOL.Name = "#Anomaly Track Editor"


TOOL.Information = {
	{ name = "left", stage = 0 },
	{ name = "left_1", stage = 1, op = 2 },
	{ name = "right", stage = 0 },
	{ name = "right_1", stage = 1, op = 1 },
	{ name = "right_2", stage = 2, op = 1 },
	{ name = "reload" }
}

if CLIENT then
	language.Add( "Tool.anomaly_trackeditor.name", "Anomaly Track Editor" )
	language.Add( "Tool.anomaly_trackeditor.desc", "Edit tracks of the moving anomalies" )
	language.Add( "Tool.anomaly_trackeditor.left", "Left-click: Spawn track point." )
	language.Add( "Tool.anomaly_trackeditor.right", "Right-click: Delete track point." )
	language.Add( "Tool.anomaly_trackeditor.reload", "R: Select/Clear anomaly entity." )

	--[[CreateClientConVar("anomaly_trackX", "0", true, false)
	CreateClientConVar("anomaly_trackY", "0", true, false)
	CreateClientConVar("anomaly_trackZ", "0", true, false)]]
	CreateClientConVar("AnomalyTrack", "None", true, false)

	local settings
	function TOOL:SendToSV( table )
		--[[settings = {
			["X"] = GetConVar("anomaly_trackX"):GetInt(),
			["Y"] = GetConVar("anomaly_trackY"):GetInt(),
			["Z"] = GetConVar("anomaly_trackZ"):GetInt(),
		}]]
		net.Start("AnomalyTrackEditor")
			net.WriteEntity(self:GetOwner())
			net.WriteTable( table )
		net.SendToServer()
	end

	if not file.Exists("anomaly_tracks", "DATA") then
		file.CreateDir("anomaly_tracks")
	end
else
	util.AddNetworkString("AnomalyTrackEditor")

	function TOOL:SendToCL(en, Track)
		net.Start("AnomalyTrackEditor")
			net.WriteEntity(en)
			net.WriteTable(Track)
		net.Send(self:GetOwner())
	end
end

local Ent = nil
local NewTrack = {}
function TOOL:Reload(tr)
	if string.find(tr.Entity:GetClass():lower(), "kometa") then
		Ent = tr.Entity
		NewTrack = Ent.path or {}
		--print("SELECTED", tr.Entity)
		--PrintTable(NewTrack)
		if SERVER then self:SendToCL(Ent, NewTrack) end
	else
		Ent = nil
		NewTrack = {}
	end
	
	return true
end

function TOOL:LeftClick(tr)
	if IsValid(Ent) then
		--[[if CLIENT then
			--table.insert( NewTrack, tr.HitPos )
			self:SendToSV()
		end]]
		if SERVER then
			table.insert( NewTrack, tr.HitPos )
			Ent.path = NewTrack
			--PrintTable(NewTrack)
			self:SendToCL(Ent, NewTrack)
			self:GetOwner():ChatPrint("Point added!")
		end
		return true
	end
end

function TOOL:RightClick(tr)
	if IsValid(Ent) then
		--[[if CLIENT then
			for k,v in pairs(NewTrack) do
				if v:Distance(tr.HitPos) <= 10 then
					table.RemoveByValue( NewTrack, v )
				end
			end
		end]]
		if SERVER then
			for k,v in pairs(NewTrack) do
				if v:Distance(tr.HitPos) <= 10 then
					table.RemoveByValue( NewTrack, v )
					Ent.path = NewTrack
					self:SendToCL(Ent, NewTrack)
					self:GetOwner():ChatPrint("Point "..k.." removed!")
				end
				--PrintTable(NewTrack)
			end
		end
		return true
	end
end

if SERVER then
	net.Receive("AnomalyTrackEditor", function()
		if IsValid(Ent) then
			local ply = net.ReadEntity()
			NewTrack = net.ReadTable()

			Ent.path = NewTrack

			print("Loaded track")
		end
	end)
end

if CLIENT then

	function TOOL.BuildCPanel( CPanel )

		CPanel:AddControl( "Header", { Description = "Anomaly Track Editor" } )

		--[[local listbox = CPanel:AddControl( "ListBox", { Label = "Track", Height = 17 + table.Count( Tracks ) * 17 } )
		for k, v in pairs( Tracks ) do
			local line = listbox:AddLine( v )
			line.data = { AnomalyTrack = v }
			print(k,v)

			if ( GetConVarString( "AnomalyTrack" ) == tostring(v) ) then line:SetSelected( true ) end
		end]]

		local Tracks = {"New track"}
		for k,v in pairs( file.Find( "anomaly_tracks/*", "DATA" ) ) do
			table.insert( Tracks, string.Replace( v, ".txt", "" ) )
		end

		local tracklist = vgui.Create( "DListView", CPanel )
		tracklist:SetMultiSelect( false )
		tracklist:AddColumn( "Track" )
		for k,v in pairs(Tracks) do
			tracklist:AddLine( v )
		end

		CPanel:AddItem(tracklist)

		tracklist:Dock( FILL )

		--[[CPanel:AddControl( "Slider", { Label = "X", Command = "anomaly_trackX", Type = "Int", Min = -100, Max = 100, Help = false } )
		CPanel:AddControl( "Slider", { Label = "Y", Command = "anomaly_trackY", Type = "Int", Min = -100, Max = 100, Help = false } )
		CPanel:AddControl( "Slider", { Label = "Z", Command = "anomaly_trackZ", Type = "Int", Min = -100, Max = 100, Help = false } )]]

		local loadbutton = vgui.Create("DButton", CPanel )
		loadbutton:SetText("Load track")
		--loadbutton:SetTooltip("Build only the meshes of your own tracks")
		loadbutton.DoClick = function()
			local seltrack = tracklist:GetSelected()[1]
			if IsValid(seltrack) and seltrack:GetColumnText( 1 ) ~= "New track" then
				print("load", seltrack:GetColumnText( 1 ))
				NewTrack = util.JSONToTable( file.Read( "anomaly_tracks/"..seltrack:GetColumnText( 1 )..".txt", "DATA" ) )
				LocalPlayer():GetTool():SendToSV(NewTrack)
			end
		end

		local rembutton = vgui.Create("DButton", CPanel )
		rembutton:SetText("Delete track")
		--loadbutton:SetTooltip("Build only the meshes of your own tracks")
		rembutton.DoClick = function()
			local seltrack = tracklist:GetSelected()[1]
			if IsValid(seltrack) and seltrack:GetColumnText( 1 ) ~= "New track" then
				print("remove", seltrack:GetColumnText( 1 ))
				local RemMenu = DermaMenu()
				RemMenu:AddOption( "No" ):SetIcon( "icon16/cross.png" )
				RemMenu:AddOption( "Yes", function()
					file.Delete( "anomaly_tracks/"..seltrack:GetColumnText( 1 )..".txt" )

					Tracks = {"New track"}
					for k,v in pairs( file.Find( "anomaly_tracks/*", "DATA" ) ) do
						table.insert( Tracks, string.Replace( v, ".txt", "" ) )
					end
					tracklist:Clear()
					for k,v in pairs(Tracks) do
						tracklist:AddLine( v )
					end
					RemMenu:Hide()
				end):SetIcon( "icon16/tick.png" )
				RemMenu:Open()
			end
		end

		CPanel:AddItem( loadbutton, rembutton )

		loadbutton:Dock( LEFT )
		loadbutton:SetWidth(100)

		rembutton:Dock( RIGHT )
		rembutton:SetWidth(100)
		
		loadbutton:GetParent():SetHeight(30)
		tracklist:GetParent():SetHeight(300)

		local trackname = vgui.Create( "DTextEntry", CPanel ) -- create the form as a child of frame
		trackname:SetText( "Track name" )
		trackname:SetTooltip("Track name to save as.")
		--[[trackname.OnEnter = function( self )
			chat.AddText( self:GetValue() )	-- print the form's text as server text
		end]]

		local savebutton = vgui.Create("DButton", CPanel )
		savebutton:SetText("Save track")
		--savebutton:SetTooltip("Build only the meshes of your own tracks")
		savebutton.DoClick = function()
			if trackname:GetValue() then
				print("save", trackname:GetValue())
				PrintTable( NewTrack )
				file.Write( "anomaly_tracks/"..trackname:GetValue()..".txt", util.TableToJSON(NewTrack, true) )

				Tracks = {"New track"}
				for k,v in pairs( file.Find( "anomaly_tracks/*", "DATA" ) ) do
					table.insert( Tracks, string.Replace( v, ".txt", "" ) )
				end
				tracklist:Clear()
				for k,v in pairs(Tracks) do
					tracklist:AddLine( v )
				end
			end
		end

		CPanel:AddItem(trackname, savebutton)
		CPanel:ControlHelp("Track name to save as.")

		trackname:Dock( LEFT )
		trackname:SetWidth(100)

		savebutton:Dock( RIGHT )
		savebutton:SetWidth(100)

		savebutton:GetParent():SetHeight(30)
	end

	net.Receive("AnomalyTrackEditor", function() Ent = net.ReadEntity() NewTrack = net.ReadTable() end)

	hook.Add( "PostDrawTranslucentRenderables", "AnomalyTrack", function()
		if IsValid(LocalPlayer():GetActiveWeapon()) and IsValid(Ent) and LocalPlayer():GetActiveWeapon():GetClass() == "gmod_tool" and LocalPlayer():GetTool()["Name"] == "#Anomaly Track Editor" then
			render.SetColorMaterial()
			halo.Add( {Ent}, Color( 255, 0, 0 ), 5, 5, 2 )
			for k,v in pairs(NewTrack) do
				if v:Distance(LocalPlayer():GetEyeTrace().HitPos) <= 10 then
					Col = Color(255, 0, 0, 255)
				else
					Col = Color(255, 0, 0, 100)
				end
				render.DrawSphere(v, 10, 50, 50, Col or Color(255, 0, 0, 100))

				cam.Start3D2D( v+Vector(0,0,30), (LocalPlayer():GetPos()-v):Angle()+Angle(0,90,90), 1 )
					draw.SimpleText(k, "Trebuchet18", 0, 0, Col or Color(255,0,0,100), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
				cam.End3D2D()

			end
			render.DrawSphere(LocalPlayer():GetEyeTrace().HitPos, 10, 50, 50, Color(120, 0, 0, 100))
		end
	end)
end