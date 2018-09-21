
--- \brief Handles file inclusion for server, client and shared files
--- automatically.
--- \p path The path to the file to include.
--- NOTE: This function can only be called in shared.lua
function jericho.include(path)
	assert(path, "[ JERICHO ] jericho.include(filename): filename cannot be nil.");

	if SERVER then
		include(path);
	else
		AddCSLuaFile(path);
		include(path);
	end
end

--- \brief Handles directory inclusion for all files in the directory specified
--- for server, client and shared files.
--- \p dir The directory to include all files from.
--- NOTE: This function can only be called in shared.lua
--- NOTE: This function will include all files in the directory given.
function jericho.include_directory(dir)
    assert(dir, "[ JERICHO ] jericho.include_directory(filename): directory cannot be nil.");

	for k, v in ipairs(file.Find("jericho/gamemode/" .. dir .. "/*.lua", "LUA")) do
        jericho.print("including \'" .. dir .. "/" .. v .. "\'")
		jericho.include(dir.."/"..v);
	end
end
