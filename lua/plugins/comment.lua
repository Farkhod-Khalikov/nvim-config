-- /nvim/lua/plugins/comment.lua
return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup()
  end,
  lazy = false, -- or true if you want it to load only on specific events
}
