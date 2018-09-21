
local large_button = {
    radius = 5,                                     --- \brief

    padding = 2,                                    --- \brief Outline width

    bg_color            = Color(0, 0, 0),           --- \brief Background color.
    bg_border_color     = Color(242, 196, 49),      --- \brief The border color
};

function large_button:Init()

end

function large_button:Paint(w, h)
    if self:IsHovered() then
        draw.RoundedBox(self.radius, padding, padding, w - 2 * padding, - 2 * padding, self.bg_color);
    end
    
    draw.RoundedBox(self.radius, 0, 0, w, h, self.bg_color);
end
