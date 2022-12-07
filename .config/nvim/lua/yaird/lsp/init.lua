local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("yaird.lsp.mason")
require("yaird.lsp.handlers").setup()
require("yaird.lsp.null-ls")
