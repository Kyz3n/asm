hook.Add("PlayerSay", "ASS:Hook:OpenMenu", function( ply, text )
	text = string.lower(text)

	if text == ASSuite.Config.AssCommand then
		net.Start( "ASS:Net:OpenMenu" )
		net.Send( ply )

		return ""
	end
end)