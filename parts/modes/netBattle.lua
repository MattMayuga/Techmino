return{
	color=COLOR.white,
	env={
		--TODO: ?
	},
	load=function(playerData)
		PLY.newPlayer(1)
		local N=2
		for i=1,#playerData do
			if playerData[i].id~=USER.id then
				PLY.newRemotePlayer(N,false,playerData[i])
				N=N+1
			end
		end
	end,
}