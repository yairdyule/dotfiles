-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

local modes = {
	normal = "n",
	insert = "i",
	visual = "v",
	visual_block = "x",
	term = "t",
	command_mode = "c",
}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap(modes.normal, "<C-h>", "<C-w>h", opts)
keymap(modes.normal, "<C-j>", "<C-w>j", opts)
keymap(modes.normal, "<C-k>", "<C-w>k", opts)
keymap(modes.normal, "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap(modes.normal, "<C-Up>", ":resize -2<CR>", opts)
keymap(modes.normal, "<C-Down>", ":resize +2<CR>", opts)
keymap(modes.normal, "<C-Left>", ":vertical resize -2<CR>", opts)
keymap(modes.normal, "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap(modes.normal, "<Tab>", ":bnext<CR>", opts)
keymap(modes.normal, "<S-Tab>", ":bprevious<CR>", opts)

-- Clear highlights
keymap(modes.normal, "<ESC>", "<cmd>nohlsearch<CR>", opts)

-- Empty line in normal
keymap(modes.normal, "zj", "o<Esc>k", opts)
keymap(modes.normal, "zk", "O<Esc>j", opts)

-- Line wrap
keymap(modes.normal, "<leader>lw", "gwl", opts)

-- Close buffers
keymap(modes.normal, "<leader>x", "<cmd>Bdelete!<CR>", opts)

-- Save buffer
keymap(modes.normal, "<C-s>", "<cmd>w<CR>", opts)

-- Better paste
keymap(modes.visual, "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap(modes.visual, "<", "<gv", opts)
keymap(modes.visual, ">", ">gv", opts)

-- Plugins --

-- Indent
keymap(modes.normal, "<leader>ti", ":IndentBlanklineToggle<CR>", opts)

-- NvimTree
keymap(modes.normal, "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap(modes.normal, "<leader>ff", ":Telescope find_files<CR>", opts)
keymap(modes.normal, "<leader>fw", ":Telescope live_grep<CR>", opts)
keymap(modes.normal, "<leader>fp", ":Telescope projects<CR>", opts)
keymap(modes.normal, "<leader>fb", ":Telescope buffers<CR>", opts)
keymap(modes.normal, "<leader>fd", ":Telescope diagnostics<CR>", opts)
keymap(modes.normal, "<leader>fr", ":Telescope lsp_references<CR>", opts)

-- Git
keymap(modes.normal, "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap(modes.normal, "<leader>dv", "<cmd>DiffviewOpen<CR>", opts)
keymap(modes.normal, "<leader>dc", "<cmd>DiffviewClose<CR>", opts)
keymap(modes.normal, "<leader>gn", "<cmd>Gitsigns next_hunk<CR><CR>", { silent = true })
keymap(modes.normal, "<leader>gp", "<cmd>Gitsigns prev_hunk<CR><CR>", { silent = true })

-- Comment
keymap(modes.normal, "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap(modes.normal, "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap(modes.normal, "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap(modes.normal, "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap(modes.normal, "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap(modes.normal, "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap(modes.normal, "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap(modes.normal, "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap(modes.normal, "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap(modes.normal, "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

keymap(modes.normal, "<leader>tz", "<cmd>TZAtaraxis<cr>", opts)

vim.cmd([[
nnoremap <leader> wg :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
]])
