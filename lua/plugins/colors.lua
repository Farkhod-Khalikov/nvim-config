return {
  "rose-pine/neovim",
  dependencies = { "rktjmp/lush.nvim" },
  name = "rose-pine",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd("colorscheme rose-pine")

    vim.api.nvim_set_hl(0, "Normal", {
      bg = "#000000",
      ctermbg = "NONE",
    })

    vim.api.nvim_set_hl(0, "FloatNormal", {
      bg = "#000000",
      ctermbg = "NONE",
    })

    vim.api.nvim_set_hl(0, "StatusLine", {
      fg = "#ffffff",
      bg = "NONE",
      ctermfg = "white",
      ctermbg = "NONE",
    })
    -- vim.api.nvim_set_hl(0, "NonText", {
    --   fg = "#555555",
    --   bg = "#000000",
    --   ctermfg = "darkgray",
    --   ctermbg = "black",
    -- })
    -- vim.api.nvim_set_hl(0, "EndOfBuffer", {
    --   fg = "#000000",
    --   bg = "#000000",
    --   ctermfg = "black",
    --   ctermbg = "black",
    -- })
    -- Line numbers 
     -- vim.api.nvim_set_hl(0, "LineNr", { fg = "#555555", bg = "#000000", ctermfg = "darkgray", ctermbg = "black", })
    -- Current line number 
     -- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bg = "#000000", ctermfg = "white", ctermbg = "black", }) 
    --Sign column (LSP errors/warnings/hints + Git signs)
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000", ctermbg = "black", })
  end,
}
