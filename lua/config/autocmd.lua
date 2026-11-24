
-- Visually highlight yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Treesitter indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "typescript",
    "js",
    "ts",
    "lua",
    "typescriptreact",
    "javascript",
    "javascriptreact",
    "html",
    "css",
    "json",
  },
  callback = function()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

-- Automatically show diagnostics when cursor stops on a line
vim.api.nvim_create_autocmd("CursorHold", {
  desc = "Show diagnostics on cursor hold",
  group = vim.api.nvim_create_augroup("diagnostic-float", { clear = true }),
  callback = function()
    local line = vim.api.nvim_win_get_cursor(0)[1] - 1
    local diagnostics = vim.diagnostic.get(0, {
      lnum = line,
    })

    if #diagnostics > 0 then
      vim.diagnostic.open_float(nil, {
        focus = false,
        scope = "line",
        border = "rounded",
        source = "if_many",
      })
    end
  end,
})
