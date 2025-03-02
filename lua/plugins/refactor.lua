return {
  'refactoring',
  before = function()
    deps.add { source = 'ThePrimeagen/refactoring.nvim', depends = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    } }
  end,
  event = 'VimEnter',
  keys = {

    { '<leader>te', desc = ':Refactor extract ', mode = 'x' },
    { '<leader>tf', desc = ':Refactor extract_to_file ', mode = 'x' },
    { '<leader>tv', desc = ':Refactor extract_var ', mode = 'x' },
    { '<leader>ti', desc = ':Refactor inline_var', mode = { 'n', 'x' } },
    { '<leader>tI', desc = ':Refactor inline_func', mode = 'n' },
    { '<leader>tb', desc = ':Refactor extract_block', mode = 'n' },
    { '<leader>tbf', desc = ':Refactor extract_block_to_file', mode = 'n' },
  },
  after = function()
    require('refactoring').setup {}
  end,
}
