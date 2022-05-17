local M = {}

M.setup_mappings = function(map, opts)
	map("", "<Space>", "<Nop>", opts)
	vim.g.mapleader = " "
	vim.g.maplocalleader = " "

	-- Modes
	--  normal - "n"
	--  insert - "i"
	--  visual mode - "v"
	--  visual_block_mode - "x"
	--  term_mode - "t"
	--  command_mode - "c"

	--window nav
	map("n", "<C-h>", "<C-w>h", opts)
	map("n", "<C-j>", "<C-w>j", opts)
	map("n", "<C-k>", "<C-w>k", opts)
	map("n", "<C-l>", "<C-w>l", opts)

	--window resizing
	map("n", "<C-Up>", ":resize +2<CR>", opts)
	map("n", "<C-Down>", ":resize -2<CR>", opts)
	map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
	map("n", "<C-Right>", ":vertical resize +2<CR>", opts)
	map("n", "<leader>z", ":ZenMode <CR>", opts)

	--buffer nav
	map("n", "<S-l>", ":bnext<CR>", opts)
	map("n", "<S-h>", ":bprevious<CR>", opts)
	map("n", "<leader>x", ":BufDel<CR>", opts)

	-- visual
	map("v", "<", "<gv", opts) -- stay in indent mode
	map("v", ">", ">gv", opts)
	map("v", "p", '"_dP', opts)

	map("x", "J", ":move '>+1<CR>gv-gv", opts) --move text up/down
	map("x", "K", ":move '<-2<CR>gv-gv", opts)

	map("n", ";", ":", opts) --god mapping
	map("n", "<C-s>", ":w<cr>", opts)
	map("n", "<esc>", ":noh<cr>", opts)
end

return M
