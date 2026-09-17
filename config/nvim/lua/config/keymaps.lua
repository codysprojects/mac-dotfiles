-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<ESC>", ":w<CR>", { desc = "Save" }) -- Saves when you press ESC
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All" }) -- Select All
vim.cmd([[ xnoremap <expr> p 'pgv"'.v:register.'y' ]]) -- Pasting no longer clobbers your clipboard
