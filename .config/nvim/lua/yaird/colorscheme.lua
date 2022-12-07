local colorscheme = "base16-everforest"
-- local colorscheme = "onedark"

-- local colorscheme = "tokyonight-night"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- Alternatively, you can provide a table specifying your colors to the setup function.
-- require("base16-colorscheme").setup({
-- 	base00 = "#2a303c",
-- 	base01 = "#3B4252",
-- 	base02 = "#434C5E",
-- 	base03 = "#4C566A",
-- 	base04 = "#566074",
-- 	base05 = "#bfc5d0",
-- 	base06 = "#c7cdd8",
-- 	base07 = "#ced4df",
-- 	base08 = "#d57780",
-- 	base09 = "#e39a83",
-- 	base0A = "#EBCB8B",
-- 	base0B = "#A3BE8C",
-- 	base0C = "#97b7d7",
-- 	base0D = "#81A1C1",
-- 	base0E = "#B48EAD",
-- 	base0F = "#d57780",
-- })
