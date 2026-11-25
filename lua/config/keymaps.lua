
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- general
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>e", "<cmd>Ex<cr>", { desc = "Open File Tree" })
keymap("n", "<leader>il", "<cmd>edit $MYVIMRC<cr>", { desc = "Edit init.lua" })

-- search
keymap("n", "<leader>nh", "<cmd>nohlsearch<cr>", {
  desc = "Clear search highlights",
})

-- splits
keymap("n", "<leader>sh", "<cmd>split<cr>", {
  desc = "Horizontal split",
})

keymap("n", "<leader>sv", "<cmd>vsplit<cr>", {
  desc = "Vertical split",
})

keymap("n", "<leader>sx", "<cmd>close<cr>", {
  desc = "Close current split",
})

-- split navigation
-- keymap("n", "<leader>h", "<C-w>h", { desc = "Move to left split" })
-- keymap("n", "<leader>j", "<C-w>j", { desc = "Move to bottom split" })
-- keymap("n", "<leader>k", "<C-w>k", { desc = "Move to top split" })
-- keymap("n", "<leader>l", "<C-w>l", { desc = "Move to right split" })

-- buffer navigation
-- keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", {
--   desc = "Next buffer",
-- })
--
-- keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", {
--   desc = "Previous buffer",
-- })

keymap("n", "<S-l>", "<cmd>bn<cr>", {
  desc = "Next buffer",
})

keymap("n", "<S-h>", "<cmd>bp<cr>", {
  desc = "Previous buffer",
})

keymap("n", "<leader>bd", "<cmd>bdelete<cr>", {
  desc = "Close buffer",
})

-- scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- visual mode: move selected lines
keymap("v", "J", ":m '>+1<cr>gv=gv", {
  desc = "Move line down",
})

keymap("v", "K", ":m '<-2<cr>gv=gv", {
  desc = "Move line up",
})

-- LSP diagnostics
keymap("n", "<leader>cd", function()
  vim.diagnostic.open_float(nil, {
    focus = false,
    scope = "line",
  })
end, { desc = "Show line diagnostics" })

keymap("n", "]d", function()
  vim.diagnostic.jump({ count = 1 })
end, { desc = "Next diagnostic" })

keymap("n", "[d", function()
  vim.diagnostic.jump({ count = -1 })
end, { desc = "Previous diagnostic" })

keymap("n", "<leader>cl", function()
  vim.diagnostic.setloclist()
end, { desc = "Diagnostic location list" })

-- LSP hover
keymap("n", "K", function()
  vim.lsp.buf.hover({
    -- border = "single",
    close_events = {
      "CursorMoved",
      "BufLeave",
      "WinLeave",
    },
  })
end, { desc = "LSP hover" })

-- Oil file explorer
keymap("n", "<leader>pe", "<cmd>Oil<cr>", {
  desc = "Open parent directory",
})
-- Git hunks navigation
keymap("n", "]g", function()
  require("gitsigns").nav_hunk("next")
end, { desc = "Next Git change" })

keymap("n", "[g", function()
  require("gitsigns").nav_hunk("prev")
end, { desc = "Previous Git change" })


-- formatting
keymap("n", "<leader>pf", function()
  require("conform").format({
    async = true,
    lsp_format = "fallback",
  })
end, { desc = "Format current file" })
