return {
  'hiphish/rainbow-delimiters.nvim',
  event = 'VeryLazy',
  config = function()
    local rainbow_delimiters = require 'rainbow-delimiters'

    ---@type rainbow_delimiters.config
    vim.g.rainbow_delimiters = {
      strategy = {
        [''] = rainbow_delimiters.strategy.global,
        -- vim = rainbow_delimiters.strategy.local,
        -- Example: javascript = rainbow_delimiters.strategy.local,
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
        -- Example: cpp = 'rainbow-parens', -- Assuming you have a 'rainbow-parens' query
      },
      priority = {
        [''] = 110,
        lua = 210,
        -- Example: cpp = 150,
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
      -- Disable specific filetypes (or plugin completely disable=true)
      -- disable = { 'markdown' },
    }
  end,
}
