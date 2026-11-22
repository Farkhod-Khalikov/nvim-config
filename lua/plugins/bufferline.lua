
return {
  "akinsho/bufferline.nvim",

  version = "*",

  dependencies = {
    {
      "nvim-mini/mini.icons",
      opts = {},
    },
  },

  event = "VeryLazy",

  opts = {
    options = {
      mode = "buffers",

      numbers = "none",

      -- Filetype icons
      show_buffer_icons = true,
      color_icons = false,

      get_element_icon = function(element)
        return MiniIcons.get("filetype", element.filetype)
      end,

      -- LSP diagnostics
      diagnostics = "nvim_lsp",
      diagnostics_update_on_event = true,

      diagnostics_indicator = function(_, _, diagnostics_dict)
        local result = {}

        if diagnostics_dict.error and diagnostics_dict.error > 0 then
          table.insert(result, "E:" .. diagnostics_dict.error)
        end

        if diagnostics_dict.warning and diagnostics_dict.warning > 0 then
          table.insert(result, "W:" .. diagnostics_dict.warning)
        end

        if diagnostics_dict.info and diagnostics_dict.info > 0 then
          table.insert(result, "I:" .. diagnostics_dict.info)
        end

        return " " .. table.concat(result, " ")
      end,

      -- Remove close icons
      show_buffer_close_icons = false,
      show_close_icon = false,

      -- Appearance
      separator_style = "thin",
      indicator = {
        -- style = "underline",
      },

      max_name_length = 25,
      max_prefix_length = 12,
      truncate_names = true,
      tab_size = 14,

      always_show_bufferline = true,

      offsets = {
        {
          filetype = "oil",
          text = "File Explorer",
          highlight = "Directory",
          separator = true,
        },
      },
    },
  },
}
