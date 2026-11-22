
return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",

  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
    { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help tags" },
    { "<leader>fG", "<cmd>FzfLua git_files<cr>", desc = "Git files" },
    { "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document Symbols" },
    { "<leader>fS", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", desc = "Workspace Symbols" },
    { "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
    { "<leader>fD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
  },

  config = function()
    require("fzf-lua").setup({
      winopts = {
        height = 0.35,
        width = 0.6,
        row = 0.3,
        col = 0.5,
      },

      fzf_opts = {
        ["--ansi"] = "",
        ["--prompt"] = "❯ ",
      },

      files = {
        previewer = true,
        fd_opts = [[
          --type f
          --hidden
          --exclude .git
          --exclude node_modules
          --exclude dist
          --exclude build
          --exclude .next
          --exclude coverage
        ]],
      },

      grep = {
        rg_opts = [[
          --column
          --line-number
          --no-heading
          --color=always
          --smart-case
          --hidden
          --glob '!**/.git/**'
          --glob '!**/node_modules/**'
          --glob '!**/dist/**'
          --glob '!**/build/**'
          --glob '!**/.next/**'
          --glob '!**/coverage/**'
        ]],
        previewer = true,
      },

      keymap = {
        fzf = {
          ["ctrl-a"] = "select-all",
          ["ctrl-d"] = "deselect-all",
        },
      },
    })
  end,
}
