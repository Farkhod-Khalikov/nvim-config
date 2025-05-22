return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      -- Load default zenbones theme
      local custom_zenbones = require("lualine.themes.zenbones")
      local dark_gray = "#1a1a1a"

      -- Apply dark gray background to all theme sections
      for _, mode in pairs(custom_zenbones) do
        for _, section in pairs(mode) do
          section.bg = dark_gray
        end
      end

      -- Custom function for filename with ~ path and indicators
      local function full_path_filename()
        local filepath = vim.fn.expand('%:p')
        if filepath == '' then
          return '[No Name]'
        end
        local home = vim.env.HOME or ''
        -- Escape special characters for Lua pattern
        local home_pattern = home:gsub("([^%w])", "%%%1")
        filepath = filepath:gsub('^' .. home_pattern, '~')
        if vim.bo.modified then
          filepath = filepath .. ' ●'
        end
        if vim.bo.readonly or not vim.bo.modifiable then
          filepath = filepath .. ' 🔒'
        end
        return filepath
      end

      require("lualine").setup({
        options = {
          theme = custom_zenbones,
          icons_enabled = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          always_divide_middle = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { full_path_filename },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "tabs" },
          lualine_z = { "diagnostics" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { full_path_filename },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {},
      })
    end,
  },
}
