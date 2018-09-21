
DeriveGamemode("sandbox")

--- \brief Files to send to player.
AddCSLuaFile("cl_init.lua")

AddCSLuaFile("core/log.lua")        --- NOTE: VITIAL!
AddCSLuaFile("core/include.lua")    --- NOTE: VITIAL!
AddCSLuaFile("shared.lua")

--- \brief Files to include.
include("core/log.lua")             --- NOTE: VITIAL!
include("core/include.lua")         --- NOTE: VITIAL!
include("shared.lua")

jericho.include("core/derma/menu.lua",          jericho.shared)

function GM:PlayerInitialSpawn(client)
    --- \brief Lock the players model for the main menu screen.
    client:SetNoDraw(true);
	client:SetNotSolid(true);
    client:Lock();
    gui.EnableScreenClicker(true);

    --- \brief Kill the player to reset spawn.
    timer.Simple(1, function()
		client:KillSilent();
		client:StripAmmo();
    end)
end
