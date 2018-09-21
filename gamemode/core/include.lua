
--- \brief Handles file inclusion for server, client and shared files
--- automatically.
--- \p path The path to the file to include.
--- \p state The kind of inclusion that is taking place. Either jericho.client,
--- jericho.shared or jericho.server.
--- NOTE: This function can only be called in shared.lua
function jericho.include(path, state)
	jericho.assert(path, "jericho.include(path): path cannot be nil.");

	if state == jericho.server then
        jericho.print("including file \'" .. path .. "\' to server.");
        include(path);
    elseif state == jericho.shared then
        if SERVER then
            jericho.print("sending file  \'" .. path .. "\' to client.");
			AddCSLuaFile(path)
		end

        jericho.print("including file \'" .. path .. "\' to server.");
		include(path)
    elseif state == jericho.client then
        if SERVER then
            jericho.print("sending file  \'" .. path .. "\' to client.");
			AddCSLuaFile(path)
		else
            jericho.print("including file \'" .. path .. "\' to server.");
			include(path)
		end
    else
        jericho.error("invalid bitflag for jericho.include \'" .. state .. "\'.");
    end
end
