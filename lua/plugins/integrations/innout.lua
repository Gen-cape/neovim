return {
  'ysmb-wtsg/in-and-out.nvim',
  keys = {
    {
      '<S-CR>',
      function()
        require('in-and-out').in_and_out()
      end,
      mode = 'i',
    },
  },
}
