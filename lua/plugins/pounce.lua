return {
  'rlane/pounce.nvim',
  event = 'VeryLazy',
  keys = {
    -- { 'n', '<A-f', '<cmd>Pounce<CR>' },
    { '<A-e>', mode = { 'n', 'x', 'o' }, '<cmd>Pounce<CR>', desc = 'Flash' },

    -- { 'n', 'S', '<cmd>PounceRepeat<CR>' },
    -- { 'x', 's', '<cmd>Pounce<CR>' },
    -- { 'o', 'gs', '<cmd>Pounce<CR>' },
    -- { 'n', 'S', ':Pounce <C-r>/<cr>' },
  },

  config = function()
    require('pounce').setup()
  end,
}
