local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("yaird.lsp.lsp-installer")
require("yaird.lsp.handlers").setup()
require("yaird.lsp.null-ls")
-- require("yaird.lsp.lsp-saga")
