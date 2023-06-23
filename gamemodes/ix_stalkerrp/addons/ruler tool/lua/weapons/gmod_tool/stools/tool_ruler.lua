/*============================================================================================

	Ruler Tool Addon: Created By Alex5511, To whom is now named Auzlex.
	
	Under the copyright (C) protection of DMCA.
	
	My Terms are simply are:
	
	You can edit and learn the code freely however you shall not claim or be proud for any
	additional modifications to the current script, doing so i will have to take serious action of
	punching your face in or simply hunting you and your scripted modified version of this mod like a raccoon in the woods.
	
	Anyways you will not learn anything from just looking and copying bits of code, I suggest you
	attempt to make a addon/mod that is 100% made by you and that you can be proud of it without the
	shame of using someone else code, in other words learn by building up your skill.
	
	You shall not:
		
		- Re-upload to another site or workshop even spamming the description of who originally made it and a link to the original addon.
		- Claim that you made any bit of this script.
	
	Final and last statement JUST DONT STEAL ANYTHING, and thank you for your great time for reading all 
	of this.

============================================================================================*/

local toolName = "tool_ruler"
local tool_information01 = "Ruler Tool"
local tool_information02 = "Allows the current user to measure distances, according to the type of mode."
local tool_information03 = "Left Click: Place Maker 1, Right Click: Place Maker 2, Reload: Remove Currently Placed Ruler"

local MeasureMentList = {

	[1] = "units",
	[2] = "inches",
	[3] = "meters",
	[4] = "kilometers",
	[5] = "millimeters",
	[6] = "centimeters",
	[7] = "feet/foot",
	[8] = "yardss",
	[9] = "miles",
	[10] = "decimeters",
	
}

TOOL.Category = "Construction"
TOOL.Name = "#tool." .. toolName .. ".name"
TOOL.Command 		= nil
TOOL.ConfigName 	= nil

TOOL.ClientConVar[ "measure_mode" ] 						= "1"
TOOL.ClientConVar[ "display_worldvisuals" ] 				= "1"
TOOL.ClientConVar[ "display_fullmeasurementnames" ] 		= "1"
TOOL.ClientConVar[ "round_numbers" ] 		= "1"

