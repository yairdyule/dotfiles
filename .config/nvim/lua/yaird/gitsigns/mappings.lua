local M = {}

M.setup_mappings = function(map, opts)
	map("n", "dT", ":Gitsigns diffthis<cr>", opts)
	map("n", "ga", ":Gitsigns stage_hunk<cr>", opts)
	map("n", "gu", ":Gitsigns undo_stage_hunk<cr>", opts)
end

return M
