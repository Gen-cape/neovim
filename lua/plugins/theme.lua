return {
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    priority = 1000,
    lazy = false,
    config = function()
      -- Set colorscheme
      vim.cmd [[colorscheme moonfly]]

      -- If you're using lualine, add this configuration
      -- require('lualine').setup {
      --   options = {
      --     theme = 'moonfly',
      --   },
      -- }

      -- Optional: Set some moonfly specific options
      vim.g.moonflyCursorColor = true
      vim.g.moonflyItalics = true
      vim.g.moonflyNormalFloat = true
      vim.g.moonflyTerminalColors = true
      vim.g.moonflyTransparent = false -- Set to true if you want transparent background
      vim.g.moonflyUndercurls = true
      vim.g.moonflyUnderlineMatchParen = true
      vim.g.moonflyWinSeparator = 2 -- Use thicker window separators
    end,
  },
}
