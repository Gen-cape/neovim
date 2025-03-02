return {
  'alpha-nvim',

  before = function()
    deps.add {
      source = 'goolord/alpha-nvim',
      depends = {
        'nvim-tree/nvim-web-devicons',
        'catppuccin/vim',
      },
    }
  end,

  keys = {},

  event = 'VimEnter',

  after = function()
    -- local alpha = require 'alpha'
    -- local plenary_path = require 'plenary.path'
    -- local dashboard = require 'alpha.themes.dashboard'
    -- local cdir = vim.fn.getcwd()
    -- local if_nil = vim.F.if_nil
    --
    -- local nvim_web_devicons = {
    --   enabled = true,
    --   highlight = true,
    -- }
    --
    -- local function get_extension(fn)
    --   local match = fn:match '^.+(%..+)$'
    --   local ext = ''
    --   if match ~= nil then
    --     ext = match:sub(2)
    --   end
    --   return ext
    -- end
    --
    -- local function icon(fn)
    --   local nwd = require 'nvim-web-devicons'
    --   local ext = get_extension(fn)
    --   return nwd.get_icon(fn, ext, { default = true })
    -- end
    --
    -- local function file_button(fn, sc, short_fn)
    --   short_fn = short_fn or fn
    --   local ico_txt
    --   local fb_hl = {}
    --
    --   if nvim_web_devicons.enabled then
    --     local ico, hl = icon(fn)
    --     local hl_option_type = type(nvim_web_devicons.highlight)
    --     if hl_option_type == 'boolean' then
    --       if hl and nvim_web_devicons.highlight then
    --         table.insert(fb_hl, { hl, 0, 3 })
    --       end
    --     end
    --     if hl_option_type == 'string' then
    --       table.insert(fb_hl, { nvim_web_devicons.highlight, 0, 3 })
    --     end
    --     ico_txt = ico .. '  '
    --   else
    --     ico_txt = ''
    --   end
    --   local file_button_el = dashboard.button(sc, ico_txt .. short_fn, '<cmd>e ' .. fn .. ' <CR>')
    --   local fn_start = short_fn:match '.*[/\\]'
    --   if fn_start ~= nil then
    --     table.insert(fb_hl, { 'Comment', #ico_txt - 2, #fn_start + #ico_txt })
    --   end
    --   file_button_el.opts.hl = fb_hl
    --   return file_button_el
    -- end
    --
    -- local default_mru_ignore = { 'gitcommit' }
    --
    -- local mru_opts = {
    --   ignore = function(path, ext)
    --     return (string.find(path, 'COMMIT_EDITMSG')) or (vim.tbl_contains(default_mru_ignore, ext))
    --   end,
    -- }
    --
    -- --- @param start number
    -- --- @param cwd string optional
    -- --- @param items_number number optional number of items to generate, default = 10
    -- local function mru(start, cwd, items_number, opts)
    --   opts = opts or mru_opts
    --   items_number = if_nil(items_number, 15)
    --
    --   local oldfiles = {}
    --   for _, v in pairs(vim.v.oldfiles) do
    --     if #oldfiles == items_number then
    --       break
    --     end
    --     local cwd_cond
    --     if not cwd then
    --       cwd_cond = true
    --     else
    --       cwd_cond = vim.startswith(v, cwd)
    --     end
    --     local ignore = (opts.ignore and opts.ignore(v, get_extension(v))) or false
    --     if (vim.fn.filereadable(v) == 1) and cwd_cond and not ignore then
    --       oldfiles[#oldfiles + 1] = v
    --     end
    --   end
    --   local target_width = 35
    --
    --   local tbl = {}
    --   for i, fn in ipairs(oldfiles) do
    --     local short_fn
    --     if cwd then
    --       short_fn = vim.fn.fnamemodify(fn, ':.')
    --     else
    --       short_fn = vim.fn.fnamemodify(fn, ':~')
    --     end
    --
    --     if #short_fn > target_width then
    --       short_fn = plenary_path.new(short_fn):shorten(1, { -2, -1 })
    --       if #short_fn > target_width then
    --         short_fn = plenary_path.new(short_fn):shorten(1, { -1 })
    --       end
    --     end
    --
    --     local shortcut = tostring(i + start - 1)
    --
    --     local file_button_el = file_button(fn, shortcut, short_fn)
    --     tbl[i] = file_button_el
    --   end
    --   return {
    --     type = 'group',
    --     val = tbl,
    --     opts = {},
    --   }
    -- end
    --
    -- local default_header = {
    --   type = 'text',
    --   val = {
    --     [[ _   _  _____ _____  _   _ ________  ___]],
    --     [[| \ | ||  ___|  _  || | | |_   _|  \/  |]],
    --     [[|  \| || |__ | | | || | | | | | | .  . |]],
    --     [[| . ` ||  __|| | | || | | | | | | |\/| |]],
    --     [[| |\  || |___\ \_/ /\ \_/ /_| |_| |  | |]],
    --     [[\_| \_/\____/ \___/  \___/ \___/\_|  |_/]],
    --
    --     -- [[  _   _   _____   _____   _   _   _____  ___  ___]],
    --     -- [[ | \ | | |  ___| |  _  | | | | | |_   _| |  \/  |]],
    --     -- [[ |  \| | | |__   | | | | | | | |   | |   | .  . |]],
    --     -- [[ | . ` | |  __|  | | | | | | | |   | |   | |\/| |]],
    --     -- [[ | |\  | | |___  \ \_/ / \ \_/ /  _| |_  | |  | |]],
    --     -- [[ \_| \_/ \____/   \___/   \___/   \___/  \_|  |_/]],
    --
    --     -- [[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
    --     -- [[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
    --     -- [[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
    --     -- [[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
    --     -- [[██   ████ ███████  ██████    ████   ██ ██      ██]],
    --
    --     -- [[                               __                ]],
    --     -- [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    --     -- [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    --     -- [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    --     -- [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    --     -- [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    --   },
    --   opts = {
    --     position = 'center',
    --     hl = 'Type',
    --     -- wrap = "overflow";
    --   },
    -- }
    --
    -- local section_mru = {
    --   type = 'group',
    --   val = {
    --     {
    --       type = 'text',
    --       val = 'Recent files',
    --       opts = {
    --         hl = 'SpecialComment',
    --         shrink_margin = false,
    --         position = 'center',
    --       },
    --     },
    --     { type = 'padding', val = 1 },
    --     {
    --       type = 'group',
    --       val = function()
    --         return { mru(0, cdir) }
    --       end,
    --       opts = { shrink_margin = false },
    --     },
    --   },
    -- }
    --
    -- local buttons = {
    --   type = 'group',
    --   val = {
    --     { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
    --     { type = 'padding', val = 1 },
    --     -- TODO: buttons should be added based on whether or not the relevant plugin is available
    --     dashboard.button('e', '  New file', '<cmd>ene<CR>'), -- available all the time
    --     dashboard.button('SPC F', '󰈞  Find file'), -- telescope
    --     dashboard.button('SPC ff', '󰊄  Live grep'), -- telescope
    --     dashboard.button('SPC p', '  Projects'), -- any project
    --     dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'), -- available all the time
    --   },
    --   position = 'center',
    -- }
    --
    -- local config = {
    --   layout = {
    --     { type = 'padding', val = 2 },
    --     default_header,
    --     { type = 'padding', val = 2 },
    --     section_mru,
    --     { type = 'padding', val = 2 },
    --     buttons,
    --   },
    --   opts = {
    --     margin = 5,
    --     setup = function()
    --       vim.cmd [[
    --               autocmd alpha_temp DirChanged * lua require('alpha').redraw()
    --               ]]
    --     end,
    --   },
    -- }
    --
    -- alpha.setup(config)
    --
    --
    -- Utility to manipulate colors directly in the code
    local function hex_to_rgb(hex)
      hex = hex:gsub('#', '')
      return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
    end

    local function rgb_to_hex(r, g, b)
      return string.format('#%02X%02X%02X', r, g, b)
    end

    local function darken(hex, percent)
      local r, g, b = hex_to_rgb(hex)
      r = math.floor(r * (1 - percent / 100))
      g = math.floor(g * (1 - percent / 100))
      b = math.floor(b * (1 - percent / 100))
      return rgb_to_hex(r, g, b)
    end

    local function lighten(hex, percent)
      local r, g, b = hex_to_rgb(hex)
      r = math.floor(r + (255 - r) * (percent / 100))
      g = math.floor(g + (255 - g) * (percent / 100))
      b = math.floor(b + (255 - b) * (percent / 100))
      return rgb_to_hex(r, g, b)
    end
    local function getLen(str, start_pos)
      local byte = string.byte(str, start_pos)
      if not byte then
        return nil
      end
      return (byte < 0x80 and 1) or (byte < 0xE0 and 2) or (byte < 0xF0 and 3) or (byte < 0xF8 and 4) or 1
    end

    local function colorize(header, header_color_map, colors)
      for letter, color in pairs(colors) do
        local color_name = 'AlphaJemuelKwelKwelWalangTatay' .. letter
        vim.api.nvim_set_hl(0, color_name, color)
        colors[letter] = color_name
      end

      local colorized = {}

      for i, line in ipairs(header_color_map) do
        local colorized_line = {}
        local pos = 0

        for j = 1, #line do
          local start = pos
          pos = pos + getLen(header[i], start + 1)

          local color_name = colors[line:sub(j, j)]
          if color_name then
            table.insert(colorized_line, { color_name, start, pos })
          end
        end

        table.insert(colorized, colorized_line)
      end

      return colorized
    end

    local alpha = require 'alpha'

    -- local mocha = require('catppuccin.palettes').get_palette 'mocha'

    local dashboard = require 'alpha.themes.dashboard'

    local color_map = {
      [[      AAAA]],
      [[AAAAAA  AAAA]],
      [[AA    AAAA  AAAA        KKHHKKHHHH]],
      [[AAAA    AAAA  AA    HHBBKKKKKKKKKKKKKK]],
      [[  AAAAAA      AAKKBBHHKKBBYYBBKKKKHHKKKKKK]],
      [[      AAAA  BBAAKKHHBBBBKKKKBBYYBBHHHHKKKKKK]],
      [[        BBAABBKKYYYYHHKKYYYYKKKKBBBBBBZZZZZZ]],
      [[    YYBBYYBBKKYYYYYYYYYYKKKKBBKKAAAAZZOOZZZZ]],
      [[    XXXXYYYYBBYYYYYYYYBBBBBBKKKKBBBBAAAAZZZZ]],
      [[    XXXXUUUUYYYYBBYYYYYYBBKKBBZZOOAAZZOOAAAAAA]],
      [[  ZZZZZZXXUUXXXXYYYYYYYYBBAAAAZZOOOOAAOOZZZZAAAA]],
      [[  ZZUUZZXXUUUUXXXXUUXXFFFFFFFFAAAAOOZZAAZZZZ  AA]],
      [[    RRRRUUUUZZZZZZZZXXOOFFFFOOZZOOAAAAAAZZZZAA]],
      [[    CCSSUUUUZZXXXXZZXXOOFFFFOOZZOOOOZZOOAAAA]],
      [[    CCCCUUUUUUUUUURRRROOFFFFOOZZOOOOZZOOZZZZ]],
      [[    CCCCUUUUUUUUSSCCCCEEQQQQOOZZOOOOZZOOZZZZ]],
      [[    CCCCUUGGUUUUCCCCCCEEQQQQOOZZOOOOZZEEZZ]],
      [[    RRRRGGGGUUGGCCCCCCOOOOOOOOZZOOEEZZII]],
      [[      IIRRGGGGGGCCCCCCOOOOOOOOZZEEII]],
      [[            GGRRCCCCCCOOOOEEEEII  II]],
      [[                RRRRRREEEE  IIII]],
      [[                      II]],
      [[]],
    }
    local mocha = {
      rosewater = '#f5e0dc',
      crust = '#161320',
      mantle = '#1e1e2e',
      subtext1 = '#6e6c7e',
    }

    local yellow = '#FAC87C'
    local orange = '#BF854E'
    local maroon = '#502E2B'
    local brown = '#38291B'
    local colors = {
      ['A'] = { fg = mocha.rosewater },
      ['Y'] = { fg = yellow },
      ['B'] = { fg = darken(yellow, 5) },
      ['X'] = { fg = darken(yellow, 20) },
      ['U'] = { fg = darken(yellow, 25) },
      ['F'] = { fg = darken(yellow, 35) },
      ['O'] = { fg = darken(yellow, 45) },
      ['K'] = { fg = maroon },
      ['H'] = { fg = darken(maroon, 10) },
      ['Z'] = { fg = mocha.crust },
      ['G'] = { fg = darken(yellow, 25) },
      ['R'] = { fg = orange },
      ['Q'] = { fg = darken(orange, 20) },
      ['E'] = { fg = darken(orange, 35) },
      ['I'] = { fg = brown },
      ['C'] = { fg = mocha.mantle },
      ['S'] = { fg = mocha.subtext1 },
    }

    local header = {}
    for _, line in ipairs(color_map) do
      local header_line = [[]]
      for i = 1, #line do
        if line:sub(i, i) ~= ' ' then
          header_line = header_line .. '█'
        else
          header_line = header_line .. ' '
        end
      end
      table.insert(header, header_line)
    end

    local header_add = [[          N        E      O    B   E E         ]]
    table.insert(header, header_add)

    local hl_add = {}
    for i = 1, #header_add do
      table.insert(hl_add, { 'NeoBeeTitle', 1, i })
    end

    dashboard.section.header.val = header
    local colorized = colorize(header, color_map, colors)

    table.insert(colorized, hl_add)

    dashboard.section.header.opts = {
      hl = colorized,
      position = 'center',
    }

    dashboard.section.buttons.val = {
      -- dashboard.button('SPC e e', '  New file', '<Cmd>ene <CR>'),
      -- dashboard.button('SPC f f', '  Find file'),
      -- dashboard.button('SPC s s', '  NeoBee config', '<Cmd>Neotree reveal ~/.config/nvim<CR>'),
      -- dashboard.button('SPC q q', '  Quit', '<Cmd>qa<CR>'),

      -- { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
      -- { type = 'padding', val = 1 },
      dashboard.button('e', '  New file', '<cmd>ene<CR>'),
      dashboard.button('SPC f/', '󰊄  Live grep'),
      dashboard.button('SPC ff', '󰈞  Find file'),
      dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'),
    }
    for _, a in ipairs(dashboard.section.buttons.val) do
      a.opts.width = 49
      a.opts.cursor = -2
    end

    alpha.setup(dashboard.config)
  end,
}
