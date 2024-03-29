require("yaird.options")
require("yaird.keymaps")
require("yaird.plugins")

local modules = {
	"transparent",
	"scroll",
	"autocommands",
	"highlights",
	"colorscheme",
	"cmp",
	"telescope",
	"gitsigns",
	"treesitter",
	"autopairs",
	"comment",
	"nvim-tree",
	"bufferline",
	"lualine",
	"toggleterm",
	"project",
	"impatient",
	"illuminate",
	-- "indentline",
	"quickfix",
	"alpha",
	"lsp",
	"dap",
	"emmet",
	"drawing",
	"search",
}

for _, M in ipairs(modules) do
	require("yaird" .. "." .. M)
end
