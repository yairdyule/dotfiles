-- vim.cmd([[silent! exe 'set background='.$NVIM_COLORSCHEME_BG]])
-- vim.cmd([[silent! exe 'colorscheme '.$NVIM_COLORSCHEMErequire("impatient").enable_profile()]])

require("yaird.theme")
require("yaird.options") --'/lua/' is implied
require("yaird.mappings") -- as is 'init.lua'
require("yaird.plugins") -- ~= index.js

require("yaird.dashboard")
require("yaird.indent")
require("yaird.statusline")
require("yaird.scroll")
require("yaird.zen")
require("yaird.emmet")

require("yaird.cmp")
require("yaird.lsp")
require("yaird.telescope")
require("yaird.treesitter")

require("yaird.hop")
-- require("yaird.leap") --one day, my sweet
require("yaird.pairs")
require("yaird.comment")
require("yaird.gitsigns")
require("yaird.filetree")
require("yaird.bufferline")
-- require("yaird.dap")
-- require("yaird.toggleterm")
