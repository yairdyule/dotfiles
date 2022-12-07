local use = false

if not use then
	return
end

require("transparent").setup({
	enable = true, -- boolean: enable transparent
	extra_groups = "all",
	exclude = { "IncSearch", "Search", "Visual" }, -- table: groups you don't want to clear
})
