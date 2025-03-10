return {
  {
    'arne314/typstar',
    rev = 'f56e84331c7a6b6662dfda77a0c3d1d7a0b5ff59',
    config = function()
      require('typstar').setup {
        -- your typstar config goes here
      }
    end,
    dependencies = {
      'L3MON4D3/LuaSnip',
      'nvim-treesitter/nvim-treesitter',
      'kmarius/jsregexp',
    },
  },
  -- {
  --   'L3MON4D3/LuaSnip',
  --   config = function()
  --     require('luasnip').config.set_config { enable_autosnippets = true }
  --     require('luasnip.loaders.from_lua').lazy_load { paths = '../snippets' }
  --   end,
  -- },
}
