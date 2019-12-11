local function RespFont(font) return font/1920*ScrW() end

for i=1, 100 do
	surface.CreateFont("ASFont"..i, {
		font = "Righteous",
		extended = false,
		size = RespFont(i),
		weight = 600,
	})
end

ASSuite = ASSuite or {}
ASSuite.Version = "BETA 1.0"

net.Receive("ASS:Net:OpenMenu", function() 


    if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

        ASSuiteFrame = vgui.Create( "DFrame" )
        ASSuiteFrame:SetSize( RespX( 1400 ), RespY( 800 ) )
        ASSuiteFrame:Center()
        ASSuiteFrame:MakePopup()
        ASSuiteFrame:ShowCloseButton( false )
        ASSuiteFrame:SetDraggable( true )
        ASSuiteFrame:SetTitle( "" )
        ASSuiteFrame.Paint = function( s, w, h )

            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "ASSuite | "..ASSuite.Config.CommunityName, "ASFont40", RespX( 259 ), RespY( 0 ), Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 255 )
            surface.DrawLine( RespX( 250 ), RespY( 40 ), RespX( 1400 ), RespY( 40 ) )
            surface.DrawLine( RespX( 250 ), RespY( 10 ), RespX( 250 ), RespY( 790 ) )

        end

        ASSuiteCLS = vgui.Create( "DImageButton", ASSuiteFrame )
        ASSuiteCLS:SetSize( RespX( 25 ), RespY( 25 ) )
        ASSuiteCLS:SetPos( RespX( 1368 ), RespY( 7 ) )
        ASSuiteCLS:SetImage( "assicons/close.png" )
        ASSuiteCLS.DoClick = function()

            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
            if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end

        end

    ASCmdBtn = vgui.Create( "GNButton", ASSuiteFrame )
    ASCmdBtn:SetSize( RespX( 200 ), RespY( 50 ) )
    ASCmdBtn:SetPos( RespX( 25 ), RespY( 50 ) )
    ASCmdBtn:SetText( "Commandes" )
    ASCmdBtn:SetFont( "ASFont20" )
    ASCmdBtn:SetTextColor( color_white )
    ASCmdBtn:SetColor(GNLib.Colors.PeterRiver)
    ASCmdBtn:SetHoveredColor(GNLib.Colors.BelizeHole)
    ASCmdBtn:SetClickedColor(GNLib.Colors.PeterRiver)
    ASCmdBtn:SetClickedTextColor( color_white )
    ASCmdBtn:SetHoveredTextColor( color_white )
    ASCmdBtn.DoClick = ASSuiteCommandsOpen

    ASWarnBtn = vgui.Create( "GNButton", ASSuiteFrame )
    ASWarnBtn:SetSize( RespX( 200 ), RespY( 50 ) )
    ASWarnBtn:SetPos( RespX( 25 ), RespY( 150 ) )
    ASWarnBtn:SetText( "Warns" )
    ASWarnBtn:SetFont( "ASFont20" )
    ASWarnBtn:SetTextColor( color_white )
    ASWarnBtn:SetColor(GNLib.Colors.PeterRiver)
    ASWarnBtn:SetHoveredColor(GNLib.Colors.BelizeHole)
    ASWarnBtn:SetClickedColor(GNLib.Colors.PeterRiver)
    ASWarnBtn:SetClickedTextColor( color_white )
    ASWarnBtn:SetHoveredTextColor( color_white )
    ASWarnBtn.DoClick = function()

        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

            LocalPlayer():ConCommand( "say "..ASSuite.Config.WarnCommand)
    end

    ASLogBtn = vgui.Create( "GNButton", ASSuiteFrame )
    ASLogBtn:SetSize( RespX( 200 ), RespY( 50 ) )
    ASLogBtn:SetPos( RespX( 25 ), RespY( 250 ) )
    ASLogBtn:SetText( "Logs" )
    ASLogBtn:SetFont( "ASFont20" )
    ASLogBtn:SetTextColor( color_white )
    ASLogBtn:SetColor(GNLib.Colors.PeterRiver)
    ASLogBtn:SetHoveredColor(GNLib.Colors.BelizeHole)
    ASLogBtn:SetClickedColor(GNLib.Colors.PeterRiver)
    ASLogBtn:SetClickedTextColor( color_white )
    ASLogBtn:SetHoveredTextColor( color_white )
    ASLogBtn.DoClick = function()

        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

            LocalPlayer():ConCommand( "say "..ASSuite.Config.LogsCommand )
    end
end)
