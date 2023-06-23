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

if SERVER then return end

--[[

	Complex Conversion System

]]--

local speed = {
	["u/s"]   = 1 / 0.75,
	["u/m"]   = 60 * (1 / 0.75),
	["u/h"]   = 3600 * (1 / 0.75),

	["mm/s"]  = 25.4,
	["cm/s"]  = 2.54,
	["dm/s"]  = 0.254,
	["m/s"]   = 0.0254,
	["km/s"]  = 0.0000254,
	["in/s"]  = 1,
	["ft/s"]  = 1 / 12,
	["yd/s"]  = 1 / 36,
	["mi/s"]  = 1 / 63360,
	["nmi/s"] = 127 / 9260000,

	["mm/m"]  = 60 * 25.4,
	["cm/m"]  = 60 * 2.54,
	["dm/m"]  = 60 * 0.254,
	["m/m"]   = 60 * 0.0254,
	["km/m"]  = 60 * 0.0000254,
	["in/m"]  = 60,
	["ft/m"]  = 60 / 12,
	["yd/m"]  = 60 / 36,
	["mi/m"]  = 60 / 63360,
	["nmi/m"] = 60 * 127 / 9260000,

	["mm/h"]  = 3600 * 25.4,
	["cm/h"]  = 3600 * 2.54,
	["dm/h"]  = 3600 * 0.254,
	["m/h"]   = 3600 * 0.0254,
	["km/h"]  = 3600 * 0.0000254,
	["in/h"]  = 3600,
	["ft/h"]  = 3600 / 12,
	["yd/h"]  = 3600 / 36,
	["mi/h"]  = 3600 / 63360,
	["nmi/h"] = 3600 * 127 / 9260000,

	["mph"]   = 3600 / 63360,
	["knots"] = 3600 * 127 / 9260000,
	["mach"]  = 0.0254 / 295,
}

local length = {
	["u"]   = 1 / 0.75,
	
	["unknown"] = 0,
	
	["mm"]  = 25.4,
	["cm"]  = 2.54,
	["dm"]  = 0.254,
	["m"]   = 0.0254,
	["km"]  = 0.0000254,
	["in"]  = 1,
	["ft"]  = 1 / 12,
	["yd"]  = 1 / 36,
	["mi"]  = 1 / 63360,
	["nmi"] = 127 / 9260000,
}

local weight = {
	["g"]  = 1000,
	["kg"] = 1,
	["t"]  = 0.001,
	["oz"] = 1 / 0.028349523125,
	["lb"] = 1 / 0.45359237,
}

local MeasureMentList = {

	["u"]   = "units",
	["mm"]  = "millimeters",
	["cm"]  = "centimeters",
	["dm"]  = "decimeters",
	["m"]   = "meters",
	["km"]  = "kilometers",
	["in"]  = "inches",
	["ft"]  = "feet/foot",
	["yd"]  = "yards",
	["mi"]  = "miles",
	
}

local MeasureMentList2 = {

	["u"]   = "unit",
	["mm"]  = "millimeter",
	["cm"]  = "centimeter",
	["dm"]  = "decimeter",
	["m"]   = "meter",
	["km"]  = "kilometer",
	["in"]  = "inch",
	["ft"]  = "feet/foot",
	["yd"]  = "yards",
	["mi"]  = "mile",
	
}

function toUnit( conversion_type, input_value )

	if speed[conversion_type] then
		return (input_value * 0.75) * speed[conversion_type]
	elseif length[conversion_type] then
		return (input_value * 0.75) * length[conversion_type]
	elseif weight[conversion_type] then
		return input_value * weight[conversion_type]
	end

	return -1
end

surface.CreateFont ( "ruler_fontlarge", 
	{
	
		font = "ChatFont",
		size = 26,
		weight = 900,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false
		
	})

local function ToolGunPrintDisplay( data )

	local text = data:ReadString()
	
	chat.AddText( Color( 0, 50, 255 ), "[Ruler]", color_white, ": " .. text )

end

usermessage.Hook( "ruler_tool_print", ToolGunPrintDisplay )

--[[

	Tool HUDPaint

]]--

local smooth = 0
local mode = 0
local modetext = "u"
local value = 0

local function SmoothThis( target, speed )

	if speed == nil then speed = 3 end
	if target == nil then target = 0 end

	smooth = Lerp( speed * FrameTime(), smooth, target ) 

end

