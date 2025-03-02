return {
  'in-and-out',
  before = function()
    deps.add { source = 'ysmb-wtsg/in-and-out.nvim' }
  end,
  keys = {
    {
      '<C-CR>',
      function()
        require('in-and-out').in_and_out()
      end,
      mode = 'i',
    },
  },
  event = 'VimEnter',
}
