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

-- Bind Alt+; to jump to the beginning of the line
vim.api.nvim_set_keymap("n", "<M-;>", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-;>", "<Esc>^i", { noremap = true, silent = true })

-- Bind Alt+' to jump to the end of the line
vim.api.nvim_set_keymap("n", "<M-'>", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-'>", "<Esc>A", { noremap = true, silent = true })

-- Move cursor to the beginning of the current or previous word and enter insert mode with Alt+.
vim.api.nvim_set_keymap("n", "<M-.>", "bi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-.>", "<Esc>bi", { noremap = true, silent = true })

-- Move cursor to the end of the current word and enter insert mode with Alt+/
vim.api.nvim_set_keymap("n", "<M-/>", "ea", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-/>", "<Esc>ea", { noremap = true, silent = true })

-- Set timeoutlen to 200 milliseconds
vim.o.timeoutlen = 200

-- Map Alt+r to save the current file in normal mode
vim.api.nvim_set_keymap("n", "<M-r>", ":w<CR>", { noremap = true, silent = true })

-- Map Alt+r to save the current file in insert mode
vim.api.nvim_set_keymap("i", "<M-r>", "<Esc>:w<CR>a", { noremap = true, silent = true })
