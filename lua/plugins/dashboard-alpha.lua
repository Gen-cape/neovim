return {
  'alpha-nvim',

  before = function()
    deps.add {
      source = 'goolord/alpha-nvim',
      depends = {
        'nvim-tree/nvim-web-devicons',
        'catppuccin/vim',
      },
    }
  end,

  keys = {},

  event = 'VimEnter',

  -- Configuration function
  after = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Require the terminal module
    require 'alpha.term'

    -- === Header Section ===
    dashboard.section.header.val = {
      [[                                           ]],
      [[                  Riptide                  ]],
    }

    -- === Terminal Section ===
    dashboard.section.terminal = {
      type = 'terminal',
      command = 'chafa ~/wall.png --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
      -- command = 'chafa ~/cat-kitty.gif --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
      width = 60,
      height = 17,
      opts = {
        position = 'center',
        redraw = true,
      },
      window_config = {
        height = 17,
      },
    }

    -- === Buttons Section ===
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', '<cmd>ene<CR>'),
      dashboard.button('f', '󰊄  Live grep', '<cmd>lua require("telescope.builtin").live_grep()<CR>'),
      dashboard.button('F', '󰈞  Find file', '<cmd>lua require("telescope.builtin").find_files()<CR>'),
      dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'),
    }

    -- Optional: Adjust button properties
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.width = 49
      button.opts.cursor = -2
    end

    -- === Layout Configuration ===
    dashboard.config.layout = {
      { type = 'padding', val = 2 },
      dashboard.section.terminal,
      { type = 'padding', val = 1 },
      dashboard.section.header,
      { type = 'padding', val = 2 },
      dashboard.section.buttons,
      { type = 'padding', val = 1 },
    }

    -- Setup Alpha with the configured dashboard
    alpha.setup(dashboard.config)
  end,
}
