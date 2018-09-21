
local menu = {
    bg_color = Color(253, 249, 248),                    -- \brief Main menu background color.

    bg_gradient     = Material('vgui/gradient_down'),   -- \brief Main menu gradient.
    bg_grad_color   = Color(240, 237, 232),             -- \breif Main menu gradient color.
};

function menu:Init()
    -- Dock and center the Main Menu to the entire screen.
    self:Dock(FILL);
    self:MakePopup();
    self:Center();
    self:ParentToHUD();

    self.load_button = vgui.Create("menu_button");
    self.load_button:SetSize(ScrW() * 0.3, ScrH() * 0.3);
    self.load_button:SetPos(64, ScrW() * 0.5);
end

function menu:Paint(w, h)
    --- Menu background
    surface.SetDrawColor(self.bg_color);
    surface.DrawRect(0, 0, w, h);

    --- Gradient background
    surface.SetMaterial(self.bg_gradient);
    surface.SetDrawColor(self.bg_grad_color);
    surface.DrawTexturedRect(0, 0, w, h/3);
end

vgui.Register("menu", menu, "EditablePanel");
vgui.Create("menu");
