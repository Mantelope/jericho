
local header = "[ JERICHO ] "

--- \brief Prints to output if jericho.debug is set to true.
--- NOTE: jericho.debug is located in cl_init.lua.
function jericho.print(...)
    if jericho.debug then
        local result = header;

        for key, val in ipairs(arg) do
            result = result .. tostring(val) .. "\t";
        end

        print(result .. "\n");
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
