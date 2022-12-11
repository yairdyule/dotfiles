vim.api.nvim_create_autocmd({ "ColorScheme" }, {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLine", {})
		vim.api.nvim_set_hl(0, "Folded", {fg="#626880"})
	end,
})
