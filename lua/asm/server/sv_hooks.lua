hook.Add("PlayerSay", "ASM:Hook:OpenMenu", function( ply, text )
	text = string.lower(text)

	if text == ASM.Config.ChatCommand then
		net.Start( "ASM:Net:OpenMenu" )
		net.Send( ply )

		return ""
	end
end)