local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettierd,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.isort,
		formatting.stylua,
		formatting.latexindent,
		formatting.rustfmt,
		formatting.google_java_format,
		diagnostics.flake8,
		diagnostics.chktex,
		code_actions.proselint,
	},
})
