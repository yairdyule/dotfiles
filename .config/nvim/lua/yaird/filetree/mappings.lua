local M = {}

M.setup_mappings = function(map, opts)
	map("n", "<C-n>", ":NvimTreeToggle<cr>", opts)
end

return M
