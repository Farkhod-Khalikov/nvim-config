
-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Create local alias
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General keymaps
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit Neovim" })
keymap("n", "<leader>pv", ":Ex<CR>", { desc = "Open File Tree" })
--keymap("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })
keymap("n", "<leader>il", ":edit $MYVIMRC<CR>", { desc = "Edit init.lua" })

-- Center cursor after jumps
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Move selected lines up/down in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
