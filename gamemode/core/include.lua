
--- \brief Handles file inclusion for server, client and shared files
--- automatically.
--- \p path The path to the file to include.
--- \p state The kind of inclusion that is taking place. Either jericho.client,
--- jericho.shared or jericho.server.
--- NOTE: This function can only be called in shared.lua
function jericho.include(path, state)
	jericho.assert(path, "jericho.include(path): path cannot be nil.");

	if state == jericho.server then
        include(path)
    elseif state == jericho.shared then
        if SERVER then
			AddCSLuaFile(path)
		end

		include(path)
    elseif state == jericho.client then
        if SERVER then
			AddCSLuaFile(path)
		else
			include(path)
		end
    else
        jericho.error("invalid bitflag for jericho.include \'" .. state .. "\'.");
    end
end

--- \brief Handles directory inclusion for all files in the directory specified
--- for server, client and shared files.
--- \p dir The directory to include all files from.
--- \p state The kind of inclusion that is taking place. Either jericho.client,
--- jericho.shared or jericho.server.
--- NOTE: This function can only be called in shared.lua
--- NOTE: This function will include all files in the directory given.
function jericho.include_directory(dir, state)
    jericho.assert(dir, "jericho.include_directory(filename): directory cannot be nil.");

	for k, v in ipairs(file.Find("jericho/gamemode/" .. dir .. "/*.lua", "LUA")) do
        jericho.print("including \'" .. dir .. "/" .. v .. "\'");
		jericho.include(dir .. "/" .. v, state);
	end
end
