
kracken = kracken or {gui = {}}

include("gamemode/core/derma/main_menu.lua")

-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)
