local utils = require("customs.utils")

vim.cmd("iab ## /--------------<CR><CR>--------------/")

if utils.has_work() then
	require("customs.work.abbreviations")
end
