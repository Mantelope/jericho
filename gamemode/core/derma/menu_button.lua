
local menu_button = {
    radius = 5,                                     --- \brief

    padding = 4,                                    --- \brief Outline width

    bg_color        = Color(0, 0, 0),           --- \brief The background color.
    shadow_color    = Color(236, 236, 236),     --- \brief The shadow color.
    border_color    = Color(242, 196, 49),      --- \brief The border color
};

function menu_button:Init()

end

function menu_button:Paint(w, h)
    local bw = w - 2 * self.padding;
    local bh = h - 2 * self.padding;

    draw.RoundedBox(self.radius, self.padding * 2, self.padding * 2, bw, bh, self.shadow_color);

    if self:IsHovered() then
        draw.RoundedBox(self.radius, 0, 0, w, h, self.border_color);
    end

    draw.RoundedBox(self.radius, self.padding, self.padding, bw, bh, self.bg_color);
end

vgui.Register("menu_button", menu_button, "EditablePanel");
