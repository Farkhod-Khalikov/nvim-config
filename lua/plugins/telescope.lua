return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fp", "<cmd>Telescope live_grep<cr>", desc = "Grep files" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
      { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Git files" },
      { "<leader>/",  "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search pattern in the current buffer" },
      { "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Find Symbols in File" }},
    },
    config = function()
      require("telescope").setup()
    end,
  },
}
