return {
  "MeanderingProgrammer/render-markdown.nvim",

  ft = { "markdown" },

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.icons",
  },

  opts = {
    render_modes = { "n", "c", "t" },

    completions = {
      lsp = {
        enabled = true,
      },
    },
  },
}
