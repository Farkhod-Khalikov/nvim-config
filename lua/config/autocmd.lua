-- Visually highlight yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
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

-- local function close_floating_windows()
--   for _, win in ipairs(vim.api.nvim_list_wins()) do
--     local cfg = vim.api.nvim_win_get_config(win)
--     if cfg.relative ~= "" then
--       vim.api.nvim_win_close(win, true)
--     end
--   end
-- end
--
-- vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
--   callback = function()
--     if vim.bo.filetype == "netrw" then
--       close_floating_windows()
--     end
--   end,
-- })
