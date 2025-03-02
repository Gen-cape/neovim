return {
  'pounce',
  before = function()
    deps.add { source = 'rlane/pounce.nvim' }
  end,

  keys = {
    {
      's',
      function()
        require('pounce').pounce {}
      end,
      mode = 'n',
    },
    {
      'S',
      function()
        require('pounce').pounce { do_repeat = true }
      end,
      mode = 'n',
    },
    {
      's',
      function()
        require('pounce').pounce {}
      end,
      mode = 'x',
    },
    {
      'gs',
      function()
        require('pounce').pounce {}
      end,
      mode = 'o',
    },
    {
      'S',
      function()
        require('pounce').pounce { input = { reg = '/' } }
      end,
      mode = 'n',
    },
  },
  event = 'VimEnter',
  after = function()
    vim.cmd [[
      " highlight PounceMatch gui=bold guifg=#555555 guibg=#11dd11
      " highlight PounceGap gui=bold guifg=#555555 guibg=#00aa00
      " highlight PounceAccept gui=bold guifg=#111111 guibg=#de940b
      highlight PounceMatch gui=bold guifg=#aea9ac guibg=#aea9ac
      highlight PounceGap gui=bold guifg=#aea9ac guibg=#aea9ac
      highlight PounceAccept gui=bold guifg=#222222 guibg=#B2AD95
    ]]
  end,
}
