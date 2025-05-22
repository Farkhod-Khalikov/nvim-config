return {
  "mcchrish/zenbones.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  name = "zenbones",
  priority = 1000,
  lazy = false,
  config = function()
    vim.opt.background = "dark"

    -- removing italics cause I hate em
    vim.g.rosebones = {
      italic_comments = false,
      italic_keywords = false,
      italic_functions = false,
      italic_variables = false,
    }

    vim.cmd("colorscheme rosebones") -- Similar to just running terminal command with :colorscheme etc...

    -- Optional: Override background to pure black
    vim.cmd([[
      highlight Normal guibg=#000000 ctermbg=NONE
      highlight NormalNC guibg=#000000 ctermbg=NONE
      highlight VertSplit guibg=#000000 ctermbg=NONE
      highlight SignColumn guibg=#000000 ctermbg=NONE
      highlight LineNr guibg=#000000 ctermbg=NONE
      highlight StatusLine guibg=#000000 ctermbg=NONE
      highlight EndOfBuffer guibg=#000000 ctermbg=NONE
    ]])
  end,
}
