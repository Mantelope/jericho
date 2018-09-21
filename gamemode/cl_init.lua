
jericho = jericho or {gui = {}}

--- NOTE: VITIAL!
include("core/include.lua")
include("shared.lua")

-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)
