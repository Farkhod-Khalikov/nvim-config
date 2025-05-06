return {
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" }, -- required by zenbones
    name = "zenbones",
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.background = "dark" -- or "light" for light mode
      vim.cmd("colorscheme zenbones")
    end,
  },
}
