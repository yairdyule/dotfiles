local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end
local colors = {
	red = "#ca1243",
	grey = "#a0a1a7",
	black = "#383a42",
	white = "#f3f3f3",
	light_green = "#83a598",
	orange = "#fe8019",
	green = "#8ec07c",
}

local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.grey },
		b = { fg = colors.grey, bg = colors.black },
		c = { fg = colors.grey, bg = colors.black },
		z = { fg = colors.grey, bg = colors.black },
	},
	insert = { a = { fg = colors.black, bg = colors.light_green } },
	visual = { a = { fg = colors.black, bg = colors.orange } },
	replace = { a = { fg = colors.black, bg = colors.green } },
}

local empty = require("lualine.component"):extend()
function empty:draw(default_highlight)
	self.status = ""
	self.applied_separator = ""
	self:apply_highlights(default_highlight)
	self:apply_section_separators()
	return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
	for name, section in pairs(sections) do
		local left = name:sub(9, 10) < "x"
		for pos = 1, name ~= "lualine_z" and #section or #section - 1 do
			table.insert(section, pos * 2, { empty })
		end
		for id, comp in ipairs(section) do
			if type(comp) ~= "table" then
				comp = { comp }
				section[id] = comp
			end
			comp.separator = left and { right = "  " } or { left = "" }
		end
	end
	return sections
end

local function search_result()
	if vim.v.hlsearch == 0 then
		return ""
	end
	local last_search = vim.fn.getreg("/")
	if not last_search or last_search == "" then
		return ""
	end
	local searchcount = vim.fn.searchcount({ maxcount = 9999 })
	return last_search .. "(" .. searchcount.current .. "/" .. searchcount.total .. ")"
end

local function modified()
	if vim.bo.modified then
		return "+"
	elseif vim.bo.modifiable == false or vim.bo.readonly == true then
		return "-"
	end
	return ""
end

require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = process_sections({
		lualine_a = { "mode" },
		lualine_b = {
			"branch",
			"diff",
			{
				"diagnostics",
				source = { "nvim" },
				sections = { "error" },
				diagnostics_color = { error = { bg = colors.red, fg = colors.black } },
			},
			{
				"diagnostics",
				source = { "nvim" },
				sections = { "warn" },
				diagnostics_color = { warn = { bg = colors.orange, fg = colors.black } },
			},
			{ "filename", file_status = false, path = 1 },
			{ modified, color = { bg = colors.red } },
			{
				"%w",
				cond = function()
					return vim.wo.previewwindow
				end,
			},
			{
				"%r",
				cond = function()
					return vim.bo.readonly
				end,
			},
			{
				"%q",
				cond = function()
					return vim.bo.buftype == "quickfix"
				end,
			},
		},
		lualine_c = {},
		lualine_x = {},
		lualine_y = { search_result, "filetype" },
		lualine_z = { "%l:%c", "%p%%/%L" },
	}),
	inactive_sections = {
		lualine_c = { "%f %y %m" },
		lualine_x = {},
	},
})
-- local hide_in_width = function()
-- 	return vim.fn.winwidth(0) > 80
-- end
--
-- local diagnostics = {
-- 	"diagnostics",
-- 	sources = { "nvim_diagnostic" },
-- 	sections = { "error", "warn" },
-- 	symbols = { error = " ", warn = " " },
-- 	colored = false,
-- 	update_in_insert = false,
-- 	always_visible = true,
-- }
--
-- local diff = {
-- 	"diff",
-- 	colored = false,
-- 	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
--   cond = hide_in_width
-- }
--
-- local mode = {
-- 	"mode",
-- 	fmt = function(str)
-- 		return "-- " .. str .. " --"
-- 	end,
-- }
--
-- local filetype = {
-- 	"filetype",
-- 	icons_enabled = false,
-- 	icon = nil,
-- }
--
-- local branch = {
-- 	"branch",
-- 	icons_enabled = true,
-- 	icon = "",
-- }
--
-- local location = {
-- 	"location",
-- 	padding = 0,
-- }
--
-- -- cool function for progress
-- local progress = function()
-- 	local current_line = vim.fn.line(".")
-- 	local total_lines = vim.fn.line("$")
-- 	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
-- 	local line_ratio = current_line / total_lines
-- 	local index = math.ceil(line_ratio * #chars)
-- 	return chars[index]
-- end
--
-- local spaces = function()
-- 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
-- end
--
-- lualine.setup({
-- 	options = {
-- 		icons_enabled = true,
-- 		theme = "auto",
-- 		component_separators = { left = "", right = "" },
-- 		section_separators = { left = "", right = "" },
-- 		disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
-- 		always_divide_middle = true,
-- 	},
-- 	sections = {
-- 		lualine_a = { branch, diagnostics },
-- 		lualine_b = { mode },
-- 		lualine_c = {},
-- 		-- lualine_x = { "encoding", "fileformat", "filetype" },
-- 		lualine_x = { diff, spaces, "encoding", filetype },
-- 		lualine_y = { location },
-- 		lualine_z = { progress },
-- 	},
-- 	inactive_sections = {
-- 		lualine_a = {},
-- 		lualine_b = {},
-- 		lualine_c = { "filename" },
-- 		lualine_x = { "location" },
-- 		lualine_y = {},
-- 		lualine_z = {},
-- 	},
-- 	tabline = {},
-- 	extensions = {},
-- })
