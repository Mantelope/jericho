
DeriveGamemode("sandbox")

AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

AddCSLuaFile("shared.lua")

function GM:PlayerInitialSpawn(client)
    client:SetNoDraw(true)
	client:SetNotSolid(true)
    client:Lock()
end
