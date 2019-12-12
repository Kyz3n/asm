util.AddNetworkString( "ASM:Net:OpenMenu")
-------------------------------------------
concommand.Add( ASM.Config.ConsoleCommand, function( ply ) 

    net.Start( "ASM:Net:OpenMenu" )
		net.Send( ply )
end)
---------------------------------------------
hook.Add( "Initialize", "ASM:Hook:LauchServer", function()

    MsgC( Color( 255, 255, 255 ), "/////////////////////////////// \n")
    MsgC( Color( 255, 255, 255 ), "//     ASM Loading 50%       // \n")
    MsgC( Color( 255, 255, 255 ), "//  ASM Loading Complete !   //  \n")
    MsgC( Color( 255, 255, 255 ), "///////////////////////////////  \n")
    RunConsoleCommand( "ulx",  "logEcho",  "0" )
end)


