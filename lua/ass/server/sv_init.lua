util.AddNetworkString( "ASS:Net:OpenMenu")
concommand.Add( "ass_open", function( ply ) 

    net.Start( "ASS:Net:OpenMenu" )
		net.Send( ply )
end)

hook.Add( "Initialize", "ASS:Hook:LauchServer", function()

    MsgC( Color( 255, 255, 255 ), "////////////////////////////// \n")
    MsgC( Color( 255, 255, 255 ), "//     ASS Loading 50%      // \n")
    MsgC( Color( 255, 255, 255 ), "//  ASS Loading Complete ! //  \n")
    MsgC( Color( 255, 255, 255 ), "/////////////////////////////  \n")
    RunConsoleCommand( "ulx",  "logEcho",  "0" )
end)


