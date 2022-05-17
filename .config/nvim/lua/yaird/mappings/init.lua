local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

require("yaird.mappings.mappings").setup_mappings(map, opts) --meta
require("yaird.filetree.mappings").setup_mappings(map, opts)
require("yaird.telescope.mappings").setup_mappings(map, opts)
require("yaird.gitsigns.mappings").setup_mappings(map, opts)
require("yaird.hop.mappings").setup_mappings(map)
