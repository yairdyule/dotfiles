local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
	"denols",
	"rust_analyzer",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("yaird.lsp.handlers").on_attach,
		capabilities = require("yaird.lsp.handlers").capabilities,
	}

	if server == "tsserver" then
		opts["root_dir"] = lspconfig.util.root_pattern("package.json")
	end

	if server == "denols" then
		opts["root_dir"] = lspconfig.util.root_pattern("deno.json", "deno.jsonc")
	end

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "yaird.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
