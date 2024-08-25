local function check_os(os_map)
	local current_os_name = vim.loop.os_uname().sysname

	for os_name, os_callback in pairs(os_map) do
		if os_name == current_os_name then
			return os_callback()
		end
	end

	if os_map.fallback then
		return os_map.fallback()
	end
end

return check_os
