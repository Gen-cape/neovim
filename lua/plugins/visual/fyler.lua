return {
  'A7Lavinraj/fyler.nvim',
  dependencies = { 'nvim-mini/mini.icons' },
  branch = 'stable',
  opts = {},
  keys = {
    {
      '<leader>e',
      function()
        local win_opts = {
          kind = 'split_right_most',
          width = 35,
        }

        local cwd = os.getenv 'PWD'
        if cwd then
          win_opts.dir = cwd
        end

        require('fyler').toggle(win_opts)
      end,
      mode = 'n',
      desc = 'Toggle Fyler (right split) in current directory',
    },
  },
}
