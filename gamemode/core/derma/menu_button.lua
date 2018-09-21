
local button_internal = {
    bg_color        = Color(0, 0, 0),           --- \brief The background color.
    shadow_color    = Color(236, 236, 236),     --- \brief The shadow color.
    shadow_offset   = 2,
};

function button_internal:Init()
    self:SetMouseInputEnabled(true);
end

function button_internal:Paint(w, h)
    --- \brief Draw button shadow.
    draw.RoundedBox(self.radius, self.shadow_offset, self.shadow_offset, w, h, self.shadow_color);
end

vgui.Register("button_internal", button_internal, "DButton");

local menu_button = {
    border_color    = Color(242, 196, 49),      --- \brief The border color.
    radius          = 5,                        --- \brief Button border radius.
    padding         = 3,                        --- \brief Outline width.
};

function menu_button:Init()
    self.button = vgui.Create("button_internal", self);
    self:SetMouseInputEnabled(true);
end

function menu_button:Paint(w, h)
    if self:IsHovered() then
        draw.RoundedBox(self.radius, 0, 0, w, h, self.border_color);
    end
end

vgui.Register("menu_button", menu_button, "DPanel");
