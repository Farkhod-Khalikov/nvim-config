return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "python",
        "html",
        "css",
        "json",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
