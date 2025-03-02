return {
  'copilot.vim',
  before = function()
    deps.add {
      source = 'github/copilot.vim',
      depends = {},
    }
  end,
  keys = {

    { '<leader><C-F>', '<cmd>Copilot panel<CR>', desc = 'copilot list complete' },
  },
  event = 'VimEnter',

  after = function()
    vim.api.nvim_set_keymap('i', '<M-CR>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
    vim.g.copilot_no_tab_map = true
  end,
}
