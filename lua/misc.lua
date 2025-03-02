--vim herasy
vim.opt.encoding = "utf-8"
vim.opt.mouse = "a"
vim.cmd.aunmenu({ "PopUp.How-to\\ disable\\ mouse" })
vim.cmd.aunmenu({ "PopUp.-1-" })

--indenting

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cmdheight = 1
vim.opt.updatetime = 50
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.signcolumn = "yes:2"
vim.opt.ai = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.visualbell = false
vim.opt.errorbells = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.spell = true
vim.opt.spelllang = "en_us"

vim.opt.scrolloff = 10
vim.g.cursorline_timeout = 0

vim.opt.shortmess:append({ I = true, c = true })

vim.g.mapleader = " "

--theming
vim.opt.termguicolors = true

vim.g.moonflyCursorColor = true
vim.g.moonflyNormalFloat = true
vim.g.moonflyTerminalColors = true
vim.g.moonflyTransparent = true
vim.g.moonflyUndercurls = true
vim.g.moonflyUnderlineMatchParen = true
vim.g.moonflyVirtualTextColor = true
vim.cmd.colorscheme("moonfly")

-- stop hiding double quotes in json files
vim.g.indentLine_setConceal = 0


-- Random tweaks
--
--
--
-- Add a blinking cursor in certain modes.
vim.opt.guicursor = {
  'n-c-v:block-Cursor',
  'i-ci-ve-r-o:blinkwait250-blinkon250-blinkoff250-Cursor',
  'i-ci-ve:ver25-Cursor',
  'r-cr-o:hor20-Cursor',
}





vim.cmd.amenu([[PopUp.Inspect <Cmd>Inspect<CR>]])
vim.cmd.amenu([[PopUp.Telescope <Cmd>Telescope<CR>]])
vim.cmd.amenu([[PopUp.Code\ action <Cmd>lua vim.lsp.buf.code_action()<CR>]])
vim.cmd.amenu([[PopUp.LSP\ Hover <Cmd>lua vim.lsp.buf.hover()<CR>]])



local opt = vim.opt
local options = {
  showmode = false,                         -- disable the -- STATUS -- line
  showtabline = 0,                          -- never show the tabline
  startofline = true,                       -- motions like "G" also move to the first char
  virtualedit = 'block',                    -- visual-block mode can select beyond end of line
  showmatch = true,                         -- when closing a bracket, briefly flash the matching one
  matchtime = 1,                            -- duration of that flashing n deci-seconds
  signcolumn = 'yes:1',                     -- static width
  report = 9001,                            -- disable "x more/fewer lines" messages
  diffopt = opt.diffopt:append('vertical'), -- diff mode: vertical splits
  backspace = { 'indent', 'eol', 'start' }, -- backspace through everything in insert mode
  hidden = true,                            -- Enable background buffers
  history = 100,                            -- Remember N lines in history
  lazyredraw = false,                       -- Faster scrolling if enabled, breaks noice
  synmaxcol = 240,                          -- Max column for syntax highlight
  updatetime = 250,                         -- ms to wait for trigger an event

  -- If 0, move cursor line will not scroll window.
  -- If 999, cursor line will always be in middle of window.
  scrolloff = 0,
}

-- iterate over the options table and set the options
-- for each key = value pair
for key, value in pairs(options) do
  opt[key] = value
end

if not vim.g.vscode then
  opt.timeoutlen = 300 -- Time out on mappings
end

-- Don't auto-comment new lines automatically
-- that happens when you press enter at the end
-- of a comment line, and comments the next line
-- That's annoying and we don't want it!
-- don't continue comments automagically
-- https://neovim.io/doc/user/options.html#'formatoptions'
opt.formatoptions:remove('c')
opt.formatoptions:remove('r')
opt.formatoptions:remove('o')




-- luacheck: ignore
vim.g.markdown_fenced_languages = { 'shell=bash' }

