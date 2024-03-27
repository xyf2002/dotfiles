-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<A-Right>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Left>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-z>", "u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-q>",
  ":if tabpagenr('$') > 1 | tabclose | else | quit | endif<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "so", ":only<CR>", { noremap = true, silent = true })
