return {
  'spectre',
  before = function()
    deps.add { source = 'nvim-pack/nvim-spectre', depends = {
      'nvim-lua/plenary.nvim',
    } }
  end,
  keys = {

    { '<leader>sc', '<cmd>lua require("spectre").toggle()<CR>', desc = 'Toggle Spectre', mode = 'n' },
    { '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', desc = 'Search current word', mode = 'n' },
    { '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', desc = 'Search current word', mode = 'v' },
    { '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', desc = 'Search on current file', mode = 'n' },
  },
  after = function()
    require('spectre').setup {}
  end,
}
