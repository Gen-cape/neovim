return {
  'xiyaowong/transparent.nvim',
  lazy = false, -- Ensure the plugin is not lazy-loaded
  priority = 1000, -- High priority to load this before other plugins
  config = function()
    -- Basic setup
    require('transparent').setup {
      groups = { -- table: default groups
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {}, -- table: additional groups that should be cleared
      exclude_groups = {}, -- table: groups you don't want to clear
    }

    -- Optional: Setup for popular plugins
    -- Bufferline setup
    -- vim.g.transparent_groups = vim.list_extend(
    --   vim.g.transparent_groups or {},
    --   vim.tbl_map(function(v)
    --     return v.hl_group
    --   end, vim.tbl_values(require('bufferline.config').highlights))
    -- )

    -- Clear specific plugin highlights
    local transparent = require 'transparent'

    -- Uncomment these lines if you use these plugins
    -- transparent.clear_prefix('BufferLine')
    -- transparent.clear_prefix('NeoTree')
    -- transparent.clear_prefix('lualine')

    -- Optional: Create key mappings
    vim.keymap.set('n', '<leader>tt', ':TransparentToggle<CR>', { noremap = true, silent = true })
  end,
}
