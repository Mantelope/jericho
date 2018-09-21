
jericho = jericho or {
    --- \brief Setting this to true will mean that there will be debug output
    --- in the server log.
    debug = true,

    --- \brief Bitflags for core/include.lua
    client = 0x0,
    shared = 0x1,
    server = 0x2,

    gui = {},
};

include("core/log.lua");        --- NOTE: VITIAL!
include("core/include.lua");    --- NOTE: VITIAL!
include("shared.lua");

-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)
