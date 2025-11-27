return {
  "rose-pine/neovim",
  dependencies = { "rktjmp/lush.nvim" },
  name = "rose-pine",
  priority = 1000,
  lazy = false,
  config = function()
    vim.opt.background = "dark"
    vim.cmd("colorscheme rose-pine")
    vim.api.nvim_set_hl(0, "Normal", {
      bg = "#000000",
      ctermbg = "NONE",
    })
    vim.api.nvim_set_hl(0, "StatusLine", {
      fg = "#ffffff",
      bg = "NONE",
      ctermfg = "white",
      ctermbg = "NONE",
    })
    vim.api.nvim_set_hl(0, "NonText", {
      fg = "#555555",
      bg = "#000000",
      ctermfg = "darkgray",
      ctermbg = "black",
    })
    vim.api.nvim_set_hl(0, "EndOfBuffer", {
      fg = "#000000",
      bg = "#000000",
      ctermfg = "black",
      ctermbg = "black",
    })
  end,
}
