local M = {}

M.setup_mappings = function(map)
	map("n", "f", ":HopChar1CurrentLineAC<cr>", {})
	map("n", "F", ":HopChar1CurrentLineBC<cr>", {})
	-- map("n", "/", ":HopPatternAC<cr>", {})
	-- map("n", "?", ":HopPatternBC<cr>", {})
end

return M
