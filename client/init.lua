
-- \brief Clear default garry's mod HUD.
hook.Add("HUDShouldDraw", "HideHUD", function()
    return false;
end)
