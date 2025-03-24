return {
  'nvimtools/hydra.nvim',
  event = 'VeryLazy',
  config = function()
    local Hydra = require 'hydra'

    -- Window management hydra
    Hydra {
      name = 'Window Management',
      mode = 'n',
      body = '<C-w>',
      heads = {
        -- Window movement
        { 'h', '<C-w>h', { desc = 'Move left' } },
        { 'j', '<C-w>j', { desc = 'Move down' } },
        { 'k', '<C-w>k', { desc = 'Move up' } },
        { 'l', '<C-w>l', { desc = 'Move right' } },

        -- Window resizing
        { 'H', '<C-w>5<', { desc = 'Shrink window left' } },
        { 'J', '<C-w>5-', { desc = 'Shrink window down' } },
        { 'K', '<C-w>5+', { desc = 'Expand window up' } },
        { 'L', '<C-w>5>', { desc = 'Expand window right' } },

        -- Split management
        { 's', '<C-w>s', { desc = 'Split horizontally' } },
        { 'v', '<C-w>v', { desc = 'Split vertically' } },
        { 'c', '<C-w>c', { desc = 'Close window', exit = true } },
        { '=', '<C-w>=', { desc = 'Equalize windows' } },

        -- Exit
        { 'q', nil, { desc = 'Quit', exit = true } },
        { '<Esc>', nil, { desc = false, exit = true } },
      },
      config = {},
    }

    -- Buffer management hydra
    Hydra {
      name = 'Buffer Management',
      mode = 'n',
      body = '<leader>b',
      heads = {
        { 'h', '<cmd>bprevious<CR>', { desc = 'Previous buffer' } },
        { 'l', '<cmd>bnext<CR>', { desc = 'Next buffer' } },
        { 'd', '<cmd>bdelete<CR>', { desc = 'Delete buffer', exit = true } },
        { 'c', '<cmd>close<CR>', { desc = 'Close window', exit = true } },
        { 'q', nil, { desc = 'Quit', exit = true } },
        { '<Esc>', nil, { desc = false, exit = true } },
      },
      config = {
        color = 'pink',
      },
    }
  end,
}