-- local file_syntax_map = {
--   { pattern = '*.rasi',     syntax = 'scss' },
--   { pattern = 'flake.lock', syntax = 'json' },
--   { pattern = '*.ignore',   syntax = 'gitignore' }, -- also ignore for fd/ripgrep
--   { pattern = '*.ojs',      syntax = 'javascript' },
--   { pattern = '*.astro',    syntax = 'astro' },
--   { pattern = '*.mdx',      syntax = 'mdx' }
-- }
--
-- for _, elem in ipairs(file_syntax_map) do
--   vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--     pattern = elem.pattern,
--     command = 'set syntax=' .. elem.syntax,
--   })
-- end



-- luacheck: ignore
-- alias for vim.api.nvim_create_autocmd
local create_autocmd = vim.api.nvim_create_autocmd
-- alias for vim.api.nvim_create_augroup
local create_augroup = vim.api.nvim_create_augroup

-- create_autocmd('BufWritePre', {
--   pattern = { '/tmp/*', 'COMMIT_EDITMSG', 'MERGE_MSG', '*.tmp', '*.bak' },
--   callback = function()
--     vim.opt_local.undofile = false
--   end,
-- })

-- Remove whitespaces on save
-- this is normally handled by the formatter
-- but this should help when the formatter
-- is not working or has timed out
-- create_autocmd('BufWritePre', {
--   pattern = '',
--   command = ':%s/\\s\\+$//e',
-- })

-- Disable line wrapping & spell checking
-- for the terminal buffer
create_autocmd({ 'FileType' }, {
  pattern = { 'toggleterm' },
  callback = function()
    vim.opt_local.wrap = false
    vim.opt_local.spell = false
  end,
})

-- Enable spell checking & line wrapping
-- for git commit messages
create_autocmd({ 'FileType' }, {
  pattern = { 'gitcommit' },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Highlight yank after yanking
local highlight_group = create_augroup('YankHighlight', { clear = true })
create_autocmd({ 'TextYankPost' }, {
  pattern = { '*' },
  group = highlight_group,
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
  end,
})

-- Close terminal window if process exists with code 0
create_autocmd('TermClose', {
  callback = function()
    if not vim.b.no_auto_quit then
      vim.defer_fn(function()
        if vim.api.nvim_get_current_line() == '[Process exited 0]' then
          vim.api.nvim_buf_delete(0, { force = true })
        end
      end, 50)
    end
  end,
})

-- Start insert mode automatically
-- when editing a Git commit message
create_augroup('AutoInsert', { clear = true })
create_autocmd('FileType', {
  group = 'AutoInsert',
  pattern = 'gitcommit',
  command = 'startinsert',
})

-- Disable cursorline in insert mode
create_augroup('CursorLine', { clear = true })
create_autocmd({ 'InsertLeave', 'WinEnter' }, {
  group = 'CursorLine',
  callback = function()
    vim.wo.cursorline = true
  end,
})

create_autocmd({ 'InsertEnter', 'WinLeave' }, {
  group = 'CursorLine',
  callback = function()
    vim.wo.cursorline = false
  end,
})

-- Create the necessary directory structure for the file being saved.
-- create_augroup('AutoMkdir', { clear = true })
-- create_autocmd('BufWritePre', {
--   group = 'AutoMkdir',
--   callback = function(event)
--     local file = vim.loop.fs_realpath(event.match) or event.match
--     vim.fn.mkdir(vim.fn.fnamemodify(file, ':p:h'), 'p')
--   end,
-- })

-- Adjust the window size when the terminal is resized
create_autocmd('VimResized', {
  command = 'wincmd =',
})

-- Allow closing certain windows with "q"
-- and remove them from the buffer list
create_augroup('close_with_q', { clear = true })
create_autocmd('FileType', {
  group = 'close_with_q',
  pattern = {
    'help',
    'lspinfo',
    'TelescopePrompt',
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set('n', 'q', '<cmd>close<cr>', { buffer = event.buf, silent = true })
  end,
})

-- Mark internally when nvim is focused
-- and when it is not
create_autocmd('FocusGained', {
  callback = function()
    vim.g.nvim_focused = true
  end,
})

create_autocmd('FocusLost', {
  callback = function()
    vim.g.nvim_focused = false
  end,
})
