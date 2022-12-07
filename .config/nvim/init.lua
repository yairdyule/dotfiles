require("yaird.options")
require("yaird.keymaps")
require("yaird.plugins")

local modules = {
	"transparent",
	"scroll",
	"autocommands",
	"colorscheme",
	"cmp",
	"telescope",
	"gitsigns",
	"treesitter",
	"autopairs",
	"comment",
	"nvim-tree",
	"bufferline",
	"highlights",
	"lualine",
	"toggleterm",
	"project",
	"impatient",
	"illuminate",
	-- "indentline",
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
