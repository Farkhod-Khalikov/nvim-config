return {
  "nvim-lualine/lualine.nvim",

  dependencies = {
    "lewis6991/gitsigns.nvim",
  },

  event = "VeryLazy",

  config = function()
    require("gitsigns").setup()

    local function cwd()
      local dir

      if vim.bo.filetype == "oil" then
        dir = require("oil").get_current_dir(0)
      else
        dir = vim.fn.getcwd()
      end

      return dir and vim.fn.fnamemodify(dir, ":~") or ""
    end

    local function filename()
      if vim.bo.filetype == "oil" then
        return ""
      end

      return vim.fn.expand("%:t")
    end

    require("lualine").setup({
      options = {
        theme = "auto",
        icons_enabled = false,
        component_separators = "",
        section_separators = "",
        globalstatus = true,
        disabled_filetypes = {
          statusline = { "dashboard" },
        },
      },

      sections = {
        lualine_a = {
          {
            "mode",
          },
        },

        lualine_b = {
          cwd,
        },

        lualine_c = {
          filename,
        },

        lualine_x = {
          "branch",

          {
            "diff",
            symbols = {
              added = "+",
              modified = "~",
              removed = "-",
            },
          },

          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = {
              error = "E:",
              warn = "W:",
              info = "I:",
              hint = "H:",
            },
          },
        },

        lualine_y = {
          "progress",
        },

        lualine_z = {
          "location",
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { cwd, filename },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
    })
  end,
}
