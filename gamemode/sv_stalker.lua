local PlayerMeta = FindMetaTable("Player")

util.AddNetworkString("your_are_a_stalker")

function PlayerMeta:SetStalker(bool)
	self.Stalker = bool
	if bool then
		self.StalkerChance = 1
	end
	net.Start( "your_are_a_stalker" )
	net.WriteUInt(bool and 1 or 0, 8)
	net.Send( self )
end

function PlayerMeta:GetStalker(bool)
	return self.Stalker
end
