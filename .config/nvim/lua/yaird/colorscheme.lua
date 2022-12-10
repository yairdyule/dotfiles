local colorscheme = "catppuccin-frappe"
local light_colorscheme = "catppuccin-latte"
local dark_colorscheme = "catppuccin-frappe"
--
if tonumber(os.date("%H")) > 12 then
	colorscheme = dark_colorscheme
else
	colorscheme = light_colorscheme
end
--
-- print(colorscheme)

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  print("FUCK!")
	return
end
