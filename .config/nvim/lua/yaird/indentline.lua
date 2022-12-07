local status_ok, indent_blankline = pcall(require, "indent_blankline")

local use = false

if not status_ok or not use then
	return
end

if use == true then
	indent_blankline.setup({
		char = "▏",
		show_trailing_blankline_indent = false,
		show_first_indent_level = false,
		use_treesitter = true,
		show_current_context = true,
		buftype_exclude = { "terminal", "nofile" },
		filetype_exclude = {
			"help",
			"packer",
			"NvimTree",
		},
	})
end
