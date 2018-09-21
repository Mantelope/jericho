
jericho = jericho or {
    --- \brief Setting this to true will mean that there will be debug output
    --- in the server log.
    debug = true,

    gui = {},
};

--- NOTE: VITIAL!
include("core/include.lua");
include("shared.lua");

-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)
