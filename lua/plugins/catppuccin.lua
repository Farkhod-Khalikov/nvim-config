return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",

      background = {
        dark = "mocha",
        light = "latte",
      },

      transparent_background = false,

      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        mini = {
          enabled = true,
        },
        bufferline = true,
        lualine = true,
        fzf = true,
        render_markdown = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
