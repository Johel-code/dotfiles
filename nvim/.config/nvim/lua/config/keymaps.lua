-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit Insert mode with jk" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file with jjw" })
-- vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close window" })
