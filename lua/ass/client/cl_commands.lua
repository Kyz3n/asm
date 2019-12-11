function ASSuiteCommandsOpen()

    if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
    if IsValid( ASSuiteFrameWarn ) then ASSuiteFrameWarn:Remove() end

    ASSuiteFrameCmd = vgui.Create( "DFrame", ASSuiteFrame )
    ASSuiteFrameCmd:SetSize( RespX( 1130 ), RespY( 730 ) )
    ASSuiteFrameCmd:SetPos( RespX( 512 ), RespY( 182 ) )
    ASSuiteFrameCmd:MakePopup()
    ASSuiteFrameCmd:ShowCloseButton( false )
    ASSuiteFrameCmd:SetDraggable( false )
    ASSuiteFrameCmd:SetTitle( "" )
    ASSuiteFrameCmd.Paint = function( s, w, h )

            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Interface Des Commandes", "ASFont35", RespX( 575 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            draw.SimpleText( "Utilitaires", "ASFont30", RespX( 142 ), RespY( 60 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            draw.SimpleText( "Téléportation", "ASFont30", RespX( 575 ), RespY( 60 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            draw.SimpleText( "Sanctions", "ASFont30", RespX( 975 ), RespY( 60 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 375 ), RespY( 38 ), RespX( 775 ), RespY( 38 ) )

        end

        send_message = vgui.Create( "GNButton", ASSuiteFrameCmd )
        send_message:SetSize( RespX( 200 ), RespY( 50 ) )
        send_message:SetPos( RespX( 25 ), RespY( 100 ) )
        send_message:SetText( "Message à tous les joueurs" )
        send_message:SetFont( "ASFont20" )
        send_message:SetTextColor( color_white )
        send_message:SetColor(GNLib.Colors.PeterRiver)
        send_message:SetHoveredColor(GNLib.Colors.BelizeHole)
        send_message:SetClickedColor(GNLib.Colors.PeterRiver)
        send_message:SetClickedTextColor( color_white )
        send_message:SetHoveredTextColor( color_white )
        send_message.DoClick = function()

            if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

            msgframe = vgui.Create( "DFrame" )
            msgframe:SetSize( RespX( 550 ), RespY( 200 ) )
            msgframe:Center()
            msgframe:MakePopup()
            msgframe:ShowCloseButton( false )
            msgframe:SetDraggable( false )
            msgframe:SetTitle( "" )
            msgframe.Paint = function( s, w, h )

            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Gestion Du Message", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

        end

        msgframecls = vgui.Create( "DImageButton", msgframe )
        msgframecls:SetSize( RespX( 25 ), RespY( 25 ) )
        msgframecls:SetPos( RespX( 520 ), RespY( 5 ) )
        msgframecls:SetImage( "assicons/close.png" )
        msgframecls.DoClick = function()

            if IsValid( msgframe ) then msgframe:Remove() end

        end

        msgtextentry = vgui.Create( "GNTextEntry", msgframe )
        msgtextentry:SetSize( RespX( 450 ), RespY( 52 ) )
        msgtextentry:SetPos( RespX( 50 ), RespY( 70 ) )
        msgtextentry:SetColor( GNLib.Colors.PeterRiver )
        msgtextentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        msgtextentry:SetTitle( "Contenu Du Message" )
        msgtextentry:SetPlaceholder( "Ex : Bonjour tout le monde ..." )
        msgtextentry:SetPlaceholderColor( GNLib.Colors.Clouds )

        confirm = vgui.Create( "GNButton", msgframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 172 ), RespY( 135 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()

            if IsValid( msgframe ) then msgframe:Remove() end

            for k, v in pairs(player.GetAll()) do
                chat.AddText( Color( 255, 17, 0 ), "[EVERYONE] ", Color( 250, 250, 250 ), msgtextentry:GetValue() )

            end
        end
    end
-----------------------------------------------------------------

    set_armor = vgui.Create( "GNButton", ASSuiteFrameCmd )
    set_armor:SetSize( RespX( 200 ), RespY( 50 ) )
    set_armor:SetPos( RespX( 45 ), RespY( 165 ) )
    set_armor:SetText( "Modifier L'armure" )
    set_armor:SetFont( "ASFont20" )
    set_armor:SetTextColor( color_white )
    set_armor:SetColor(GNLib.Colors.PeterRiver)
    set_armor:SetHoveredColor(GNLib.Colors.BelizeHole)
    set_armor:SetClickedColor(GNLib.Colors.PeterRiver)
    set_armor:SetClickedTextColor( color_white )
    set_armor:SetHoveredTextColor( color_white )
    set_armor.DoClick = function()

        if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

            armorframe = vgui.Create( "DFrame" )
            armorframe:SetSize( RespX( 550 ), RespY( 300 ) )
            armorframe:Center()
            armorframe:MakePopup()
            armorframe:ShowCloseButton( false )
            armorframe:SetDraggable( false )
            armorframe:SetTitle( "" )
            armorframe.Paint = function( s, w, h )

            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Modifier L'armure", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

        end

        armorframecls = vgui.Create( "DImageButton", armorframe )
        armorframecls:SetSize( RespX( 25 ), RespY( 25 ) )
        armorframecls:SetPos( RespX( 520 ), RespY( 5 ) )
        armorframecls:SetImage( "assicons/close.png" )
        armorframecls.DoClick = function()

            if IsValid( armorframe ) then armorframe:Remove() end

        end

        armornumberentry = vgui.Create( "GNNumEntry", armorframe )
        armornumberentry:SetSize( RespX( 450 ), RespY( 52 ) )
        armornumberentry:SetPos( RespX( 50 ), RespY( 70 ) )
        armornumberentry:SetColor( GNLib.Colors.PeterRiver )
        armornumberentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        armornumberentry:SetTitle( "Choisissez un nombre ( Minimum: 1 )" )


        armorplyentry = vgui.Create( "GNTextEntry", armorframe )
        armorplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
        armorplyentry:SetPos( RespX( 50 ), RespY( 170 ) )
        armorplyentry:SetColor( GNLib.Colors.PeterRiver )
        armorplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        armorplyentry:SetTitle( "Ecrivez le prénom du joueur" )

        confirm = vgui.Create( "GNButton", armorframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 172 ), RespY( 235 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()

            RunConsoleCommand( "ulx", "armor", armorplyentry:GetValue(), armornumberentry:GetValue() )

            if IsValid( armorframe ) then armorframe:Remove() end
        end
    end

----------------------------------------------------------------------

set_hp = vgui.Create( "GNButton", ASSuiteFrameCmd )
set_hp:SetSize( RespX( 200 ), RespY( 50 ) )
set_hp:SetPos( RespX( 45 ), RespY( 230 ) )
set_hp:SetText( "Modifier la vie" )
set_hp:SetFont( "ASFont20" )
set_hp:SetTextColor( color_white )
set_hp:SetColor(GNLib.Colors.PeterRiver)
set_hp:SetHoveredColor(GNLib.Colors.BelizeHole)
set_hp:SetClickedColor(GNLib.Colors.PeterRiver)
set_hp:SetClickedTextColor( color_white )
set_hp:SetHoveredTextColor( color_white )
set_hp.DoClick = function()

    if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

        hpframe = vgui.Create( "DFrame" )
        hpframe:SetSize( RespX( 550 ), RespY( 300 ) )
        hpframe:Center()
        hpframe:MakePopup()
        hpframe:ShowCloseButton( false )
        hpframe:SetDraggable( false )
        hpframe:SetTitle( "" )
        hpframe.Paint = function( s, w, h )

        draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
        draw.SimpleText( "Modifier la vie", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        surface.SetDrawColor( 255, 255, 255, 150 ) 
        surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

    end

    hpframecls = vgui.Create( "DImageButton", hpframe )
    hpframecls:SetSize( RespX( 25 ), RespY( 25 ) )
    hpframecls:SetPos( RespX( 520 ), RespY( 5 ) )
    hpframecls:SetImage( "assicons/close.png" )
    hpframecls.DoClick = function()

        if IsValid( hpframe ) then hpframe:Remove() end

    end

    hpnumberentry = vgui.Create( "GNNumEntry", hpframe )
    hpnumberentry:SetSize( RespX( 450 ), RespY( 52 ) )
    hpnumberentry:SetPos( RespX( 50 ), RespY( 70 ) )
    hpnumberentry:SetColor( GNLib.Colors.PeterRiver )
    hpnumberentry:SetHoveredColor( GNLib.Colors.BelizeHole )
    hpnumberentry:SetTitle( "Choisissez un nombre ( Minimum: 1 )" )


    hpplyentry = vgui.Create( "GNTextEntry", hpframe )
    hpplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
    hpplyentry:SetPos( RespX( 50 ), RespY( 170 ) )
    hpplyentry:SetColor( GNLib.Colors.PeterRiver )
    hpplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
    hpplyentry:SetTitle( "Ecrivez le prénom du joueur" )

    confirm = vgui.Create( "GNButton", hpframe )
    confirm:SetSize( RespX( 200 ), RespY( 50 ) )
    confirm:SetPos( RespX( 172 ), RespY( 235 ) )
    confirm:SetText( "Confirmer" )
    confirm:SetFont( "ASFont20" )
    confirm:SetTextColor( color_white )
    confirm:SetColor(GNLib.Colors.PeterRiver)
    confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
    confirm:SetClickedColor(GNLib.Colors.PeterRiver)
    confirm:SetClickedTextColor( color_white )
    confirm:SetHoveredTextColor( color_white )
    confirm.DoClick = function()

        RunConsoleCommand( "ulx", "hp", hpplyentry:GetValue(), hpnumberentry:GetValue() )

        if IsValid( hpframe ) then hpframe:Remove() end
    end
end

----------------------------------------------------------------------

    cloak = vgui.Create( "GNButton", ASSuiteFrameCmd )
    cloak:SetSize( RespX( 200 ), RespY( 50 ) )
    cloak:SetPos( RespX( 45 ), RespY( 295 ) )
    cloak:SetText( "Rendre Invisible" )
    cloak:SetFont( "ASFont20" )
    cloak:SetTextColor( color_white )
    cloak:SetColor(GNLib.Colors.PeterRiver)
    cloak:SetHoveredColor(GNLib.Colors.BelizeHole)
    cloak:SetClickedColor(GNLib.Colors.PeterRiver)
    cloak:SetClickedTextColor( color_white )
    cloak:SetHoveredTextColor( color_white )
    cloak.DoClick = function()

        
    if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
    if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

    cloakframe = vgui.Create( "DFrame" )
    cloakframe:SetSize( RespX( 550 ), RespY( 200 ) )
    cloakframe:Center()
    cloakframe:MakePopup()
    cloakframe:ShowCloseButton( false )
    cloakframe:SetDraggable( false )
    cloakframe:SetTitle( "" )
    cloakframe.Paint = function( s, w, h )

    draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
    draw.SimpleText( "Rendre Invisible", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
    surface.SetDrawColor( 255, 255, 255, 150 ) 
    surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

end

cloakframecls = vgui.Create( "DImageButton", cloakframe )
cloakframecls:SetSize( RespX( 25 ), RespY( 25 ) )
cloakframecls:SetPos( RespX( 520 ), RespY( 5 ) )
cloakframecls:SetImage( "assicons/close.png" )
cloakframecls.DoClick = function()

    if IsValid( cloakframe ) then cloakframe:Remove() end

end

cloakplyentry = vgui.Create( "GNTextEntry", cloakframe )
cloakplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
cloakplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
cloakplyentry:SetColor( GNLib.Colors.PeterRiver )
cloakplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
cloakplyentry:SetTitle( "Ecrivez le prénom du joueur" )

    confirm = vgui.Create( "GNButton", cloakframe )
    confirm:SetSize( RespX( 200 ), RespY( 50 ) )
    confirm:SetPos( RespX( 172 ), RespY( 135 ) )
    confirm:SetText( "Confirmer" )
    confirm:SetFont( "ASFont20" )
    confirm:SetTextColor( color_white )
    confirm:SetColor(GNLib.Colors.PeterRiver)
    confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
    confirm:SetClickedColor(GNLib.Colors.PeterRiver)
    confirm:SetClickedTextColor( color_white )
    confirm:SetHoveredTextColor( color_white )
    confirm.DoClick = function()

        RunConsoleCommand( "ulx", "cloak", cloakplyentry:GetValue() )

        if IsValid( cloakframe ) then cloakframe:Remove() end
    end


end

----------------------------------------------------------------------


uncloak = vgui.Create( "GNButton", ASSuiteFrameCmd )
uncloak:SetSize( RespX( 200 ), RespY( 50 ) )
uncloak:SetPos( RespX( 45 ), RespY( 360 ) )
uncloak:SetText( "Rendre Visible" )
uncloak:SetFont( "ASFont20" )
uncloak:SetTextColor( color_white )
uncloak:SetColor(GNLib.Colors.PeterRiver)
uncloak:SetHoveredColor(GNLib.Colors.BelizeHole)
uncloak:SetClickedColor(GNLib.Colors.PeterRiver)
uncloak:SetClickedTextColor( color_white )
uncloak:SetHoveredTextColor( color_white )
uncloak.DoClick = function()

    
if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

uncloakframe = vgui.Create( "DFrame" )
uncloakframe:SetSize( RespX( 550 ), RespY( 200 ) )
uncloakframe:Center()
uncloakframe:MakePopup()
uncloakframe:ShowCloseButton( false )
uncloakframe:SetDraggable( false )
uncloakframe:SetTitle( "" )
uncloakframe.Paint = function( s, w, h )

draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
draw.SimpleText( "Rendre Visible", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
surface.SetDrawColor( 255, 255, 255, 150 ) 
surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

end

uncloakframecls = vgui.Create( "DImageButton", uncloakframe )
uncloakframecls:SetSize( RespX( 25 ), RespY( 25 ) )
uncloakframecls:SetPos( RespX( 520 ), RespY( 5 ) )
uncloakframecls:SetImage( "assicons/close.png" )
uncloakframecls.DoClick = function()

if IsValid( uncloakframe ) then uncloakframe:Remove() end

end

uncloakplyentry = vgui.Create( "GNTextEntry", uncloakframe )
uncloakplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
uncloakplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
uncloakplyentry:SetColor( GNLib.Colors.PeterRiver )
uncloakplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
uncloakplyentry:SetTitle( "Ecrivez le prénom du joueur" )

confirm = vgui.Create( "GNButton", uncloakframe )
confirm:SetSize( RespX( 200 ), RespY( 50 ) )
confirm:SetPos( RespX( 172 ), RespY( 135 ) )
confirm:SetText( "Confirmer" )
confirm:SetFont( "ASFont20" )
confirm:SetTextColor( color_white )
confirm:SetColor(GNLib.Colors.PeterRiver)
confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
confirm:SetClickedColor(GNLib.Colors.PeterRiver)
confirm:SetClickedTextColor( color_white )
confirm:SetHoveredTextColor( color_white )
confirm.DoClick = function()

    RunConsoleCommand( "ulx", "uncloak", uncloakplyentry:GetValue() )

    if IsValid( uncloakframe ) then uncloakframe:Remove() end
end

    end

    ----------------------------------------------------------------------

    god = vgui.Create( "GNButton", ASSuiteFrameCmd )
    god:SetSize( RespX( 200 ), RespY( 50 ) )
    god:SetPos( RespX( 45 ), RespY( 425 ) )
    god:SetText( "Rendre Invincible" )
    god:SetFont( "ASFont20" )
    god:SetTextColor( color_white )
    god:SetColor(GNLib.Colors.PeterRiver)
    god:SetHoveredColor(GNLib.Colors.BelizeHole)
    god:SetClickedColor(GNLib.Colors.PeterRiver)
    god:SetClickedTextColor( color_white )
    god:SetHoveredTextColor( color_white )
    god.DoClick = function()

        
    if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
    if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

    godframe = vgui.Create( "DFrame" )
    godframe:SetSize( RespX( 550 ), RespY( 200 ) )
    godframe:Center()
    godframe:MakePopup()
    godframe:ShowCloseButton( false )
    godframe:SetDraggable( false )
    godframe:SetTitle( "" )
    godframe.Paint = function( s, w, h )

    draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
    draw.SimpleText( "Rendre Invincible", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
    surface.SetDrawColor( 255, 255, 255, 150 ) 
    surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

end

godframecls = vgui.Create( "DImageButton", godframe )
godframecls:SetSize( RespX( 25 ), RespY( 25 ) )
godframecls:SetPos( RespX( 520 ), RespY( 5 ) )
godframecls:SetImage( "assicons/close.png" )
godframecls.DoClick = function()

    if IsValid( godframe ) then godframe:Remove() end

end

godplyentry = vgui.Create( "GNTextEntry", godframe )
godplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
godplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
godplyentry:SetColor( GNLib.Colors.PeterRiver )
godplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
godplyentry:SetTitle( "Ecrivez le prénom du joueur" )

    confirm = vgui.Create( "GNButton", godframe )
    confirm:SetSize( RespX( 200 ), RespY( 50 ) )
    confirm:SetPos( RespX( 172 ), RespY( 135 ) )
    confirm:SetText( "Confirmer" )
    confirm:SetFont( "ASFont20" )
    confirm:SetTextColor( color_white )
    confirm:SetColor(GNLib.Colors.PeterRiver)
    confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
    confirm:SetClickedColor(GNLib.Colors.PeterRiver)
    confirm:SetClickedTextColor( color_white )
    confirm:SetHoveredTextColor( color_white )
    confirm.DoClick = function()

        RunConsoleCommand( "ulx", "god", godplyentry:GetValue() )

        if IsValid( godframe ) then godframe:Remove() end
    end


end

----------------------------------------------------------------------


ungod = vgui.Create( "GNButton", ASSuiteFrameCmd )
ungod:SetSize( RespX( 200 ), RespY( 50 ) )
ungod:SetPos( RespX( 45 ), RespY( 490 ) )
ungod:SetText( "Rendre Vincible" )
ungod:SetFont( "ASFont20" )
ungod:SetTextColor( color_white )
ungod:SetColor(GNLib.Colors.PeterRiver)
ungod:SetHoveredColor(GNLib.Colors.BelizeHole)
ungod:SetClickedColor(GNLib.Colors.PeterRiver)
ungod:SetClickedTextColor( color_white )
ungod:SetHoveredTextColor( color_white )
ungod.DoClick = function()

    
if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

ungodframe = vgui.Create( "DFrame" )
ungodframe:SetSize( RespX( 550 ), RespY( 200 ) )
ungodframe:Center()
ungodframe:MakePopup()
ungodframe:ShowCloseButton( false )
ungodframe:SetDraggable( false )
ungodframe:SetTitle( "" )
ungodframe.Paint = function( s, w, h )

draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
draw.SimpleText( "Rendre Vincible", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
surface.SetDrawColor( 255, 255, 255, 150 ) 
surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )

end

ungodframecls = vgui.Create( "DImageButton", ungodframe )
ungodframecls:SetSize( RespX( 25 ), RespY( 25 ) )
ungodframecls:SetPos( RespX( 520 ), RespY( 5 ) )
ungodframecls:SetImage( "assicons/close.png" )
ungodframecls.DoClick = function()

if IsValid( ungodframe ) then ungodframe:Remove() end

end

ungodplyentry = vgui.Create( "GNTextEntry", ungodframe )
ungodplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
ungodplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
ungodplyentry:SetColor( GNLib.Colors.PeterRiver )
ungodplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
ungodplyentry:SetTitle( "Ecrivez le prénom du joueur" )

confirm = vgui.Create( "GNButton", ungodframe )
confirm:SetSize( RespX( 200 ), RespY( 50 ) )
confirm:SetPos( RespX( 172 ), RespY( 135 ) )
confirm:SetText( "Confirmer" )
confirm:SetFont( "ASFont20" )
confirm:SetTextColor( color_white )
confirm:SetColor(GNLib.Colors.PeterRiver)
confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
confirm:SetClickedColor(GNLib.Colors.PeterRiver)
confirm:SetClickedTextColor( color_white )
confirm:SetHoveredTextColor( color_white )
confirm.DoClick = function()

    RunConsoleCommand( "ulx", "ungod", ungodplyentry:GetValue() )

    if IsValid( ungodframe ) then ungodframe:Remove() end
end

    end

        jail = vgui.Create( "GNButton", ASSuiteFrameCmd )
        jail:SetSize( RespX( 200 ), RespY( 50 ) )
        jail:SetPos( RespX( 45 ), RespY( 555 ) )
        jail:SetText( "Emprisonner" )
        jail:SetFont( "ASFont20" )
        jail:SetTextColor( color_white )
        jail:SetColor(GNLib.Colors.PeterRiver)
        jail:SetHoveredColor(GNLib.Colors.BelizeHole)
        jail:SetClickedColor(GNLib.Colors.PeterRiver)
        jail:SetClickedTextColor( color_white )
        jail:SetHoveredTextColor( color_white )
        jail.DoClick = function()
    
            
        if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
    
        jailframe = vgui.Create( "DFrame" )
        jailframe:SetSize( RespX( 550 ), RespY( 200 ) )
        jailframe:Center()
        jailframe:MakePopup()
        jailframe:ShowCloseButton( false )
        jailframe:SetDraggable( false )
        jailframe:SetTitle( "" )
        jailframe.Paint = function( s, w, h )
    
        draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
        draw.SimpleText( "Emprisonner", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        surface.SetDrawColor( 255, 255, 255, 150 ) 
        surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )
    
    end
    
    jailframecls = vgui.Create( "DImageButton", jailframe )
    jailframecls:SetSize( RespX( 25 ), RespY( 25 ) )
    jailframecls:SetPos( RespX( 520 ), RespY( 5 ) )
    jailframecls:SetImage( "assicons/close.png" )
    jailframecls.DoClick = function()
    
        if IsValid( jailframe ) then jailframe:Remove() end
    
    end
    
    jailplyentry = vgui.Create( "GNTextEntry", jailframe )
    jailplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
    jailplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
    jailplyentry:SetColor( GNLib.Colors.PeterRiver )
    jailplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
    jailplyentry:SetTitle( "Ecrivez le prénom du joueur" )
    
        confirm = vgui.Create( "GNButton", jailframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 172 ), RespY( 135 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()
    
            RunConsoleCommand( "ulx", "jail", jailplyentry:GetValue() )
    
            if IsValid( jailframe ) then jailframe:Remove() end
        end
    
    
    end
    
    ----------------------------------------------------------------------
    
    
    unfreeze = vgui.Create( "GNButton", ASSuiteFrameCmd )
    unfreeze:SetSize( RespX( 200 ), RespY( 50 ) )
    unfreeze:SetPos( RespX( 45 ), RespY( 620 ) )
    unfreeze:SetText( "Libérer" )
    unfreeze:SetFont( "ASFont20" )
    unfreeze:SetTextColor( color_white )
    unfreeze:SetColor(GNLib.Colors.PeterRiver)
    unfreeze:SetHoveredColor(GNLib.Colors.BelizeHole)
    unfreeze:SetClickedColor(GNLib.Colors.PeterRiver)
    unfreeze:SetClickedTextColor( color_white )
    unfreeze:SetHoveredTextColor( color_white )
    unfreeze.DoClick = function()
    
        
    if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
    if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
    
    unfreezeframe = vgui.Create( "DFrame" )
    unfreezeframe:SetSize( RespX( 550 ), RespY( 200 ) )
    unfreezeframe:Center()
    unfreezeframe:MakePopup()
    unfreezeframe:ShowCloseButton( false )
    unfreezeframe:SetDraggable( false )
    unfreezeframe:SetTitle( "" )
    unfreezeframe.Paint = function( s, w, h )
    
    draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
    draw.SimpleText( "Libérer", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
    surface.SetDrawColor( 255, 255, 255, 150 ) 
    surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )
    
    end
    
    unfreezeframecls = vgui.Create( "DImageButton", unfreezeframe )
    unfreezeframecls:SetSize( RespX( 25 ), RespY( 25 ) )
    unfreezeframecls:SetPos( RespX( 520 ), RespY( 5 ) )
    unfreezeframecls:SetImage( "assicons/close.png" )
    unfreezeframecls.DoClick = function()
    
    if IsValid( unfreezeframe ) then unfreezeframe:Remove() end
    
    end
    
    unfreezeplyentry = vgui.Create( "GNTextEntry", unfreezeframe )
    unfreezeplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
    unfreezeplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
    unfreezeplyentry:SetColor( GNLib.Colors.PeterRiver )
    unfreezeplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
    unfreezeplyentry:SetTitle( "Ecrivez le prénom du joueur" )
    
    confirm = vgui.Create( "GNButton", unfreezeframe )
    confirm:SetSize( RespX( 200 ), RespY( 50 ) )
    confirm:SetPos( RespX( 172 ), RespY( 135 ) )
    confirm:SetText( "Confirmer" )
    confirm:SetFont( "ASFont20" )
    confirm:SetTextColor( color_white )
    confirm:SetColor(GNLib.Colors.PeterRiver)
    confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
    confirm:SetClickedColor(GNLib.Colors.PeterRiver)
    confirm:SetClickedTextColor( color_white )
    confirm:SetHoveredTextColor( color_white )
    confirm.DoClick = function()
    
        RunConsoleCommand( "ulx", "unjail", unfreezeplyentry:GetValue() )
    
        if IsValid( unfreezeframe ) then unfreezeframe:Remove() end
    end
end

        tp = vgui.Create( "GNButton", ASSuiteFrameCmd )
        tp:SetSize( RespX( 200 ), RespY( 50 ) )
        tp:SetPos( RespX( 475 ), RespY( 100 ) )
        tp:SetText( "Téléporter un joueur" )
        tp:SetFont( "ASFont20" )
        tp:SetTextColor( color_white )
        tp:SetColor(GNLib.Colors.PeterRiver)
        tp:SetHoveredColor(GNLib.Colors.BelizeHole)
        tp:SetClickedColor(GNLib.Colors.PeterRiver)
        tp:SetClickedTextColor( color_white )
        tp:SetHoveredTextColor( color_white )
        tp.DoClick = function()
            if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
            
            tpframe = vgui.Create( "DFrame" )
            tpframe:SetSize( RespX( 550 ), RespY( 200 ) )
            tpframe:Center()
            tpframe:MakePopup()
            tpframe:ShowCloseButton( false )
            tpframe:SetDraggable( false )
            tpframe:SetTitle( "" )
            tpframe.Paint = function( s, w, h )
            
            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Téléportation", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )
            
            end
            
            tpframecls = vgui.Create( "DImageButton", tpframe )
            tpframecls:SetSize( RespX( 25 ), RespY( 25 ) )
            tpframecls:SetPos( RespX( 520 ), RespY( 5 ) )
            tpframecls:SetImage( "assicons/close.png" )
            tpframecls.DoClick = function()
            
            if IsValid( tpframe ) then tpframe:Remove() end
            
            end
            
            tpplyentry = vgui.Create( "GNTextEntry", tpframe )
            tpplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
            tpplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
            tpplyentry:SetColor( GNLib.Colors.PeterRiver )
            tpplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
            tpplyentry:SetTitle( "Ecrivez le prénom du joueur" )
            
            confirm = vgui.Create( "GNButton", tpframe )
            confirm:SetSize( RespX( 200 ), RespY( 50 ) )
            confirm:SetPos( RespX( 172 ), RespY( 135 ) )
            confirm:SetText( "Confirmer" )
            confirm:SetFont( "ASFont20" )
            confirm:SetTextColor( color_white )
            confirm:SetColor(GNLib.Colors.PeterRiver)
            confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
            confirm:SetClickedColor(GNLib.Colors.PeterRiver)
            confirm:SetClickedTextColor( color_white )
            confirm:SetHoveredTextColor( color_white )
            confirm.DoClick = function()
            
                RunConsoleCommand( "ulx", "teleport", tpplyentry:GetValue() )
            
                if IsValid( tpframe ) then tpframe:Remove() end
            end
        end

        gotoply = vgui.Create( "GNButton", ASSuiteFrameCmd )
        gotoply:SetSize( RespX( 200 ), RespY( 50 ) )
        gotoply:SetPos( RespX( 475 ), RespY( 165 ) )
        gotoply:SetText( "Se Téléporter à" )
        gotoply:SetFont( "ASFont20" )
        gotoply:SetTextColor( color_white )
        gotoply:SetColor(GNLib.Colors.PeterRiver)
        gotoply:SetHoveredColor(GNLib.Colors.BelizeHole)
        gotoply:SetClickedColor(GNLib.Colors.PeterRiver)
        gotoply:SetClickedTextColor( color_white )
        gotoply:SetHoveredTextColor( color_white )
        gotoply.DoClick = function()
            if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
            
            gotoplyframe = vgui.Create( "DFrame" )
            gotoplyframe:SetSize( RespX( 550 ), RespY( 200 ) )
            gotoplyframe:Center()
            gotoplyframe:MakePopup()
            gotoplyframe:ShowCloseButton( false )
            gotoplyframe:SetDraggable( false )
            gotoplyframe:SetTitle( "" )
            gotoplyframe.Paint = function( s, w, h )
            
            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Téléportation à", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )
            
            end
            
            gotoplyframecls = vgui.Create( "DImageButton", gotoplyframe )
            gotoplyframecls:SetSize( RespX( 25 ), RespY( 25 ) )
            gotoplyframecls:SetPos( RespX( 520 ), RespY( 5 ) )
            gotoplyframecls:SetImage( "assicons/close.png" )
            gotoplyframecls.DoClick = function()
            
            if IsValid( gotoplyframe ) then gotoplyframe:Remove() end
            
            end
            
            tpplyentry = vgui.Create( "GNTextEntry", gotoplyframe )
            tpplyentry:SetSize( RespX( 450 ), RespY( 52 ) )
            tpplyentry:SetPos( RespX( 50 ), RespY( 70 ) )
            tpplyentry:SetColor( GNLib.Colors.PeterRiver )
            tpplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
            tpplyentry:SetTitle( "Ecrivez le prénom du joueur" )
            
            confirm = vgui.Create( "GNButton", gotoplyframe )
            confirm:SetSize( RespX( 200 ), RespY( 50 ) )
            confirm:SetPos( RespX( 172 ), RespY( 135 ) )
            confirm:SetText( "Confirmer" )
            confirm:SetFont( "ASFont20" )
            confirm:SetTextColor( color_white )
            confirm:SetColor(GNLib.Colors.PeterRiver)
            confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
            confirm:SetClickedColor(GNLib.Colors.PeterRiver)
            confirm:SetClickedTextColor( color_white )
            confirm:SetHoveredTextColor( color_white )
            confirm.DoClick = function()
            
                RunConsoleCommand( "ulx", "goto", tpplyentry:GetValue() )
            
                if IsValid( gotoplyframe ) then gotoplyframe:Remove() end
            end
        end

        returnply = vgui.Create( "GNButton", ASSuiteFrameCmd )
        returnply:SetSize( RespX( 200 ), RespY( 50 ) )
        returnply:SetPos( RespX( 475 ), RespY( 230 ) )
        returnply:SetText( "Retourner un joueur" )
        returnply:SetFont( "ASFont20" )
        returnply:SetTextColor( color_white )
        returnply:SetColor(GNLib.Colors.PeterRiver)
        returnply:SetHoveredColor(GNLib.Colors.BelizeHole)
        returnply:SetClickedColor(GNLib.Colors.PeterRiver)
        returnply:SetClickedTextColor( color_white )
        returnply:SetHoveredTextColor( color_white )
        returnply.DoClick = function()
            if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
            if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
            
            returnplyframe = vgui.Create( "DFrame" )
            returnplyframe:SetSize( RespX( 550 ), RespY( 200 ) )
            returnplyframe:Center()
            returnplyframe:MakePopup()
            returnplyframe:ShowCloseButton( false )
            returnplyframe:SetDraggable( false )
            returnplyframe:SetTitle( "" )
            returnplyframe.Paint = function( s, w, h )
            
            draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
            draw.SimpleText( "Retourner un joueur", "ASFont35", RespX( 275 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
            surface.SetDrawColor( 255, 255, 255, 150 ) 
            surface.DrawLine( RespX( 125 ), RespY( 37 ), RespX( 425 ), RespY( 37 ) )
            
            end
            
            returnplyframecls = vgui.Create( "DImageButton", returnplyframe )
            returnplyframecls:SetSize( RespX( 25 ), RespY( 25 ) )
            returnplyframecls:SetPos( RespX( 520 ), RespY( 5 ) )
            returnplyframecls:SetImage( "assicons/close.png" )
            returnplyframecls.DoClick = function()
            
            if IsValid( returnplyframe ) then returnplyframe:Remove() end
            
            end
            
            returnplyframeentry = vgui.Create( "GNTextEntry", returnplyframe )
            returnplyframeentry:SetSize( RespX( 450 ), RespY( 52 ) )
            returnplyframeentry:SetPos( RespX( 50 ), RespY( 70 ) )
            returnplyframeentry:SetColor( GNLib.Colors.PeterRiver )
            returnplyframeentry:SetHoveredColor( GNLib.Colors.BelizeHole )
            returnplyframeentry:SetTitle( "Ecrivez le prénom du joueur" )
            
            confirm = vgui.Create( "GNButton", returnplyframe )
            confirm:SetSize( RespX( 200 ), RespY( 50 ) )
            confirm:SetPos( RespX( 172 ), RespY( 135 ) )
            confirm:SetText( "Confirmer" )
            confirm:SetFont( "ASFont20" )
            confirm:SetTextColor( color_white )
            confirm:SetColor(GNLib.Colors.PeterRiver)
            confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
            confirm:SetClickedColor(GNLib.Colors.PeterRiver)
            confirm:SetClickedTextColor( color_white )
            confirm:SetHoveredTextColor( color_white )
            confirm.DoClick = function()
            
                RunConsoleCommand( "ulx", "return", returnplyframeentry:GetValue() )
            
                if IsValid( returnplyframe ) then returnplyframe:Remove() end
            end
        end

    --[[COMMANDES DES SANCTIONS 
        COMMANDES DES SANCTIONS
        COMMANDES DES SANCTIONS
        COMMANDES DES SANCTIONS
    ]]--

    ban = vgui.Create( "GNButton", ASSuiteFrameCmd )
    ban:SetSize( RespX( 200 ), RespY( 50 ) )
    ban:SetPos( RespX( 875 ), RespY( 100 ) )
    ban:SetText( "Bannir un joueur" )
    ban:SetFont( "ASFont20" )
    ban:SetTextColor( color_white )
    ban:SetColor(GNLib.Colors.PeterRiver)
    ban:SetHoveredColor(GNLib.Colors.BelizeHole)
    ban:SetClickedColor(GNLib.Colors.PeterRiver)
    ban:SetClickedTextColor( color_white )
    ban:SetHoveredTextColor( color_white )
    ban.DoClick = function()

        if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

        local function TranslateDate(val, toTranslate)

			if !isnumber(val) then return "0" end
		
			if toTranslate == "Année(s)" then
				return val * 365 * 24 * 60
			elseif toTranslate == "Mois" then
				return val * 30 * 24 * 60
			elseif toTranslate == "Semaine(s)" then
				return val * 7 * 24 * 60
			elseif toTranslate == "Jour(s)" then
				return val * 24 * 60
			elseif toTranslate == "Heure(s)" then
				return val * 60
			end
			return val
		
		end
        
        banframe = vgui.Create( "DFrame" )
        banframe:SetSize( RespX( 1000 ), RespY( 350 ) )
        banframe:Center()
        banframe:MakePopup()
        banframe:ShowCloseButton( false )
        banframe:SetDraggable( false )
        banframe:SetTitle( "" )
        banframe.Paint = function( s, w, h )
        
        draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
        draw.SimpleText( "Menu De Bannissement", "ASFont35", RespX( 500 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        surface.SetDrawColor( 255, 255, 255, 150 ) 
        surface.DrawLine( RespX( 335 ), RespY( 37 ), RespX( 665 ), RespY( 37 ) )
        
        end
        
        banframecls = vgui.Create( "DImageButton", banframe )
        banframecls:SetSize( RespX( 25 ), RespY( 25 ) )
        banframecls:SetPos( RespX( 970 ), RespY( 5 ) )
        banframecls:SetImage( "assicons/close.png" )
        banframecls.DoClick = function()
        if IsValid( banframe ) then banframe:Remove() end
        
        end
        
        banframeentry = vgui.Create( "GNTextEntry", banframe )
        banframeentry:SetSize( RespX( 650 ), RespY( 52 ) )
        banframeentry:SetPos( RespX( 175 ), RespY( 65 ) )
        banframeentry:SetColor( GNLib.Colors.PeterRiver )
        banframeentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        banframeentry:SetTitle( "Ecrivez la raison du bannissement" )
        banframeentry:SetPlaceholder( "Ex : Troll" )

        bannumentry = vgui.Create( "GNNumEntry", banframe )
        bannumentry:SetSize( RespX( 525 ), RespY( 52 ) )
        bannumentry:SetPos( RespX( 175 ), RespY( 200 ) )
        bannumentry:SetColor( GNLib.Colors.PeterRiver )
        bannumentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        bannumentry:SetTitle( "Ecrivez le temps du bannissement" )

        banplyentry = vgui.Create( "GNTextEntry", banframe )
        banplyentry:SetSize( RespX( 650 ), RespY( 52 ) )
        banplyentry:SetPos( RespX( 175 ), RespY( 125 ) )
        banplyentry:SetColor( GNLib.Colors.PeterRiver )
        banplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        banplyentry:SetTitle( "Ecrivez le nom du joueur" )

        bantimeentry = vgui.Create( "DComboBox", banframe )
        bantimeentry:SetSize( RespX( 120 ), RespY( 43 ) )
        bantimeentry:SetPos( RespX( 705 ), RespY( 208 ) )
        bantimeentry:SetValue( "Choisissez la valeur" )
        bantimeentry:AddChoice("Année(s)")
        bantimeentry:AddChoice("Mois")
        bantimeentry:AddChoice("Semaine(s)")
        bantimeentry:AddChoice("Jour(s)")
        bantimeentry:AddChoice("Heure(s)")
        bantimeentry:AddChoice("Minute(s)")

        confirm = vgui.Create( "GNButton", banframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 400 ), RespY( 280 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()

            local time = TranslateDate(tonumber(bannumentry:GetValue()), bantimeentry:GetSelected())
		    RunConsoleCommand( "ulx", "ban", banplyentry:GetValue(), time, banframeentry:GetValue() )
        
            if IsValid( banframe ) then banframe:Remove() end
        end
    end

    banid = vgui.Create( "GNButton", ASSuiteFrameCmd )
    banid:SetSize( RespX( 200 ), RespY( 50 ) )
    banid:SetPos( RespX( 875 ), RespY( 165 ) )
    banid:SetText( "Bannir une SteamID" )
    banid:SetFont( "ASFont20" )
    banid:SetTextColor( color_white )
    banid:SetColor(GNLib.Colors.PeterRiver)
    banid:SetHoveredColor(GNLib.Colors.BelizeHole)
    banid:SetClickedColor(GNLib.Colors.PeterRiver)
    banid:SetClickedTextColor( color_white )
    banid:SetHoveredTextColor( color_white )
    banid.DoClick = function()

        if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end

        local function TranslateDate(val, toTranslate)

			if !isnumber(val) then return "0" end
		
			if toTranslate == "Année(s)" then
				return val * 365 * 24 * 60
			elseif toTranslate == "Mois" then
				return val * 30 * 24 * 60
			elseif toTranslate == "Semaine(s)" then
				return val * 7 * 24 * 60
			elseif toTranslate == "Jour(s)" then
				return val * 24 * 60
			elseif toTranslate == "Heure(s)" then
				return val * 60
			end
			return val
		
		end
        
        banidframe = vgui.Create( "DFrame" )
        banidframe:SetSize( RespX( 1000 ), RespY( 350 ) )
        banidframe:Center()
        banidframe:MakePopup()
        banidframe:ShowCloseButton( false )
        banidframe:SetDraggable( false )
        banidframe:SetTitle( "" )
        banidframe.Paint = function( s, w, h )
        
        draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
        draw.SimpleText( "Menu de Bannissement SteamID", "ASFont35", RespX( 500 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        surface.SetDrawColor( 255, 255, 255, 150 ) 
        surface.DrawLine( RespX( 335 ), RespY( 37 ), RespX( 665 ), RespY( 37 ) )
        
        end
        
        banidframecls = vgui.Create( "DImageButton", banidframe )
        banidframecls:SetSize( RespX( 25 ), RespY( 25 ) )
        banidframecls:SetPos( RespX( 970 ), RespY( 5 ) )
        banidframecls:SetImage( "assicons/close.png" )
        banidframecls.DoClick = function()
        if IsValid( banidframe ) then banidframe:Remove() end
        
        end
        
        banidframeentry = vgui.Create( "GNTextEntry", banidframe )
        banidframeentry:SetSize( RespX( 650 ), RespY( 52 ) )
        banidframeentry:SetPos( RespX( 175 ), RespY( 65 ) )
        banidframeentry:SetColor( GNLib.Colors.PeterRiver )
        banidframeentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        banidframeentry:SetTitle( "Ecrivez la raison du bannissement" )
        banidframeentry:SetPlaceholder( "Ex : Troll" )

        banidnumentry = vgui.Create( "GNNumEntry", banidframe )
        banidnumentry:SetSize( RespX( 525 ), RespY( 52 ) )
        banidnumentry:SetPos( RespX( 175 ), RespY( 200 ) )
        banidnumentry:SetColor( GNLib.Colors.PeterRiver )
        banidnumentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        banidnumentry:SetTitle( "Ecrivez le temps du bannissement" )

        banidplyentry = vgui.Create( "GNTextEntry", banidframe )
        banidplyentry:SetSize( RespX( 650 ), RespY( 52 ) )
        banidplyentry:SetPos( RespX( 175 ), RespY( 125 ) )
        banidplyentry:SetColor( GNLib.Colors.PeterRiver )
        banidplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        banidplyentry:SetTitle( "Ecrivez une SteamID" )

        banidtimeentry = vgui.Create( "DComboBox", banidframe )
        banidtimeentry:SetSize( RespX( 120 ), RespY( 43 ) )
        banidtimeentry:SetPos( RespX( 705 ), RespY( 208 ) )
        banidtimeentry:SetValue( "Choisissez la valeur" )
        banidtimeentry:AddChoice("Année(s)")
        banidtimeentry:AddChoice("Mois")
        banidtimeentry:AddChoice("Semaine(s)")
        banidtimeentry:AddChoice("Jour(s)")
        banidtimeentry:AddChoice("Heure(s)")
        banidtimeentry:AddChoice("Minute(s)")

        confirm = vgui.Create( "GNButton", banidframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 400 ), RespY( 280 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()

            local time = TranslateDate(tonumber(banidnumentry:GetValue()), banidtimeentry:GetSelected())
		    RunConsoleCommand( "ulx", "banid", banidplyentry:GetValue(), time, banidframeentry:GetValue() )
        
            if IsValid( banidframe ) then banidframe:Remove() end
        end
    end

    kick = vgui.Create( "GNButton", ASSuiteFrameCmd )
    kick:SetSize( RespX( 200 ), RespY( 50 ) )
    kick:SetPos( RespX( 875 ), RespY( 230 ) )
    kick:SetText( "Exclure un joueur" )
    kick:SetFont( "ASFont20" )
    kick:SetTextColor( color_white )
    kick:SetColor(GNLib.Colors.PeterRiver)
    kick:SetHoveredColor(GNLib.Colors.BelizeHole)
    kick:SetClickedColor(GNLib.Colors.PeterRiver)
    kick:SetClickedTextColor( color_white )
    kick:SetHoveredTextColor( color_white )
    kick.DoClick = function()

        if IsValid( ASSuiteFrameCmd ) then ASSuiteFrameCmd:Remove() end
        if IsValid( ASSuiteFrame ) then ASSuiteFrame:Remove() end
        
        kickframe = vgui.Create( "DFrame" )
        kickframe:SetSize( RespX( 1000 ), RespY( 350 ) )
        kickframe:Center()
        kickframe:MakePopup()
        kickframe:ShowCloseButton( false )
        kickframe:SetDraggable( false )
        kickframe:SetTitle( "" )
        kickframe.Paint = function( s, w, h )
        
        draw.RoundedBox( 3, RespX( 0 ), RespY( 0 ), w, h, Color( 30, 30, 30, 255 ) )
        draw.SimpleText( "Menu D'Exclusion", "ASFont35", RespX( 500 ), RespY( 0 ), Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
        surface.SetDrawColor( 255, 255, 255, 150 ) 
        surface.DrawLine( RespX( 335 ), RespY( 37 ), RespX( 665 ), RespY( 37 ) )
        
        end
        
        kickframecls = vgui.Create( "DImageButton", kickframe )
        kickframecls:SetSize( RespX( 25 ), RespY( 25 ) )
        kickframecls:SetPos( RespX( 970 ), RespY( 5 ) )
        kickframecls:SetImage( "assicons/close.png" )
        kickframecls.DoClick = function()
        if IsValid( kickframe ) then kickframe:Remove() end
        
        end
        
        kickframeentry = vgui.Create( "GNTextEntry", kickframe )
        kickframeentry:SetSize( RespX( 650 ), RespY( 52 ) )
        kickframeentry:SetPos( RespX( 175 ), RespY( 65 ) )
        kickframeentry:SetColor( GNLib.Colors.PeterRiver )
        kickframeentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        kickframeentry:SetTitle( "Ecrivez la raison du kick" )
        kickframeentry:SetPlaceholder( "Ex : Troll" )

        kickplyentry = vgui.Create( "GNTextEntry", kickframe )
        kickplyentry:SetSize( RespX( 650 ), RespY( 52 ) )
        kickplyentry:SetPos( RespX( 175 ), RespY( 125 ) )
        kickplyentry:SetColor( GNLib.Colors.PeterRiver )
        kickplyentry:SetHoveredColor( GNLib.Colors.BelizeHole )
        kickplyentry:SetTitle( "Ecrivez le prénom du joueur" )


        confirm = vgui.Create( "GNButton", kickframe )
        confirm:SetSize( RespX( 200 ), RespY( 50 ) )
        confirm:SetPos( RespX( 400 ), RespY( 280 ) )
        confirm:SetText( "Confirmer" )
        confirm:SetFont( "ASFont20" )
        confirm:SetTextColor( color_white )
        confirm:SetColor(GNLib.Colors.PeterRiver)
        confirm:SetHoveredColor(GNLib.Colors.BelizeHole)
        confirm:SetClickedColor(GNLib.Colors.PeterRiver)
        confirm:SetClickedTextColor( color_white )
        confirm:SetHoveredTextColor( color_white )
        confirm.DoClick = function()

		    RunConsoleCommand( "ulx", "kick", kickplyentry:GetValue(), kickframeentry:GetValue() )
        
            if IsValid( kickframe ) then kickframe:Remove() end
        end
    end
end