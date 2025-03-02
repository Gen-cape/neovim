return {
  'phaazon/hop.nvim',
  before = function()
    deps.add { source = 'phaazon/hop.nvim' }
  end,
  keys = {
    { '<CR>', '<cmd> HopPattern<cr>', desc = 'Hop to pattern' },
    { '<CR>', '<cmd> HopPattern<cr>', desc = 'Hop to pattern', mode = 'v' },
    { '<leader>a', '<cmd> HopWord<cr>', desc = 'Hop to word', mode = 'n' },
    { '<leader>a', '<cmd> HopWord<cr>', desc = 'Hop to word', mode = 'v' },
    { '<leader>w', '<cmd> HopWord<cr>', desc = 'Hop to word', mode = 'n' },
    { '<leader>w', '<cmd> HopWord<cr>', desc = 'Hop to word', mode = 'v' },
  },
  after = function()
    require('hop').setup {}
  end,
}
