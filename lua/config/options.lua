-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Navigeer tussen vensters/splits met Alt + pijltjestoetsen
vim.keymap.set("n", "<M-h>", "<C-w>h", { noremap = true, silent = true, desc = "Ga naar linkervenster" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { noremap = true, silent = true, desc = "Ga naar venster beneden" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { noremap = true, silent = true, desc = "Ga naar venster boven" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { noremap = true, silent = true, desc = "Ga naar rechtervenster" })
