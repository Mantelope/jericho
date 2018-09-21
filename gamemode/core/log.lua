
local header = "[ JERICHO ] "

--- \brief Prints to output if jericho.debug is set to true.
--- NOTE: jericho.debug is located in cl_init.lua.
function jericho.print(message)
    if jericho.debug then
        print(header .. message);
    end
end

--- \brief Assertion override with jericho tag.
function jericho.assert(predicate, message)
    assert(predicate, header .. message or "");
end

--- \brief Error with jericho tag.
function jericho.error(message)
    error(header .. message);
end
