
local menu_button = {
    radius = 5,                                     --- \brief

    padding = 2,                                    --- \brief Outline width

    bg_color            = Color(0, 0, 0),           --- \brief Background color.
    bg_border_color     = Color(242, 196, 49),      --- \brief The border color
};

function menu_button:Init()

end

function menu_button:Paint(w, h)
    draw.RoundedBox(self.radius, self.padding, self.padding, w, h, self.bg_color);
    draw.RoundedBox(self.radius, 0, 0, w - 2 * self.padding, h - 2 * self.padding, self.bg_border_color);
end

vgui.Register("menu_button", menu_button, "EditablePanel");
