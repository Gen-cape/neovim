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
