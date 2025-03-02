return {
  'harpoon',
  before = function()
    deps.add { source = 'ThePrimeagen/harpoon', depends = {
      'nvim-lua/plenary.nvim',
    } }
  end,
  keys = {
    { '<leader>hj', '<cmd> Harpoon<cr>', desc = 'Harpoon' },
  },
  after = function()
    require('harpoon').setup {}
  end,
}
