return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    -- Completion capabilities
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    -- TypeScript / JavaScript
    vim.lsp.config("ts_ls", {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
      capabilities = capabilities,
    })

    -- HTML
    vim.lsp.config("html", {
      capabilities = capabilities,
    })

    -- Python
    vim.lsp.config("pyright", {
      capabilities = capabilities,
    })

    -- Lua
    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
    })

    -- diable color highlightning
    vim.lsp.document_color.enable(false)

    -- Enable language servers
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("html")
    vim.lsp.enable("pyright")
    vim.lsp.enable("lua_ls")
  end,
}
