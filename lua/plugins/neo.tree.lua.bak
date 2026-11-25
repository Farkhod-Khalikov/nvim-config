return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-mini/mini.icons",
  },

  cmd = "Neotree",

  keys = {
    {
      "<leader>pt",
      "<cmd>Neotree toggle left<cr>",
      desc = "Toggle project tree",
    },
  },

  opts = {
    close_if_last_window = true,

    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },

      follow_current_file = {
        enabled = true,
      },

      use_libuv_file_watcher = true,
    },

    window = {
      width = 25,
      mappings = {
        ["<space>"] = "none",
      },
    },
  },
}
