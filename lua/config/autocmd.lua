-- Visually highlight yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

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

-- close floating window if you open up netrw
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  callback = function()
    if vim.bo.filetype == "netrw" then
      vim.diagnostic.hide()
    end
  end,
})