if CLIENT then
	
	language.Add( "Tool." .. toolName .. ".name", tool_information01 )
	language.Add( "Tool." .. toolName .. ".desc", tool_information02 )
	language.Add( "Tool." .. toolName .. ".0", tool_information03 )
	
	--[[
	
		Tool Fonts
	
	]]--
	
	surface.CreateFont ( "tool_ruler_fontdisplay", 
	{
	
		font = "ChatFont",
		size = 23,
		weight = 900,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = true,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false
		
	})
	
	surface.CreateFont ( "tool_ruler_font_large2", 
	{

		font = "ChatFont",
		size = 45,
		weight = 900,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = true,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false
			
	})
	
	--[[
	
		Drawing the Tool Screen
	
	]]--
	
	local smooth = 0

	local function SmoothThis( target, speed )

		if speed == nil then speed = 3 end
		if target == nil then target = 0 end

		smooth = Lerp( speed * FrameTime(), smooth, target ) 

	end
	
	function TOOL:DrawToolScreen()
	
		cam.Start2D()

			surface.SetDrawColor( Color( 32, 32, 32, 255 ) )
			surface.DrawRect(0, 0, 256, 256)
			
			surface.SetDrawColor( Color( 20, 20, 20, 255 ) )
			surface.DrawRect( 13, 13, 230, 230 )
					
			draw.NoTexture()
			surface.SetDrawColor( Color( 255, 0, 0, 255 ) )
			surface.DrawTexturedRectRotated( 290, 100, 25, 300, 45 )

			local measuremode = self:GetClientNumber( "measure_mode" )

			draw.SimpleText( tool_information01, "tool_ruler_font_large2", 256/2, 130, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
			
			if MeasureMentList[measuremode] then
			
				draw.SimpleText( "M-Mode: " .. MeasureMentList[measuremode], "tool_ruler_fontdisplay", 25, 180, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
	
			end
			
			draw.SimpleText( "Rounded: " .. string.Replace( string.Replace( tostring(self:GetClientNumber( "round_numbers" )), "1", "true" ), "0", "false" ), "tool_ruler_fontdisplay", 25, 200, Color(255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM)
	
		cam.End2D()
	
	end

	--[[
	
		Drawing the BuildCPanel
	
	]]--
	
	function TOOL.BuildCPanel( panel )
	
		panel:AddControl("Header", { 
		
			Text = tool_information01, 
			Description = tool_information02
		
		})
		
		panel:AddControl( "CheckBox",
		{
		
			Label = "Display 3D Visuals",
			Command = toolName .. "_display_worldvisuals"
			
		})
		
		panel:AddControl( "CheckBox",
		{
		
			Label = "Display FULL Measurement names?",
			Command = toolName .. "_display_fullmeasurementnames"
			
		})
		
		panel:AddControl( "CheckBox",
		{
		
			Label = "Round Measurement numbers?",
			Command = toolName .. "_round_numbers"
			
		})
		
		local panel_measuremode = vgui.Create( "DComboBox" )
		//panel_measuremode:SetPos( 25, 65 )
		panel_measuremode:Dock( LEFT )
		panel_measuremode:SetSize( 150, 25 )
		
		panel_measuremode:Clear()
		panel_measuremode:SetText( "Set Measure Mode" )
		
		panel_measuremode:AddChoice( "units/u" )
		panel_measuremode:AddChoice( "inches/in" )
		panel_measuremode:AddChoice( "meters/m" )
		panel_measuremode:AddChoice( "kilometers/km" )
		panel_measuremode:AddChoice( "millimeters/mm" )
		panel_measuremode:AddChoice( "centimeters/cm" )
		panel_measuremode:AddChoice( "ft/feet/foot" )
		panel_measuremode:AddChoice( "yd/yards" )
		panel_measuremode:AddChoice( "mi/miles" )
		panel_measuremode:AddChoice( "dm/decimetre's" )
		
		panel_measuremode.OnSelect = function( panel, index, value )
		
			RunConsoleCommand( toolName .. "_measure_mode", index )
			
		end
		
		panel:AddItem( panel_measuremode )
	
	end
	
end

function TOOL:ToolGunPrint( text )
	
	if SERVER then
	
		local ply = self:GetOwner()
		
		umsg.Start( "ruler_tool_print", ply )
		umsg.String( text )
		umsg.End()
	
	end

end

function TOOL:LeftClick( trace )
	
	local selection_pos = trace.HitPos
	local ent = trace.Entity
	local ply = self:GetOwner()
	
	if IsValid( ent ) then if ent:IsPlayer() then return false end end
	
	ply:SetNWVector( "ruler_marker1", selection_pos )
	self:ToolGunPrint( "Marked Point 1." )
	
	return true
end
	
 
function TOOL:RightClick( trace )
	
	local selection_pos = trace.HitPos
	local ent = trace.Entity
	local ply = self:GetOwner()
	
	if IsValid( ent ) then if ent:IsPlayer() then return false end end

	ply:SetNWVector( "ruler_marker2", selection_pos )
	self:ToolGunPrint( "Marked Point 2." )
	
	return true
end
 
function TOOL:Reload( trace )

	local selection_pos = trace.HitPos
	local ply = self:GetOwner()
	
	local marker1 = ply:GetNWVector( "ruler_marker1" )
	local marker2 = ply:GetNWVector( "ruler_marker2" )
	
	if marker1 == Vector( 0, 0, 0 ) or marker2 == Vector( 0, 0, 0 ) then return end
	
	ply:SetNWVector( "ruler_marker1", Vector() )
	ply:SetNWVector( "ruler_marker2", Vector() )
	
	self:ToolGunPrint( "Removed ruler" )
	
	return true
end
 
function TOOL:Deploy()

end
 
function TOOL:Holster()

end

function TOOL:Think()

end