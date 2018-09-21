
-- \brief Clear default garry's mod HUD.

hook.Add("HUDShouldDraw", "HideHUD", function(key)
	return false;
end)

print("Kracken Initiated.")
