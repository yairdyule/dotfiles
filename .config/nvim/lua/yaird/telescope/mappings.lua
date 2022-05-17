local M = {}

M.setup_mappings = function(map, opts)
	-- Telescope
	map("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files({})<cr>", opts)
	map("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
	map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
	map("n", "<leader>di", "<cmd> lua require'telescope.builtin'.diagnostics()<cr>", opts)
	map("n", "<leader>gr", "<cmd> lua require'telescope.builtin'.lsp_references()<cr>", opts)
	map(
		"n",
		"<leader>ca",
		"<cmd> lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_cursor())<cr>",
		opts
	)
end

return M
