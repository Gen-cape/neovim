-- return { -- Linting
--   'mfussenegger/nvim-lint',
--   event = { 'BufReadPre', 'BufNewFile' },
--   config = function()
--     local lint = require 'lint'
--     lint.linters_by_ft = {
--       markdown = { 'vale' },
--     }
--
--     -- Create autocommand which carries out the actual linting
--     -- on the specified events.
--     local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
--     vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
--       group = lint_augroup,
--       callback = function()
--         require('lint').try_lint()
--       end,
--     })
--   end,
-- }
--
return {
  'folke/todo-comments.nvim',
  cmd = { 'TodoTrouble', 'TodoTelescope' },
  -- event = 'LazyFile',
  opts = {},
  -- stylua: ignore
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
    { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
    { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  },
}
