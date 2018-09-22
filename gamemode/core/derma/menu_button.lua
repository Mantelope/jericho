
--- \brief Blur material
local blur = Material("pp/blurscreen")

local function DrawBlurRect(x, y, w, h)
    local X, Y = 0,0

    surface.SetDrawColor(255,255,255)
    surface.SetMaterial(blur)

    for i = 1, 5 do
        blur:SetFloat("$blur", (i / 3) * (5))
        blur:Recompute()

        render.UpdateScreenEffectTexture()

        render.SetScissorRect(x, y, x+w, y+h, true)
        surface.DrawTexturedRect(x, y, w, h)
        render.SetScissorRect(0, 0, 0, 0, false)
    end

   draw.RoundedBox(0,x,y,w,h,Color(0,0,0,205))
   surface.SetDrawColor(0,0,0)
   surface.DrawOutlinedRect(x,y,w,h)
end

--- \brief Button border radius.
local radius = 5;

local button_internal = {
    bg_color        = Color(0, 0, 0),           --- \brief The background color.
    shadow_color    = Color(236, 236, 236),     --- \brief The shadow color.
    shadow_offset   = 2,
};

function button_internal:Init()
    self:SetMouseInputEnabled(true);
    self:SetImage("icon16/bomb.png");
end

function button_internal:Paint(w, h)
    --- \brief Draw button shadow.
    draw.RoundedBox(radius, self.shadow_offset, self.shadow_offset, w, h, self.shadow_color);

    if self:IsHovered() then
        local x, y = self:GetPos();
        DrawBlurRect(x, y, w, h);
    end
end

vgui.Register("button_internal", button_internal, "DImageButton");

local menu_button = {
    border_color    = Color(242, 196, 49),      --- \brief The border color.
    padding         = 4,                        --- \brief Outline width.
};

function menu_button:Init()
    self.button = vgui.Create("button_internal", self);
    self:SetMouseInputEnabled(true);
end

function menu_button:set_size(w, h)
    self:SetSize(w, h)
    self.button:SetPos(self.padding, self.padding)
    self.button:SetSize(w - 2 * self.padding, h - 2 * self.padding);
end

function menu_button:Paint(w, h)
    if self.button:IsHovered() then
        draw.RoundedBox(radius, 0, 0, w, h, self.border_color);
    end
end

vgui.Register("menu_button", menu_button, "DPanel");
