-- Deafult vim.lsp keymaps:
-- "gra" (Normal and Visual mode) is mapped to vim.lsp.buf.code_action()
-- "gri" is mapped to vim.lsp.buf.implementation()
-- "grn" is mapped to vim.lsp.buf.rename()
-- "grr" is mapped to vim.lsp.buf.references()
-- "grt" is mapped to vim.lsp.buf.type_definition() same as gd 
-- "gO" is mapped to vim.lsp.buf.document_symbol()  
-- <C-w>w cycle throuw window  try {s
-- "i" <C-o>+command (in insert mode allows to executed single command and go back to insert mode imediately)
-- <C-i> go to next jumplist position (C-o opposite) :jumps
 
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- closing current buffer
keymap("n", "<leader>q", ":bd<CR>", { desc = "Quit Neovim" }) 
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" }) 
keymap("n", "<leader>e", ":Ex<CR>", { desc = "Open File Tree" })
-- keymap("n", "<leader>il", ":edit $MYVIMRC<CR>", { desc = "Edit init.lua" })

-- normal
keymap("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer"})
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer"})
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- visual
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })


-- lsp
keymap("n", "<leader>cd", function() -- [C]heck [D]iagnostics
  vim.diagnostic.open_float(nil, {
    focus = false,
    scope = "line",
  })
end, { desc = "Line diagnostics" })

keymap("n", "]d", function()
  vim.diagnostic.goto_next({float = true})
end)

keymap("n", "[d", function()
  vim.diagnostic.goto_prev({float = true})
end)

keymap("n", "<leader>cl", function () -- Check List of diagnostics
  vim.diagnostic.setloclist()
end)

