return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",         -- load when command is used
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
    { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help tags" },
    { "<leader>fG", "<cmd>FzfLua git_files<cr>", desc = "Git files" },
    { "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>", desc ="Document Symbols/Find Symbols in the files"},
    { "<leader>fS", "<cmd>FzfLua lsp_live_workspace_symbols<cr>", desc ="Workspace Symbols/Find Symbols in the project"},
    { "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", desc = "LSP errors/hints (current buffer) Find Diagnostics" },
    { "<leader>fD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "LSP diagnostics (workspace)" },
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
      },
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case",
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
