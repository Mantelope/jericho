
kracken = kracken or {gui = {}}

-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)

AddCSLuaFile("core/client/derma/main_menu.lua")
