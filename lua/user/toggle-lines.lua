-- Function to toggle between different line numbering modes
local M = {}

M.change_line_numbering = function()
  local number = vim.wo.number
  local relativenumber = vim.wo.relativenumber

  if not number and not relativenumber then
    vim.wo.number = true
    vim.notify 'nu:1/rnu:0'
  elseif number and not relativenumber then
    vim.wo.relativenumber = true
    vim.notify 'nu:1/rnu:1'
  elseif number and relativenumber then
    vim.wo.number = false
    vim.notify 'nu:0/rnu:1'
  else
    vim.wo.relativenumber = false
    vim.notify 'nu:0/rnu:0'
  end
end

-- Set up the keymapping
vim.keymap.set('n', '<leader>0', M.change_line_numbering, {
  desc = 'Toggle line numbering mode',
  silent = true,
})

return M
