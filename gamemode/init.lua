
DeriveGamemode("sandbox")

AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

AddCSLuaFile("shared.lua")

function GM:PlayerInitialSpawn(client)
    --- \brief Lock the players model for the main menu screen.
    client:SetNoDraw(true)
	client:SetNotSolid(true)
    client:Lock()

    --- \brief Kill the player to reset spawn.
    timer.Simple(1, function()
		client:KillSilent()
		client:StripAmmo()
    end)
end
