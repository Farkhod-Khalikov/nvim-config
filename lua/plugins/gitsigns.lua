return {
  "lewis6991/gitsigns.nvim",

  event = { "BufReadPre", "BufNewFile" },

  opts = {
    -- Git change indicators
    signs = {
      add          = { text = "┃" },
      change       = { text = "┃" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },

    -- Display signs for staged changes too
    signs_staged_enable = true,

    -- Display settings
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,

    current_line_blame = false,

    watch_gitdir = {
      enable = true,
      follow_files = true,
    },

    auto_attach = true,
  },
}
