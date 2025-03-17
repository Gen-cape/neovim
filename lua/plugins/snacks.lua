return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      -- Enable all recommended plugins with default settings
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        sections = {
          { section = 'header' },
          {
            section = 'terminal',
            cmd = 'chafa ~/nvim.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
            height = 17,
            padding = 1,
          },
          { section = 'startup' },
          {
            pane = 2,
            { title = '', padding = 10 },
            { section = 'keys', gap = 1, padding = 5 },
          },
        },
        preset = {
          header = [[


 ______ ___________ _____ ___________ _____
 | ___ \_   _| ___ \_   _|_   _|  _  \  ___|
 | |_/ / | | | |_/ / | |   | | | | | | |__
 |    /  | | |  __/  | |   | | | | | |  __|
 | |\ \ _| |_| |     | |  _| |_| |/ /| |___
 \_| \_|\___/\_|     \_/  \___/|___/ \____/
                  ]],
        },
      },

      explorer = {
        enabled = true,
        diagnostics = false,
        diagnostics_open = false,
      },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      picker = {
        enabled = true,
        sources = {
          explorer = {
            layout = { layout = { position = 'right' } },
          },
        },
      },
      quickfile = { enabled = true },
      scope = { enabled = true },
      -- scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },

      -- Additional useful plugins enabled by default
      -- animate = { enabled = true },
      bufdelete = { enabled = true },
      debug = { enabled = true },
      dim = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      image = { enabled = true },
      layout = { enabled = true },
      -- lazygit = { enabled = true },
      notify = { enabled = true },
      profiler = { enabled = true },
      rename = { enabled = true },
      scratch = { enabled = true },
      terminal = { enabled = true },
      toggle = { enabled = true },
      win = { enabled = true },
      zen = { enabled = true },
    },
    -- Default keymaps as provided in the documentation
    keys = {
      -- Top Pickers & Explorer
      {
        '<leader><space>',
        function()
          require('snacks').picker.smart()
        end,
        desc = 'Smart Find Files',
      },
      {
        '<leader>,',
        function()
          require('snacks').picker.buffers()
        end,
        desc = 'Buffers',
      },
      {
        '<leader>/',
        function()
          require('snacks').picker.grep()
        end,
        desc = 'Grep',
      },
      {
        '<leader>:',
        function()
          require('snacks').picker.command_history()
        end,
        desc = 'Command History',
      },
      {
        '<leader>n',
        function()
          require('snacks').picker.notifications()
        end,
        desc = 'Notification History',
      },
      {
        '<leader>e',
        function()
          require('snacks').explorer()
        end,
        desc = 'File Explorer',
      },

      -- Additional essential keymaps
      {
        '<leader>z',
        function()
          require('snacks').zen()
        end,
        desc = 'Toggle Zen Mode',
      },
      {
        '<leader>bd',
        function()
          require('snacks').bufdelete()
        end,
        desc = 'Delete Buffer',
      },
      {
        '<leader>gg',
        function()
          require('snacks').lazygit()
        end,
        desc = 'Lazygit',
      },
      {
        '<c-/>',
        function()
          require('snacks').terminal()
        end,
        desc = 'Toggle Terminal',
      },
    },
    init = function()
      -- Set up debug globals after everything is loaded
      vim.api.nvim_create_autocmd('User', {
        pattern = 'VeryLazy',
        callback = function()
          -- Debug utilities
          _G.dd = function(...)
            require('snacks').debug.inspect(...)
          end
          _G.bt = function()
            require('snacks').debug.backtrace()
          end
          vim.print = _G.dd
        end,
      })
    end,
  },
}
