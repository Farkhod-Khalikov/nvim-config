return {
  "nvim-treesitter/nvim-treesitter",
 event = { "BufReadPost", "BufNewFile" },
 branch = "main",
  lazy = false,
  priority = 1000,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install {
      "lua",
      "javascript",
      "typescript",
      "python",
      "html",
      "tsx",
      "bash",
      "css",
      "json",
    }
  end,
}
