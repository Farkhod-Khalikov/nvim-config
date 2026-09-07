return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    local cmp = require("cmp")

    cmp.setup({
      -- Do not automatically open completion
      completion = {
        autocomplete = false,
      },

      mapping = cmp.mapping.preset.insert({
        -- Manually trigger completion
        ["<C-x><C-o>"] = cmp.mapping.complete(),

        -- Navigate completion menu
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),

        -- Accept selected completion
        ["<C-y>"] = cmp.mapping.confirm({
          select = true,
        }),
      }),

      sources = {
        { name = "nvim_lsp" },
      },
    })
  end,
}
