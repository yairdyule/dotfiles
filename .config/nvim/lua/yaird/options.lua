local o = vim.opt

o.backup = false -- no backup
o.clipboard = "unnamedplus" -- allows nvim to access system clipboard
o.cmdheight = 2 -- height of nvim cmdline
o.completeopt = { "menuone", "noselect" }
o.conceallevel = 0 -- don't conceal things like `` in .md files
o.fileencoding = "utf-8"
o.hlsearch = true -- highlight all matches on previous search pattern
o.ignorecase = true -- ignore case in search patterns
o.smartcase = true -- unless there's casing in the pattern
o.mouse = "a"
o.pumheight = 12 -- height of popup menu
o.showmode = false -- hide 'normal', 'insert', etc
o.showtabline = 1 -- show tabs if more than one window open
o.smartindent = true --auto indent when smart
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.termguicolors = true
o.undofile = true
o.updatetime = 300

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.cursorline = true
o.cursorlineopt = "number"
o.number = true
o.relativenumber = true
o.numberwidth = 4
o.signcolumn = "yes"

o.wrap = false
o.scrolloff = 8
o.sidescrolloff = 4
