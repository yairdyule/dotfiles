local M = {}

M.setup_mappings = function(map, bufnr)
	local opts = { noremap = true, silent = true }
	map(bufnr, "n", "<leader>fm", ":Format<cr>", opts)
	map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	map(bufnr, "i", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	map(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	map(bufnr, "n", "<leader>ts", "<cmd>lua require 'telescope.builtin'.treesitter()<cr>", opts)
	map(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
	map(bufnr, "n", "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>', opts)
	map(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
	map(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])

  -- ts-lsp-utils
	map(bufnr, "n", "<leader>li", ":TSLspImportAll<CR>", opts)
	map(bufnr, "n", "<leader>lh", ":TSLspInlayHints<CR>", opts)
	map(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
	map(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
	map(bufnr, "n", "<leader>gi", ":TSLspImportAll<CR>", opts)
end

return M
