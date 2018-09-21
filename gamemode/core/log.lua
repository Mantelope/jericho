
local settings = {
    tag = "[ JERICHO ] ",

    tag_color   = Color(24, 154, 211),
    error_color = Color(255, 148, 148),
}

--- \brief Prints to output if jericho.debug is set to true.
--- NOTE: jericho.debug is located in cl_init.lua.
function jericho.print(message)
    if jericho.debug then
        MsgC(settings.tag_color, settings.tag);
        print(message);
    end
end

--- \brief Assertion override with jericho tag.
function jericho.assert(predicate, message)
    assert(predicate, settings.tag .. message or "");
end

--- \brief Error with jericho tag.
function jericho.error(message)
    error(settings.tag .. message);
end
