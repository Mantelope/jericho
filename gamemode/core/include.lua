
--- \brief Handles file inclusion for server, client and shared files
--- automatically.
--- NOTE: This function can only be called in shared.lua
function jericho.include(path)
	assert(filename, "[ JERICHO ] jericho.include(filename): Filename cannot be nil.");

	if SERVER then
		include(path);
	else
		AddCSLuaFile(path);
		include(path);
	end
end

--- \brief Handles directory inclusion for all files in the directory specified
--- for server, client and shared files.
--- NOTE: This function can only be called in shared.lua
function jericho.include_directory(dir)
    assert(filename, "[ JERICHO ] jericho.include_directory(filename): Filename cannot be nil.");

	for k, v in ipairs(file.Find("/gamemode/" .. directory .. "/*.lua", "LUA")) do
		nut.util.include(directory.."/"..v);
	end
end
