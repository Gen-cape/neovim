return {
  'neo-tree.nvim',

  before = function()
    deps.add {
      source = 'nvim-neo-tree/neo-tree.nvim',
      depends = {
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        'nvim-lua/plenary.nvim',
      },
    }
  end,

  keys = {
    { '<leader>op', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },

  after = function()
    require('neo-tree').setup {
      window = {
        position = 'right',
        width = 30,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            '.git',
          },
          never_show = {},
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
            ['H'] = 'toggle_hidden',
            ['/'] = 'fuzzy_finder',
            ['D'] = 'fuzzy_finder_directory',
            ['#'] = 'fuzzy_sorter', -- fuzzy sorting using the fzy algorithm
          },
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          --               -- the current file is changed while the tree is open.
          leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
      git_status = {
        symbols = {
          -- Change type
          added = '✚', -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = '', -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = '✖', -- this can only be used in the git_status source
          renamed = '󰁕', -- this can only be used in the git_status source
          -- Status type
          untracked = '',
          ignored = '',
          unstaged = '󰄱',
          staged = '',
          conflict = '',
        },
      },
    }
  end,
}
