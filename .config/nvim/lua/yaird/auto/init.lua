local M = {}

M.isDay = function()
	local handle = io.popen("sunshine . --simple")
	local result = handle:read("*a")
	handle:close()

	if string.find(result, "day") then
		return true
	else
		return false
	end
end

return M
