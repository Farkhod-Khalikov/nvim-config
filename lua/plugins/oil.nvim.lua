return {
  "stevearc/oil.nvim",

  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
  },

  lazy = false,

  opts = {
    default_file_explorer = true,

    columns = {
      "icon",
    },

    view_options = {
      show_hidden = true,
    },
  },
}
