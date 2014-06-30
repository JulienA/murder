
function GM:SetAmStalker(bool)
	self.Stalker = bool
end

function GM:GetAmStalker(bool)
	return self.Stalker
end

net.Receive( "your_are_a_stalker", function( length, client )
	local am = net.ReadUInt(8) != 0
	GAMEMODE:SetAmStalker(am)
end)
