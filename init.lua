require("config.opts")
require("config.lazy")
require("config.keymaps")
require("config.autocmd")

-- things to add:
-- 1. treesitter
-- 2. configure/learn telescope for searching, find and replace, + macros 
-- 3. harpoon 

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- configure lsp (the lsp shoulbe installed On the machine manually like: "npm install -g typescript-language-server") 
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  capabilities = capabilities,
})

-- enable it 
vim.lsp.enable('ts_ls')
