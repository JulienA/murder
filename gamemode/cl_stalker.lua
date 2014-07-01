
function GM:SetAmStalker(bool)
	self.Stalker = bool
end

function GM:GetAmStalker(bool)
	return self.Stalker
end

function GM:PlayerFootstep(ply, pos, foot, sound, volume, filter)
  self:FootStepsFootstep(ply, pos, foot, sound, 0, filter)
end

net.Receive( "your_are_a_stalker", function( length, client )
	local am = net.ReadUInt(8) != 0
	GAMEMODE:SetAmStalker(am)
end)