local function ToolGunHUDPaint()

	local ply = LocalPlayer()
	if !IsValid( ply ) then return end
	
	local display = GetConVarNumber( "tool_ruler_display_worldvisuals" )
	local display_fullmeasurements = GetConVarNumber( "tool_ruler_display_fullmeasurementnames" )
	local display_roundnumbers = GetConVarNumber( "tool_ruler_round_numbers" )
	
	if display == 0 then return end

	local marker1 = ply:GetNWVector( "ruler_marker1" )
	local marker2 = ply:GetNWVector( "ruler_marker2" )
	
	local distance = marker1:Distance( marker2 )
	
	if marker1 == Vector( 0, 0, 0 ) or marker2 == Vector( 0, 0, 0 ) then return end
	
	local pos = marker1 + Vector( 0, 0, 4 )
	local postoscreen = pos:ToScreen()
	
	mode = GetConVarNumber( "tool_ruler_measure_mode" )
	
	if mode == 1 then
	
		modetext = "u"
	
	elseif mode == 2 then
	
		modetext = "in"
	
	elseif mode == 3 then
	
		modetext = "m"
	
	elseif mode == 4 then
	
		modetext = "km"
	
	elseif mode == 5 then

		modetext = "mm"
	
	elseif mode == 6 then

		modetext = "cm"
	
	elseif mode == 7 then

		modetext = "ft"
	
	elseif mode == 8 then

		modetext = "yd"
	
	elseif mode == 9 then

		modetext = "mi"
	
	elseif mode == 10 then

		modetext = "dm"
	
	else
	
		modetext = "unknown"
		distance = 0
	
	end
	
	
	SmoothThis( toUnit( modetext, distance ), 3 )
	
	if display_fullmeasurements == 1 then
		
		if MeasureMentList[modetext] then
			
			if display_roundnumbers == 1 then
				
				if math.Round(smooth) == 1 then
				
					draw.SimpleText( math.Round(smooth) .. " " .. MeasureMentList2[modetext], "ruler_fontlarge", postoscreen.x + 1, postoscreen.y + 1, Color( 50, 50, 50, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
					draw.SimpleText( math.Round(smooth) .. " " .. MeasureMentList2[modetext], "ruler_fontlarge", postoscreen.x, postoscreen.y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
		
				else
				
					draw.SimpleText( math.Round(smooth) .. " " .. MeasureMentList[modetext], "ruler_fontlarge", postoscreen.x + 1, postoscreen.y + 1, Color( 50, 50, 50, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
					draw.SimpleText( math.Round(smooth) .. " " .. MeasureMentList[modetext], "ruler_fontlarge", postoscreen.x, postoscreen.y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
				
				end
		
			else
				
				local measurement = toUnit( modetext, distance )
				
				draw.SimpleText( measurement .. " " .. MeasureMentList[modetext], "ruler_fontlarge", postoscreen.x + 1, postoscreen.y + 1, Color( 50, 50, 50, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
				draw.SimpleText( measurement .. " " .. MeasureMentList[modetext], "ruler_fontlarge", postoscreen.x, postoscreen.y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
			
			end
		
		end
	
	else
		
		if display_roundnumbers == 1 then
		
			draw.SimpleText( math.Round(smooth) .. " " .. modetext, "ruler_fontlarge", postoscreen.x + 1, postoscreen.y + 1, Color( 50, 50, 50, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
			draw.SimpleText( math.Round(smooth) .. " " .. modetext, "ruler_fontlarge", postoscreen.x, postoscreen.y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
	
		else
			
			local measurement = toUnit( modetext, distance )
			
			draw.SimpleText( measurement .. " " .. modetext, "ruler_fontlarge", postoscreen.x + 1, postoscreen.y + 1, Color( 50, 50, 50, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
			draw.SimpleText( measurement .. " " .. modetext, "ruler_fontlarge", postoscreen.x, postoscreen.y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
		
		end
	
	end
	
end

hook.Remove( "HUDPaint", "ruler_tool.HUDPaint" )
hook.Add( "HUDPaint", "ruler_tool.HUDPaint", ToolGunHUDPaint )

local function ToolGunPostDrawOpaqueRenderables()

	local ply = LocalPlayer()
	if !IsValid( ply ) then return end
	
	local display = GetConVarNumber( "tool_ruler_display_worldvisuals" )
	
	if display == 1 then
	
		local trace = ply:GetEyeTrace()
		
		local marker1 = ply:GetNWVector( "ruler_marker1" )
		local marker2 = ply:GetNWVector( "ruler_marker2" )

		local distance = marker1:Distance( marker2 )
		local angle = trace.HitNormal:Angle()
		
		if marker1 == Vector( 0, 0, 0 ) or marker2 == Vector( 0, 0, 0 ) then return end
		
		render.DrawLine( marker1 - Vector( 0, 0, 3 ), marker1 + Vector( 0, 0, 3 ), Color( 0, 255, 0 ), true )
		render.DrawLine( marker2 - Vector( 0, 0, 3 ), marker2 + Vector( 0, 0, 3 ), Color( 255, 0, 0 ), true )
		render.DrawLine( marker1, marker2, color_white, true )
		//render.DrawLine( marker1 - Vector( 0, 0, 3 ), marker2 - Vector( 0, 0, 3 ), color_white, true )
		//render.DrawLine( marker1 + Vector( 0, 0, 3 ), marker2+ Vector( 0, 0, 3 ), color_white, true )
	
	end

end

hook.Remove( "PostDrawOpaqueRenderables", "ruler_tool.PostDrawOpaqueRenderables" )
hook.Add( "PostDrawOpaqueRenderables", "ruler_tool.PostDrawOpaqueRenderables", ToolGunPostDrawOpaqueRenderables )