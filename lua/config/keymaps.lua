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
end, { desc = "Line diagnostics [Check Diagnostics]" })

keymap("n", "]d", function()
  vim.diagnostic.jump({count = 1})
end)

keymap("n", "[d", function()
  vim.diagnostic.jump({count = -1})
end)

keymap("n", "<leader>cl", function () -- Check List of diagnostics
  vim.diagnostic.setloclist()
end)
keymap("n", "K", function()
  vim.lsp.buf.hover({
    border = "rounded",
    close_events = {
      "CursorMoved",
      "BufLeave",
      "WinLeave",
    },
  }, opts)
end)
keymap("n", "-", "<CMD>Oil<CR>", {
  desc = "Open parent directory",
})
