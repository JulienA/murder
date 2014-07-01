local PlayerMeta = FindMetaTable("Player")

util.AddNetworkString("your_are_a_stalker")

GM.StalkerWeight = CreateConVar("mu_stalker_weight_multiplier", 2, bit.bor(FCVAR_NOTIFY), "Multiplier for the weight of the stalker chance" )

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
