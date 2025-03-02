return { -- "gc" to comment visual regions/lines
  'Comment.nvim',
  before = function()
    deps.add { source = 'numToStr/Comment.nvim' }
  end,
  after = function()
    require('Comment').setup()
  end,
}
