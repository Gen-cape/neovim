return {
  'snacks',
  priority = 1000,
  lazy = false,
  event = 'VimEnter',

  before = function()
    deps.add {
      source = 'folke/snacks.nvim',
    }
  end,
  keys = {},

  after = function()
    require('snacks').setup {
      dashboard = {
        enabled = true,
        {
          sections = {
            {
              pane = 2,
              section = 'terminal',
              cmd = 'cowsay hi',
              height = 5,
              padding = 1,
            },
          },
        },
      },
    }
  end,
}
