-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Never need single character in register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')

-- vim.keymap.set("n", "<leader>D", '"_D')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set("x", "<leader>p", '"_dP')

-- don't care:
vim.keymap.set("n", "Q", "<nop>")
