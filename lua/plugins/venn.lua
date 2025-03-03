return {
  'jbyuki/venn.nvim',
  event = 'VeryLazy',
  config = function()
    -- Define toggle_venn in the global namespace (_G)
    _G.toggle_venn = function()
      local venn_enabled = vim.inspect(vim.b.venn_enabled)
      if venn_enabled == 'nil' then
        vim.b.venn_enabled = true
        vim.cmd [[setlocal ve=all]]

        -- Draw lines with HJKL
        vim.api.nvim_buf_set_keymap(0, 'n', 'J', '<C-v>j:VBox<CR>', { noremap = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<C-v>k:VBox<CR>', { noremap = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'L', '<C-v>l:VBox<CR>', { noremap = true })
        vim.api.nvim_buf_set_keymap(0, 'n', 'H', '<C-v>h:VBox<CR>', { noremap = true })

        -- Draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, 'v', 'f', ':VBox<CR>', { noremap = true })

        -- Optional: Create a Hydra for more drawing options
        local Hydra = require 'hydra'
        Hydra {
          name = 'Draw Diagram',
          mode = 'n',
          body = '<leader>v',
          heads = {
            { 'H', '<C-v>h:VBox<CR>', { desc = 'Draw Left' } },
            { 'J', '<C-v>j:VBox<CR>', { desc = 'Draw Down' } },
            { 'K', '<C-v>k:VBox<CR>', { desc = 'Draw Up' } },
            { 'L', '<C-v>l:VBox<CR>', { desc = 'Draw Right' } },
            { 'f', '<C-v>:VBox<CR>', { desc = 'Draw Box', mode = 'v' } },
            { 'q', nil, { desc = 'Quit', exit = true } },
            { '<Esc>', nil, { desc = false, exit = true } },
          },
          config = {
            color = 'pink',
            invoke_on_body = true,
          },
        }
      else
        vim.cmd [[setlocal ve=]]
        vim.api.nvim_buf_del_keymap(0, 'n', 'J')
        vim.api.nvim_buf_del_keymap(0, 'n', 'K')
        vim.api.nvim_buf_del_keymap(0, 'n', 'L')
        vim.api.nvim_buf_del_keymap(0, 'n', 'H')
        vim.api.nvim_buf_del_keymap(0, 'v', 'f')
        vim.b.venn_enabled = nil
      end
    end

    -- Set up the keymap
    vim.keymap.set('n', '<leader>v', ':lua toggle_venn()<CR>', { noremap = true })
  end,
}
