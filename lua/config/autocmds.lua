-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")


-- Set filetype to 'powershell' for .ps1 files (if not automatically detected)
vim.cmd([[
  autocmd BufRead,BufNewFile *.ps1 set filetype=powershell
]])

-- Set indentation preferences for PowerShell files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "powershell",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})
