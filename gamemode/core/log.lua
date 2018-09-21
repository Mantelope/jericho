
--- \brief Prints to output if jericho.debug is set to true.
--- NOTE: jericho.debug is located in cl_init.lua.
function jericho.print(...)
    if jericho.debug then
        local result = "[ JERICHO ]";

        for idx, key in ipairs(arg) do
            result = result .. tostring(key) .. "\t";
        end

        print(result .. "\n");
    end
end

--- \brief Assertion override with jericho tag.
function jericho.assert(predicate, message)
    assert(predicate, message or "");
end
