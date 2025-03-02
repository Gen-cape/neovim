vim.g.loaded_matchparen = true

vim.cmd [[
    iab <expr> ddate strftime("%c")
  ]]

vim.cmd [[
    iab <expr> ttime strftime("%H:%M")
  ]]

vim.cmd [[
    iab <expr> ptime strftime("%l:%M %p")
  ]]

vim.cmd [[
    autocmd VimEnter * startinsert
    autocmd VimEnter * nested wincmd k
]]

vim.cmd [[
    inoremap <S-Tab> <C-V><Tab>
]]
