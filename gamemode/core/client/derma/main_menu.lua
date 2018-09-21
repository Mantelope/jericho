
local menu = {
    bg_color = Color(253, 249, 248, 235),               -- \brief Main menu background color.

    bg_gradient     = Material('vgui/gradient_down'),   -- \brief Main menu gradient.
    bg_grad_color   = Color(240, 237, 232),             -- \breif Main menu gradient color.
};

function menu:Init()
    -- Dock and center the Main Menu to the entire screen.
    self:Dock(FILL)
    self:MakePopup()
    self:Center()
    self:ParentToHUD()
end

function menu:Paint(w, h)
    surface.SetDrawColor(self.bg_color)
    surface.DrawRect(0, 0, w, h)

    surface.SetMaterial(Settings.Material)
    surface.SetDrawColor(Settings.Color)
    surface.DrawTexturedRect(0, 0, w, h/3)
end

vgui.Register("kracken_main_menu", menu, "EditablePanel")
vgui.Create("kracken_main_menu")
