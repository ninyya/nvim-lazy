local utils = require("config.utils")

vim.cmd("iab ## /--------------<CR><CR>--------------/")

if utils.has_work() then
  require("config.work.abbreviations")
end
