return {
  "nvim-treesitter/nvim-treesitter",
 event = { "BufReadPost", "BufNewFile" },
 branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install {
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "python",
      "html",
      "css",
      "json",
    }
  end,
}
