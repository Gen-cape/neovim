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
    local alpha = require 'alpha'

    local dashboard = require 'alpha.themes.dashboard'

    vim.api.nvim_set_hl(0, 'I2A0', { fg = '#313234' })
    vim.api.nvim_set_hl(0, 'I2A1', { fg = '#2d2e30' })
    vim.api.nvim_set_hl(0, 'I2A2', { fg = '#2c2e31' })
    vim.api.nvim_set_hl(0, 'I2A3', { fg = '#2e3235' })
    vim.api.nvim_set_hl(0, 'I2A4', { fg = '#2e3336' })
    vim.api.nvim_set_hl(0, 'I2A5', { fg = '#313236' })
    vim.api.nvim_set_hl(0, 'I2A6', { fg = '#35363a' })
    vim.api.nvim_set_hl(0, 'I2A7', { fg = '#343537' })
    vim.api.nvim_set_hl(0, 'I2A8', { fg = '#333436' })
    vim.api.nvim_set_hl(0, 'I2A9', { fg = '#363638' })
    vim.api.nvim_set_hl(0, 'I2A10', { fg = '#383739' })
    vim.api.nvim_set_hl(0, 'I2A11', { fg = '#3b393c' })
    vim.api.nvim_set_hl(0, 'I2A12', { fg = '#3b393b' })
    vim.api.nvim_set_hl(0, 'I2A13', { fg = '#403c3d' })
    vim.api.nvim_set_hl(0, 'I2A14', { fg = '#413d3e' })
    vim.api.nvim_set_hl(0, 'I2A15', { fg = '#423f42' })
    vim.api.nvim_set_hl(0, 'I2A16', { fg = '#444044' })
    vim.api.nvim_set_hl(0, 'I2A17', { fg = '#444145' })
    vim.api.nvim_set_hl(0, 'I2A18', { fg = '#454246' })
    vim.api.nvim_set_hl(0, 'I2A19', { fg = '#434146' })
    vim.api.nvim_set_hl(0, 'I2A20', { fg = '#413f44' })
    vim.api.nvim_set_hl(0, 'I2A21', { fg = '#3f3e43' })
    vim.api.nvim_set_hl(0, 'I2A22', { fg = '#403f44' })
    vim.api.nvim_set_hl(0, 'I2A23', { fg = '#434147' })
    vim.api.nvim_set_hl(0, 'I2A24', { fg = '#3d3b3f' })
    vim.api.nvim_set_hl(0, 'I2A25', { fg = '#3c3c3e' })
    vim.api.nvim_set_hl(0, 'I2A26', { fg = '#3e3e40' })
    vim.api.nvim_set_hl(0, 'I2A27', { fg = '#3d3d3f' })
    vim.api.nvim_set_hl(0, 'I2A28', { fg = '#3c3d3f' })
    vim.api.nvim_set_hl(0, 'I2A29', { fg = '#3b3b3e' })
    vim.api.nvim_set_hl(0, 'I2A30', { fg = '#373c3c' })
    vim.api.nvim_set_hl(0, 'I2A31', { fg = '#3b4041' })
    vim.api.nvim_set_hl(0, 'I2A32', { fg = '#3d4245' })
    vim.api.nvim_set_hl(0, 'I2A33', { fg = '#404045' })
    vim.api.nvim_set_hl(0, 'I2A34', { fg = '#424245' })
    vim.api.nvim_set_hl(0, 'I2A35', { fg = '#414043' })
    vim.api.nvim_set_hl(0, 'I2A36', { fg = '#3e3e41' })
    vim.api.nvim_set_hl(0, 'I2A37', { fg = '#2f2f31' })
    vim.api.nvim_set_hl(0, 'I2A38', { fg = '#2e2d30' })
    vim.api.nvim_set_hl(0, 'I2A39', { fg = '#2e2f31' })
    vim.api.nvim_set_hl(0, 'I2A40', { fg = '#2f3133' })
    vim.api.nvim_set_hl(0, 'I2A41', { fg = '#2f3034' })
    vim.api.nvim_set_hl(0, 'I2A42', { fg = '#2e2f33' })
    vim.api.nvim_set_hl(0, 'I2A43', { fg = '#303135' })
    vim.api.nvim_set_hl(0, 'I2A44', { fg = '#333537' })
    vim.api.nvim_set_hl(0, 'I2A45', { fg = '#343536' })
    vim.api.nvim_set_hl(0, 'I2A46', { fg = '#3b3738' })
    vim.api.nvim_set_hl(0, 'I2A47', { fg = '#3a3635' })
    vim.api.nvim_set_hl(0, 'I2A48', { fg = '#3c3838' })
    vim.api.nvim_set_hl(0, 'I2A49', { fg = '#403b3b' })
    vim.api.nvim_set_hl(0, 'I2A50', { fg = '#413e3d' })
    vim.api.nvim_set_hl(0, 'I2A51', { fg = '#423e3d' })
    vim.api.nvim_set_hl(0, 'I2A52', { fg = '#44403f' })
    vim.api.nvim_set_hl(0, 'I2A53', { fg = '#433f3e' })
    vim.api.nvim_set_hl(0, 'I2A54', { fg = '#403c3b' })
    vim.api.nvim_set_hl(0, 'I2A55', { fg = '#3f3b3a' })
    vim.api.nvim_set_hl(0, 'I2A56', { fg = '#3c3a39' })
    vim.api.nvim_set_hl(0, 'I2A57', { fg = '#3d3c3a' })
    vim.api.nvim_set_hl(0, 'I2A58', { fg = '#3e3e3c' })
    vim.api.nvim_set_hl(0, 'I2A59', { fg = '#383838' })
    vim.api.nvim_set_hl(0, 'I2A60', { fg = '#393938' })
    vim.api.nvim_set_hl(0, 'I2A61', { fg = '#3d3d3b' })
    vim.api.nvim_set_hl(0, 'I2A62', { fg = '#3a3a39' })
    vim.api.nvim_set_hl(0, 'I2A63', { fg = '#414141' })
    vim.api.nvim_set_hl(0, 'I2A64', { fg = '#4d4d4f' })
    vim.api.nvim_set_hl(0, 'I2A65', { fg = '#565658' })
    vim.api.nvim_set_hl(0, 'I2A66', { fg = '#5a5a5d' })
    vim.api.nvim_set_hl(0, 'I2A67', { fg = '#5c5a63' })
    vim.api.nvim_set_hl(0, 'I2A68', { fg = '#585661' })
    vim.api.nvim_set_hl(0, 'I2A69', { fg = '#595761' })
    vim.api.nvim_set_hl(0, 'I2A70', { fg = '#525059' })
    vim.api.nvim_set_hl(0, 'I2A71', { fg = '#46454c' })
    vim.api.nvim_set_hl(0, 'I2A72', { fg = '#2d2b2e' })
    vim.api.nvim_set_hl(0, 'I2A73', { fg = '#302e31' })
    vim.api.nvim_set_hl(0, 'I2A74', { fg = '#363637' })
    vim.api.nvim_set_hl(0, 'I2A75', { fg = '#363635' })
    vim.api.nvim_set_hl(0, 'I2A76', { fg = '#363636' })
    vim.api.nvim_set_hl(0, 'I2A77', { fg = '#343434' })
    vim.api.nvim_set_hl(0, 'I2A78', { fg = '#333333' })
    vim.api.nvim_set_hl(0, 'I2A79', { fg = '#353535' })
    vim.api.nvim_set_hl(0, 'I2A80', { fg = '#333432' })
    vim.api.nvim_set_hl(0, 'I2A81', { fg = '#363632' })
    vim.api.nvim_set_hl(0, 'I2A82', { fg = '#3a3531' })
    vim.api.nvim_set_hl(0, 'I2A83', { fg = '#3d3a35' })
    vim.api.nvim_set_hl(0, 'I2A84', { fg = '#44413a' })
    vim.api.nvim_set_hl(0, 'I2A85', { fg = '#47453d' })
    vim.api.nvim_set_hl(0, 'I2A86', { fg = '#4e4b44' })
    vim.api.nvim_set_hl(0, 'I2A87', { fg = '#514e48' })
    vim.api.nvim_set_hl(0, 'I2A88', { fg = '#53504a' })
    vim.api.nvim_set_hl(0, 'I2A89', { fg = '#57544e' })
    vim.api.nvim_set_hl(0, 'I2A90', { fg = '#585450' })
    vim.api.nvim_set_hl(0, 'I2A91', { fg = '#393934' })
    vim.api.nvim_set_hl(0, 'I2A92', { fg = '#393935' })
    vim.api.nvim_set_hl(0, 'I2A93', { fg = '#3a3936' })
    vim.api.nvim_set_hl(0, 'I2A94', { fg = '#343332' })
    vim.api.nvim_set_hl(0, 'I2A95', { fg = '#353533' })
    vim.api.nvim_set_hl(0, 'I2A96', { fg = '#383836' })
    vim.api.nvim_set_hl(0, 'I2A97', { fg = '#373735' })
    vim.api.nvim_set_hl(0, 'I2A98', { fg = '#474747' })
    vim.api.nvim_set_hl(0, 'I2A99', { fg = '#717172' })
    vim.api.nvim_set_hl(0, 'I2A100', { fg = '#727175' })
    vim.api.nvim_set_hl(0, 'I2A101', { fg = '#706f72' })
    vim.api.nvim_set_hl(0, 'I2A102', { fg = '#616164' })
    vim.api.nvim_set_hl(0, 'I2A103', { fg = '#515356' })
    vim.api.nvim_set_hl(0, 'I2A104', { fg = '#474b4d' })
    vim.api.nvim_set_hl(0, 'I2A105', { fg = '#3a3d41' })
    vim.api.nvim_set_hl(0, 'I2A106', { fg = '#343639' })
    vim.api.nvim_set_hl(0, 'I2A107', { fg = '#2b2a29' })
    vim.api.nvim_set_hl(0, 'I2A108', { fg = '#2d2c2a' })
    vim.api.nvim_set_hl(0, 'I2A109', { fg = '#2f2d2a' })
    vim.api.nvim_set_hl(0, 'I2A110', { fg = '#2e3021' })
    vim.api.nvim_set_hl(0, 'I2A111', { fg = '#c7cf69' })
    vim.api.nvim_set_hl(0, 'I2A112', { fg = '#e3ea62' })
    vim.api.nvim_set_hl(0, 'I2A113', { fg = '#e0e266' })
    vim.api.nvim_set_hl(0, 'I2A114', { fg = '#7a755d' })
    vim.api.nvim_set_hl(0, 'I2A115', { fg = '#696357' })
    vim.api.nvim_set_hl(0, 'I2A116', { fg = '#6b605b' })
    vim.api.nvim_set_hl(0, 'I2A117', { fg = '#544a46' })
    vim.api.nvim_set_hl(0, 'I2A118', { fg = '#3a332c' })
    vim.api.nvim_set_hl(0, 'I2A119', { fg = '#3a382d' })
    vim.api.nvim_set_hl(0, 'I2A120', { fg = '#c5c09e' })
    vim.api.nvim_set_hl(0, 'I2A121', { fg = '#f1efc2' })
    vim.api.nvim_set_hl(0, 'I2A122', { fg = '#f8f8ca' })
    vim.api.nvim_set_hl(0, 'I2A123', { fg = '#dfddb4' })
    vim.api.nvim_set_hl(0, 'I2A124', { fg = '#dedab5' })
    vim.api.nvim_set_hl(0, 'I2A125', { fg = '#dfdfb6' })
    vim.api.nvim_set_hl(0, 'I2A126', { fg = '#898764' })
    vim.api.nvim_set_hl(0, 'I2A127', { fg = '#a3a282' })
    vim.api.nvim_set_hl(0, 'I2A128', { fg = '#78755a' })
    vim.api.nvim_set_hl(0, 'I2A129', { fg = '#4f4834' })
    vim.api.nvim_set_hl(0, 'I2A130', { fg = '#413930' })
    vim.api.nvim_set_hl(0, 'I2A131', { fg = '#40372f' })
    vim.api.nvim_set_hl(0, 'I2A132', { fg = '#3e372e' })
    vim.api.nvim_set_hl(0, 'I2A133', { fg = '#37332c' })
    vim.api.nvim_set_hl(0, 'I2A134', { fg = '#32322f' })
    vim.api.nvim_set_hl(0, 'I2A135', { fg = '#353431' })
    vim.api.nvim_set_hl(0, 'I2A136', { fg = '#363531' })
    vim.api.nvim_set_hl(0, 'I2A137', { fg = '#373632' })
    vim.api.nvim_set_hl(0, 'I2A138', { fg = '#353430' })
    vim.api.nvim_set_hl(0, 'I2A139', { fg = '#393833' })
    vim.api.nvim_set_hl(0, 'I2A140', { fg = '#3a3935' })
    vim.api.nvim_set_hl(0, 'I2A141', { fg = '#3b3a38' })
    vim.api.nvim_set_hl(0, 'I2A142', { fg = '#393937' })
    vim.api.nvim_set_hl(0, 'I2A143', { fg = '#383937' })
    vim.api.nvim_set_hl(0, 'I2A144', { fg = '#333231' })
    vim.api.nvim_set_hl(0, 'I2A145', { fg = '#262423' })
    vim.api.nvim_set_hl(0, 'I2A146', { fg = '#292826' })
    vim.api.nvim_set_hl(0, 'I2A147', { fg = '#2b2b23' })
    vim.api.nvim_set_hl(0, 'I2A148', { fg = '#99973a' })
    vim.api.nvim_set_hl(0, 'I2A149', { fg = '#cdc43d' })
    vim.api.nvim_set_hl(0, 'I2A150', { fg = '#c7b834' })
    vim.api.nvim_set_hl(0, 'I2A151', { fg = '#6e5e1f' })
    vim.api.nvim_set_hl(0, 'I2A152', { fg = '#3a3223' })
    vim.api.nvim_set_hl(0, 'I2A153', { fg = '#403423' })
    vim.api.nvim_set_hl(0, 'I2A154', { fg = '#5a4e3e' })
    vim.api.nvim_set_hl(0, 'I2A155', { fg = '#efedbf' })
    vim.api.nvim_set_hl(0, 'I2A156', { fg = '#fefcbd' })
    vim.api.nvim_set_hl(0, 'I2A157', { fg = '#fefeb4' })
    vim.api.nvim_set_hl(0, 'I2A158', { fg = '#fafcad' })
    vim.api.nvim_set_hl(0, 'I2A159', { fg = '#fbfeaa' })
    vim.api.nvim_set_hl(0, 'I2A160', { fg = '#fdfdba' })
    vim.api.nvim_set_hl(0, 'I2A161', { fg = '#feffbb' })
    vim.api.nvim_set_hl(0, 'I2A162', { fg = '#fefdc3' })
    vim.api.nvim_set_hl(0, 'I2A163', { fg = '#fefec7' })
    vim.api.nvim_set_hl(0, 'I2A164', { fg = '#fffdcb' })
    vim.api.nvim_set_hl(0, 'I2A165', { fg = '#fffdcd' })
    vim.api.nvim_set_hl(0, 'I2A166', { fg = '#feffcc' })
    vim.api.nvim_set_hl(0, 'I2A167', { fg = '#fdfec6' })
    vim.api.nvim_set_hl(0, 'I2A168', { fg = '#fffcc0' })
    vim.api.nvim_set_hl(0, 'I2A169', { fg = '#fffdc5' })
    vim.api.nvim_set_hl(0, 'I2A170', { fg = '#fdfbc1' })
    vim.api.nvim_set_hl(0, 'I2A171', { fg = '#d9d4ac' })
    vim.api.nvim_set_hl(0, 'I2A172', { fg = '#3e3a2e' })
    vim.api.nvim_set_hl(0, 'I2A173', { fg = '#343128' })
    vim.api.nvim_set_hl(0, 'I2A174', { fg = '#38342c' })
    vim.api.nvim_set_hl(0, 'I2A175', { fg = '#39372b' })
    vim.api.nvim_set_hl(0, 'I2A176', { fg = '#37352b' })
    vim.api.nvim_set_hl(0, 'I2A177', { fg = '#35342f' })
    vim.api.nvim_set_hl(0, 'I2A178', { fg = '#383733' })
    vim.api.nvim_set_hl(0, 'I2A179', { fg = '#373536' })
    vim.api.nvim_set_hl(0, 'I2A180', { fg = '#343330' })
    vim.api.nvim_set_hl(0, 'I2A181', { fg = '#33332f' })
    vim.api.nvim_set_hl(0, 'I2A182', { fg = '#302f2b' })
    vim.api.nvim_set_hl(0, 'I2A183', { fg = '#2d2c29' })
    vim.api.nvim_set_hl(0, 'I2A184', { fg = '#1f1e1c' })
    vim.api.nvim_set_hl(0, 'I2A185', { fg = '#282725' })
    vim.api.nvim_set_hl(0, 'I2A186', { fg = '#262424' })
    vim.api.nvim_set_hl(0, 'I2A187', { fg = '#312e14' })
    vim.api.nvim_set_hl(0, 'I2A188', { fg = '#a89a38' })
    vim.api.nvim_set_hl(0, 'I2A189', { fg = '#ab952b' })
    vim.api.nvim_set_hl(0, 'I2A190', { fg = '#af962f' })
    vim.api.nvim_set_hl(0, 'I2A191', { fg = '#c6b45e' })
    vim.api.nvim_set_hl(0, 'I2A192', { fg = '#faf8b6' })
    vim.api.nvim_set_hl(0, 'I2A193', { fg = '#fcfcb1' })
    vim.api.nvim_set_hl(0, 'I2A194', { fg = '#fafcaa' })
    vim.api.nvim_set_hl(0, 'I2A195', { fg = '#fcfeb0' })
    vim.api.nvim_set_hl(0, 'I2A196', { fg = '#fefeb7' })
    vim.api.nvim_set_hl(0, 'I2A197', { fg = '#fffebb' })
    vim.api.nvim_set_hl(0, 'I2A198', { fg = '#fefdba' })
    vim.api.nvim_set_hl(0, 'I2A199', { fg = '#fdfdbb' })
    vim.api.nvim_set_hl(0, 'I2A200', { fg = '#fffdba' })
    vim.api.nvim_set_hl(0, 'I2A201', { fg = '#fcfdb9' })
    vim.api.nvim_set_hl(0, 'I2A202', { fg = '#fcfeba' })
    vim.api.nvim_set_hl(0, 'I2A203', { fg = '#fcfdb7' })
    vim.api.nvim_set_hl(0, 'I2A204', { fg = '#fbffaf' })
    vim.api.nvim_set_hl(0, 'I2A205', { fg = '#fdfdb3' })
    vim.api.nvim_set_hl(0, 'I2A206', { fg = '#fbfcb2' })
    vim.api.nvim_set_hl(0, 'I2A207', { fg = '#fdfba7' })
    vim.api.nvim_set_hl(0, 'I2A208', { fg = '#fffca6' })
    vim.api.nvim_set_hl(0, 'I2A209', { fg = '#fffab0' })
    vim.api.nvim_set_hl(0, 'I2A210', { fg = '#fffcb3' })
    vim.api.nvim_set_hl(0, 'I2A211', { fg = '#fffbbb' })
    vim.api.nvim_set_hl(0, 'I2A212', { fg = '#e8e8ab' })
    vim.api.nvim_set_hl(0, 'I2A213', { fg = '#464131' })
    vim.api.nvim_set_hl(0, 'I2A214', { fg = '#39362c' })
    vim.api.nvim_set_hl(0, 'I2A215', { fg = '#33322d' })
    vim.api.nvim_set_hl(0, 'I2A216', { fg = '#35352e' })
    vim.api.nvim_set_hl(0, 'I2A217', { fg = '#35332f' })
    vim.api.nvim_set_hl(0, 'I2A218', { fg = '#34342c' })
    vim.api.nvim_set_hl(0, 'I2A219', { fg = '#32312e' })
    vim.api.nvim_set_hl(0, 'I2A220', { fg = '#302d2c' })
    vim.api.nvim_set_hl(0, 'I2A221', { fg = '#2b2a27' })
    vim.api.nvim_set_hl(0, 'I2A222', { fg = '#2c2b28' })
    vim.api.nvim_set_hl(0, 'I2A223', { fg = '#1e1d1b' })
    vim.api.nvim_set_hl(0, 'I2A224', { fg = '#252421' })
    vim.api.nvim_set_hl(0, 'I2A225', { fg = '#201f1d' })
    vim.api.nvim_set_hl(0, 'I2A226', { fg = '#26231f' })
    vim.api.nvim_set_hl(0, 'I2A227', { fg = '#29251e' })
    vim.api.nvim_set_hl(0, 'I2A228', { fg = '#383123' })
    vim.api.nvim_set_hl(0, 'I2A229', { fg = '#eae1a4' })
    vim.api.nvim_set_hl(0, 'I2A230', { fg = '#f9ef9b' })
    vim.api.nvim_set_hl(0, 'I2A231', { fg = '#f4e88e' })
    vim.api.nvim_set_hl(0, 'I2A232', { fg = '#f9f29c' })
    vim.api.nvim_set_hl(0, 'I2A233', { fg = '#fef8a6' })
    vim.api.nvim_set_hl(0, 'I2A234', { fg = '#fcf8aa' })
    vim.api.nvim_set_hl(0, 'I2A235', { fg = '#fcfbab' })
    vim.api.nvim_set_hl(0, 'I2A236', { fg = '#fcfca6' })
    vim.api.nvim_set_hl(0, 'I2A237', { fg = '#f5f49c' })
    vim.api.nvim_set_hl(0, 'I2A238', { fg = '#fcf69b' })
    vim.api.nvim_set_hl(0, 'I2A239', { fg = '#f9f592' })
    vim.api.nvim_set_hl(0, 'I2A240', { fg = '#f8f798' })
    vim.api.nvim_set_hl(0, 'I2A241', { fg = '#f9faac' })
    vim.api.nvim_set_hl(0, 'I2A242', { fg = '#feffb3' })
    vim.api.nvim_set_hl(0, 'I2A243', { fg = '#fdfcb9' })
    vim.api.nvim_set_hl(0, 'I2A244', { fg = '#fefeb6' })
    vim.api.nvim_set_hl(0, 'I2A245', { fg = '#fffdb9' })
    vim.api.nvim_set_hl(0, 'I2A246', { fg = '#fdfcbc' })
    vim.api.nvim_set_hl(0, 'I2A247', { fg = '#fdffb0' })
    vim.api.nvim_set_hl(0, 'I2A248', { fg = '#fafeab' })
    vim.api.nvim_set_hl(0, 'I2A249', { fg = '#fcfdb1' })
    vim.api.nvim_set_hl(0, 'I2A250', { fg = '#fdfe9e' })
    vim.api.nvim_set_hl(0, 'I2A251', { fg = '#fdfda4' })
    vim.api.nvim_set_hl(0, 'I2A252', { fg = '#fefbb6' })
    vim.api.nvim_set_hl(0, 'I2A253', { fg = '#dbd69b' })
    vim.api.nvim_set_hl(0, 'I2A254', { fg = '#413c2c' })
    vim.api.nvim_set_hl(0, 'I2A255', { fg = '#39342a' })
    vim.api.nvim_set_hl(0, 'I2A256', { fg = '#353227' })
    vim.api.nvim_set_hl(0, 'I2A257', { fg = '#313226' })
    vim.api.nvim_set_hl(0, 'I2A258', { fg = '#313127' })
    vim.api.nvim_set_hl(0, 'I2A259', { fg = '#2f2e29' })
    vim.api.nvim_set_hl(0, 'I2A260', { fg = '#2d2c28' })
    vim.api.nvim_set_hl(0, 'I2A261', { fg = '#2c2b27' })
    vim.api.nvim_set_hl(0, 'I2A262', { fg = '#2b2a25' })
    vim.api.nvim_set_hl(0, 'I2A263', { fg = '#1c1815' })
    vim.api.nvim_set_hl(0, 'I2A264', { fg = '#221e1b' })
    vim.api.nvim_set_hl(0, 'I2A265', { fg = '#211d1a' })
    vim.api.nvim_set_hl(0, 'I2A266', { fg = '#24201c' })
    vim.api.nvim_set_hl(0, 'I2A267', { fg = '#767459' })
    vim.api.nvim_set_hl(0, 'I2A268', { fg = '#e0dd9d' })
    vim.api.nvim_set_hl(0, 'I2A269', { fg = '#f1e195' })
    vim.api.nvim_set_hl(0, 'I2A270', { fg = '#f2da86' })
    vim.api.nvim_set_hl(0, 'I2A271', { fg = '#f5dc87' })
    vim.api.nvim_set_hl(0, 'I2A272', { fg = '#f2dc85' })
    vim.api.nvim_set_hl(0, 'I2A273', { fg = '#f5e18c' })
    vim.api.nvim_set_hl(0, 'I2A274', { fg = '#f9ea92' })
    vim.api.nvim_set_hl(0, 'I2A275', { fg = '#f8ec92' })
    vim.api.nvim_set_hl(0, 'I2A276', { fg = '#f4e385' })
    vim.api.nvim_set_hl(0, 'I2A277', { fg = '#faec8b' })
    vim.api.nvim_set_hl(0, 'I2A278', { fg = '#f7ec8c' })
    vim.api.nvim_set_hl(0, 'I2A279', { fg = '#fbf194' })
    vim.api.nvim_set_hl(0, 'I2A280', { fg = '#fdfca1' })
    vim.api.nvim_set_hl(0, 'I2A281', { fg = '#fdfb99' })
    vim.api.nvim_set_hl(0, 'I2A282', { fg = '#fdfba5' })
    vim.api.nvim_set_hl(0, 'I2A283', { fg = '#fbfb9a' })
    vim.api.nvim_set_hl(0, 'I2A284', { fg = '#fcfba7' })
    vim.api.nvim_set_hl(0, 'I2A285', { fg = '#fdfda5' })
    vim.api.nvim_set_hl(0, 'I2A286', { fg = '#fdfca9' })
    vim.api.nvim_set_hl(0, 'I2A287', { fg = '#fefbaa' })
    vim.api.nvim_set_hl(0, 'I2A288', { fg = '#fefaa9' })
    vim.api.nvim_set_hl(0, 'I2A289', { fg = '#faf594' })
    vim.api.nvim_set_hl(0, 'I2A290', { fg = '#f5f38e' })
    vim.api.nvim_set_hl(0, 'I2A291', { fg = '#fefaa0' })
    vim.api.nvim_set_hl(0, 'I2A292', { fg = '#fefca5' })
    vim.api.nvim_set_hl(0, 'I2A293', { fg = '#fefdaa' })
    vim.api.nvim_set_hl(0, 'I2A294', { fg = '#fefeb5' })
    vim.api.nvim_set_hl(0, 'I2A295', { fg = '#fefcb6' })
    vim.api.nvim_set_hl(0, 'I2A296', { fg = '#807a56' })
    vim.api.nvim_set_hl(0, 'I2A297', { fg = '#363328' })
    vim.api.nvim_set_hl(0, 'I2A298', { fg = '#333227' })
    vim.api.nvim_set_hl(0, 'I2A299', { fg = '#313025' })
    vim.api.nvim_set_hl(0, 'I2A300', { fg = '#2e2e26' })
    vim.api.nvim_set_hl(0, 'I2A301', { fg = '#2c2b25' })
    vim.api.nvim_set_hl(0, 'I2A302', { fg = '#292823' })
    vim.api.nvim_set_hl(0, 'I2A303', { fg = '#1e1a17' })
    vim.api.nvim_set_hl(0, 'I2A304', { fg = '#24201d' })
    vim.api.nvim_set_hl(0, 'I2A305', { fg = '#3c3a27' })
    vim.api.nvim_set_hl(0, 'I2A306', { fg = '#d1cc8e' })
    vim.api.nvim_set_hl(0, 'I2A307', { fg = '#e6de93' })
    vim.api.nvim_set_hl(0, 'I2A308', { fg = '#e7d381' })
    vim.api.nvim_set_hl(0, 'I2A309', { fg = '#e4ca76' })
    vim.api.nvim_set_hl(0, 'I2A310', { fg = '#e4cb76' })
    vim.api.nvim_set_hl(0, 'I2A311', { fg = '#f0d582' })
    vim.api.nvim_set_hl(0, 'I2A312', { fg = '#e5cd79' })
    vim.api.nvim_set_hl(0, 'I2A313', { fg = '#e9d47c' })
    vim.api.nvim_set_hl(0, 'I2A314', { fg = '#edda7d' })
    vim.api.nvim_set_hl(0, 'I2A315', { fg = '#f1da7f' })
    vim.api.nvim_set_hl(0, 'I2A316', { fg = '#f3d97f' })
    vim.api.nvim_set_hl(0, 'I2A317', { fg = '#fcea8d' })
    vim.api.nvim_set_hl(0, 'I2A318', { fg = '#faec8e' })
    vim.api.nvim_set_hl(0, 'I2A319', { fg = '#f6f092' })
    vim.api.nvim_set_hl(0, 'I2A320', { fg = '#f6f391' })
    vim.api.nvim_set_hl(0, 'I2A321', { fg = '#fcf9a6' })
    vim.api.nvim_set_hl(0, 'I2A322', { fg = '#fcfaaa' })
    vim.api.nvim_set_hl(0, 'I2A323', { fg = '#fdfaa6' })
    vim.api.nvim_set_hl(0, 'I2A324', { fg = '#f7f798' })
    vim.api.nvim_set_hl(0, 'I2A325', { fg = '#faf99d' })
    vim.api.nvim_set_hl(0, 'I2A326', { fg = '#f9f99a' })
    vim.api.nvim_set_hl(0, 'I2A327', { fg = '#fefca7' })
    vim.api.nvim_set_hl(0, 'I2A328', { fg = '#fdfbac' })
    vim.api.nvim_set_hl(0, 'I2A329', { fg = '#fbfa9b' })
    vim.api.nvim_set_hl(0, 'I2A330', { fg = '#f5f390' })
    vim.api.nvim_set_hl(0, 'I2A331', { fg = '#f9f892' })
    vim.api.nvim_set_hl(0, 'I2A332', { fg = '#fdfc9f' })
    vim.api.nvim_set_hl(0, 'I2A333', { fg = '#fbfda6' })
    vim.api.nvim_set_hl(0, 'I2A334', { fg = '#fdfcb3' })
    vim.api.nvim_set_hl(0, 'I2A335', { fg = '#fefbc0' })
    vim.api.nvim_set_hl(0, 'I2A336', { fg = '#807a59' })
    vim.api.nvim_set_hl(0, 'I2A337', { fg = '#333226' })
    vim.api.nvim_set_hl(0, 'I2A338', { fg = '#2f2d25' })
    vim.api.nvim_set_hl(0, 'I2A339', { fg = '#2d2d26' })
    vim.api.nvim_set_hl(0, 'I2A340', { fg = '#282622' })
    vim.api.nvim_set_hl(0, 'I2A341', { fg = '#252420' })
    vim.api.nvim_set_hl(0, 'I2A342', { fg = '#221b19' })
    vim.api.nvim_set_hl(0, 'I2A343', { fg = '#23201d' })
    vim.api.nvim_set_hl(0, 'I2A344', { fg = '#24221d' })
    vim.api.nvim_set_hl(0, 'I2A345', { fg = '#9d9b6c' })
    vim.api.nvim_set_hl(0, 'I2A346', { fg = '#d1c980' })
    vim.api.nvim_set_hl(0, 'I2A347', { fg = '#e1d480' })
    vim.api.nvim_set_hl(0, 'I2A348', { fg = '#dac46b' })
    vim.api.nvim_set_hl(0, 'I2A349', { fg = '#dabd6c' })
    vim.api.nvim_set_hl(0, 'I2A350', { fg = '#dfc574' })
    vim.api.nvim_set_hl(0, 'I2A351', { fg = '#dbc271' })
    vim.api.nvim_set_hl(0, 'I2A352', { fg = '#e2c675' })
    vim.api.nvim_set_hl(0, 'I2A353', { fg = '#efd685' })
    vim.api.nvim_set_hl(0, 'I2A354', { fg = '#efd682' })
    vim.api.nvim_set_hl(0, 'I2A355', { fg = '#eed881' })
    vim.api.nvim_set_hl(0, 'I2A356', { fg = '#f7e193' })
    vim.api.nvim_set_hl(0, 'I2A357', { fg = '#f3e18d' })
    vim.api.nvim_set_hl(0, 'I2A358', { fg = '#f6ef9c' })
    vim.api.nvim_set_hl(0, 'I2A359', { fg = '#f5f19d' })
    vim.api.nvim_set_hl(0, 'I2A360', { fg = '#f8e886' })
    vim.api.nvim_set_hl(0, 'I2A361', { fg = '#faef94' })
    vim.api.nvim_set_hl(0, 'I2A362', { fg = '#f6ed8f' })
    vim.api.nvim_set_hl(0, 'I2A363', { fg = '#f1dd83' })
    vim.api.nvim_set_hl(0, 'I2A364', { fg = '#f1dc81' })
    vim.api.nvim_set_hl(0, 'I2A365', { fg = '#f0e285' })
    vim.api.nvim_set_hl(0, 'I2A366', { fg = '#f6ec91' })
    vim.api.nvim_set_hl(0, 'I2A367', { fg = '#f7e38a' })
    vim.api.nvim_set_hl(0, 'I2A368', { fg = '#f8e48c' })
    vim.api.nvim_set_hl(0, 'I2A369', { fg = '#faee92' })
    vim.api.nvim_set_hl(0, 'I2A370', { fg = '#faf394' })
    vim.api.nvim_set_hl(0, 'I2A371', { fg = '#f7ef8c' })
    vim.api.nvim_set_hl(0, 'I2A372', { fg = '#f6ea86' })
    vim.api.nvim_set_hl(0, 'I2A373', { fg = '#f9f189' })
    vim.api.nvim_set_hl(0, 'I2A374', { fg = '#fcf590' })
    vim.api.nvim_set_hl(0, 'I2A375', { fg = '#fdfaa0' })
    vim.api.nvim_set_hl(0, 'I2A376', { fg = '#fffbb5' })
    vim.api.nvim_set_hl(0, 'I2A377', { fg = '#807a57' })
    vim.api.nvim_set_hl(0, 'I2A378', { fg = '#342e26' })
    vim.api.nvim_set_hl(0, 'I2A379', { fg = '#2c2923' })
    vim.api.nvim_set_hl(0, 'I2A380', { fg = '#292722' })
    vim.api.nvim_set_hl(0, 'I2A381', { fg = '#28251e' })
    vim.api.nvim_set_hl(0, 'I2A382', { fg = '#25231e' })
    vim.api.nvim_set_hl(0, 'I2A383', { fg = '#211b1d' })
    vim.api.nvim_set_hl(0, 'I2A384', { fg = '#251e1d' })
    vim.api.nvim_set_hl(0, 'I2A385', { fg = '#393328' })
    vim.api.nvim_set_hl(0, 'I2A386', { fg = '#c5bf85' })
    vim.api.nvim_set_hl(0, 'I2A387', { fg = '#d4c779' })
    vim.api.nvim_set_hl(0, 'I2A388', { fg = '#e0cb78' })
    vim.api.nvim_set_hl(0, 'I2A389', { fg = '#d8ba68' })
    vim.api.nvim_set_hl(0, 'I2A390', { fg = '#d4b562' })
    vim.api.nvim_set_hl(0, 'I2A391', { fg = '#d9be6c' })
    vim.api.nvim_set_hl(0, 'I2A392', { fg = '#d7b969' })
    vim.api.nvim_set_hl(0, 'I2A393', { fg = '#e0ca77' })
    vim.api.nvim_set_hl(0, 'I2A394', { fg = '#e4d07e' })
    vim.api.nvim_set_hl(0, 'I2A395', { fg = '#ecd785' })
    vim.api.nvim_set_hl(0, 'I2A396', { fg = '#eed989' })
    vim.api.nvim_set_hl(0, 'I2A397', { fg = '#dec777' })
    vim.api.nvim_set_hl(0, 'I2A398', { fg = '#efdb86' })
    vim.api.nvim_set_hl(0, 'I2A399', { fg = '#ebd781' })
    vim.api.nvim_set_hl(0, 'I2A400', { fg = '#e0c56e' })
    vim.api.nvim_set_hl(0, 'I2A401', { fg = '#dabe69' })
    vim.api.nvim_set_hl(0, 'I2A402', { fg = '#caaf61' })
    vim.api.nvim_set_hl(0, 'I2A403', { fg = '#ba9b51' })
    vim.api.nvim_set_hl(0, 'I2A404', { fg = '#ab864c' })
    vim.api.nvim_set_hl(0, 'I2A405', { fg = '#996b3a' })
    vim.api.nvim_set_hl(0, 'I2A406', { fg = '#9f763b' })
    vim.api.nvim_set_hl(0, 'I2A407', { fg = '#a6793c' })
    vim.api.nvim_set_hl(0, 'I2A408', { fg = '#af8549' })
    vim.api.nvim_set_hl(0, 'I2A409', { fg = '#c0985d' })
    vim.api.nvim_set_hl(0, 'I2A410', { fg = '#bc9554' })
    vim.api.nvim_set_hl(0, 'I2A411', { fg = '#bf9553' })
    vim.api.nvim_set_hl(0, 'I2A412', { fg = '#c09450' })
    vim.api.nvim_set_hl(0, 'I2A413', { fg = '#c79b53' })
    vim.api.nvim_set_hl(0, 'I2A414', { fg = '#cba255' })
    vim.api.nvim_set_hl(0, 'I2A415', { fg = '#d3aa57' })
    vim.api.nvim_set_hl(0, 'I2A416', { fg = '#e0bd6c' })
    vim.api.nvim_set_hl(0, 'I2A417', { fg = '#e8d377' })
    vim.api.nvim_set_hl(0, 'I2A418', { fg = '#f2ea97' })
    vim.api.nvim_set_hl(0, 'I2A419', { fg = '#dedba4' })
    vim.api.nvim_set_hl(0, 'I2A420', { fg = '#2c2820' })
    vim.api.nvim_set_hl(0, 'I2A421', { fg = '#29261d' })
    vim.api.nvim_set_hl(0, 'I2A422', { fg = '#26231b' })
    vim.api.nvim_set_hl(0, 'I2A423', { fg = '#24211c' })
    vim.api.nvim_set_hl(0, 'I2A424', { fg = '#1f1719' })
    vim.api.nvim_set_hl(0, 'I2A425', { fg = '#211b1a' })
    vim.api.nvim_set_hl(0, 'I2A426', { fg = '#56513f' })
    vim.api.nvim_set_hl(0, 'I2A427', { fg = '#c6c27f' })
    vim.api.nvim_set_hl(0, 'I2A428', { fg = '#d4c97a' })
    vim.api.nvim_set_hl(0, 'I2A429', { fg = '#dbbe6c' })
    vim.api.nvim_set_hl(0, 'I2A430', { fg = '#dabc69' })
    vim.api.nvim_set_hl(0, 'I2A431', { fg = '#ddc475' })
    vim.api.nvim_set_hl(0, 'I2A432', { fg = '#d8c071' })
    vim.api.nvim_set_hl(0, 'I2A433', { fg = '#e9d484' })
    vim.api.nvim_set_hl(0, 'I2A434', { fg = '#e5d384' })
    vim.api.nvim_set_hl(0, 'I2A435', { fg = '#decc7b' })
    vim.api.nvim_set_hl(0, 'I2A436', { fg = '#d3bf6f' })
    vim.api.nvim_set_hl(0, 'I2A437', { fg = '#d5bc6b' })
    vim.api.nvim_set_hl(0, 'I2A438', { fg = '#caad5d' })
    vim.api.nvim_set_hl(0, 'I2A439', { fg = '#c1a65b' })
    vim.api.nvim_set_hl(0, 'I2A440', { fg = '#a78551' })
    vim.api.nvim_set_hl(0, 'I2A441', { fg = '#81593b' })
    vim.api.nvim_set_hl(0, 'I2A442', { fg = '#825940' })
    vim.api.nvim_set_hl(0, 'I2A443', { fg = '#865e44' })
    vim.api.nvim_set_hl(0, 'I2A444', { fg = '#836145' })
    vim.api.nvim_set_hl(0, 'I2A445', { fg = '#7e6046' })
    vim.api.nvim_set_hl(0, 'I2A446', { fg = '#785639' })
    vim.api.nvim_set_hl(0, 'I2A447', { fg = '#9a7944' })
    vim.api.nvim_set_hl(0, 'I2A448', { fg = '#9c8042' })
    vim.api.nvim_set_hl(0, 'I2A449', { fg = '#9c7f41' })
    vim.api.nvim_set_hl(0, 'I2A450', { fg = '#9d8045' })
    vim.api.nvim_set_hl(0, 'I2A451', { fg = '#9d7e47' })
    vim.api.nvim_set_hl(0, 'I2A452', { fg = '#78512f' })
    vim.api.nvim_set_hl(0, 'I2A453', { fg = '#7f5535' })
    vim.api.nvim_set_hl(0, 'I2A454', { fg = '#8a5833' })
    vim.api.nvim_set_hl(0, 'I2A455', { fg = '#a0673a' })
    vim.api.nvim_set_hl(0, 'I2A456', { fg = '#b17a44' })
    vim.api.nvim_set_hl(0, 'I2A457', { fg = '#be8545' })
    vim.api.nvim_set_hl(0, 'I2A458', { fg = '#cca152' })
    vim.api.nvim_set_hl(0, 'I2A459', { fg = '#e2d589' })
    vim.api.nvim_set_hl(0, 'I2A460', { fg = '#7d7c68' })
    vim.api.nvim_set_hl(0, 'I2A461', { fg = '#27241d' })
    vim.api.nvim_set_hl(0, 'I2A462', { fg = '#1b1517' })
    vim.api.nvim_set_hl(0, 'I2A463', { fg = '#383329' })
    vim.api.nvim_set_hl(0, 'I2A464', { fg = '#b4ad71' })
    vim.api.nvim_set_hl(0, 'I2A465', { fg = '#d0c072' })
    vim.api.nvim_set_hl(0, 'I2A466', { fg = '#d5bb68' })
    vim.api.nvim_set_hl(0, 'I2A467', { fg = '#d1b260' })
    vim.api.nvim_set_hl(0, 'I2A468', { fg = '#cdaf60' })
    vim.api.nvim_set_hl(0, 'I2A469', { fg = '#c8b060' })
    vim.api.nvim_set_hl(0, 'I2A470', { fg = '#d0b96b' })
    vim.api.nvim_set_hl(0, 'I2A471', { fg = '#d5c273' })
    vim.api.nvim_set_hl(0, 'I2A472', { fg = '#d7c676' })
    vim.api.nvim_set_hl(0, 'I2A473', { fg = '#cebf6d' })
    vim.api.nvim_set_hl(0, 'I2A474', { fg = '#c2ac60' })
    vim.api.nvim_set_hl(0, 'I2A475', { fg = '#c1ad61' })
    vim.api.nvim_set_hl(0, 'I2A476', { fg = '#b89f62' })
    vim.api.nvim_set_hl(0, 'I2A477', { fg = '#6f4f36' })
    vim.api.nvim_set_hl(0, 'I2A478', { fg = '#2c2117' })
    vim.api.nvim_set_hl(0, 'I2A479', { fg = '#5a5250' })
    vim.api.nvim_set_hl(0, 'I2A480', { fg = '#77643a' })
    vim.api.nvim_set_hl(0, 'I2A481', { fg = '#795b29' })
    vim.api.nvim_set_hl(0, 'I2A482', { fg = '#8b6a32' })
    vim.api.nvim_set_hl(0, 'I2A483', { fg = '#896b2e' })
    vim.api.nvim_set_hl(0, 'I2A484', { fg = '#513e1a' })
    vim.api.nvim_set_hl(0, 'I2A485', { fg = '#86755e' })
    vim.api.nvim_set_hl(0, 'I2A486', { fg = '#816d54' })
    vim.api.nvim_set_hl(0, 'I2A487', { fg = '#826c4a' })
    vim.api.nvim_set_hl(0, 'I2A488', { fg = '#9c8654' })
    vim.api.nvim_set_hl(0, 'I2A489', { fg = '#a99b5f' })
    vim.api.nvim_set_hl(0, 'I2A490', { fg = '#7f6f5a' })
    vim.api.nvim_set_hl(0, 'I2A491', { fg = '#96692e' })
    vim.api.nvim_set_hl(0, 'I2A492', { fg = '#8a5c28' })
    vim.api.nvim_set_hl(0, 'I2A493', { fg = '#8c5830' })
    vim.api.nvim_set_hl(0, 'I2A494', { fg = '#9f602f' })
    vim.api.nvim_set_hl(0, 'I2A495', { fg = '#ab763e' })
    vim.api.nvim_set_hl(0, 'I2A496', { fg = '#b88f48' })
    vim.api.nvim_set_hl(0, 'I2A497', { fg = '#cebd74' })
    vim.api.nvim_set_hl(0, 'I2A498', { fg = '#403b27' })
    vim.api.nvim_set_hl(0, 'I2A499', { fg = '#25211d' })
    vim.api.nvim_set_hl(0, 'I2A500', { fg = '#201d17' })
    vim.api.nvim_set_hl(0, 'I2A501', { fg = '#1f1b18' })
    vim.api.nvim_set_hl(0, 'I2A502', { fg = '#241e1c' })
    vim.api.nvim_set_hl(0, 'I2A503', { fg = '#b4ad79' })
    vim.api.nvim_set_hl(0, 'I2A504', { fg = '#cabb6e' })
    vim.api.nvim_set_hl(0, 'I2A505', { fg = '#ccb160' })
    vim.api.nvim_set_hl(0, 'I2A506', { fg = '#d1b062' })
    vim.api.nvim_set_hl(0, 'I2A507', { fg = '#c6a658' })
    vim.api.nvim_set_hl(0, 'I2A508', { fg = '#cab062' })
    vim.api.nvim_set_hl(0, 'I2A509', { fg = '#cab76a' })
    vim.api.nvim_set_hl(0, 'I2A510', { fg = '#c6b164' })
    vim.api.nvim_set_hl(0, 'I2A511', { fg = '#c2ab5f' })
    vim.api.nvim_set_hl(0, 'I2A512', { fg = '#baa455' })
    vim.api.nvim_set_hl(0, 'I2A513', { fg = '#b4a45b' })
    vim.api.nvim_set_hl(0, 'I2A514', { fg = '#af9955' })
    vim.api.nvim_set_hl(0, 'I2A515', { fg = '#a48142' })
    vim.api.nvim_set_hl(0, 'I2A516', { fg = '#7f6442' })
    vim.api.nvim_set_hl(0, 'I2A517', { fg = '#3c2a1b' })
    vim.api.nvim_set_hl(0, 'I2A518', { fg = '#7a5f2f' })
    vim.api.nvim_set_hl(0, 'I2A519', { fg = '#967534' })
    vim.api.nvim_set_hl(0, 'I2A520', { fg = '#987832' })
    vim.api.nvim_set_hl(0, 'I2A521', { fg = '#a58240' })
    vim.api.nvim_set_hl(0, 'I2A522', { fg = '#ab8b43' })
    vim.api.nvim_set_hl(0, 'I2A523', { fg = '#32210d' })
    vim.api.nvim_set_hl(0, 'I2A524', { fg = '#9d8b7d' })
    vim.api.nvim_set_hl(0, 'I2A525', { fg = '#a29082' })
    vim.api.nvim_set_hl(0, 'I2A526', { fg = '#a59385' })
    vim.api.nvim_set_hl(0, 'I2A527', { fg = '#a49283' })
    vim.api.nvim_set_hl(0, 'I2A528', { fg = '#8b7c6a' })
    vim.api.nvim_set_hl(0, 'I2A529', { fg = '#9c743f' })
    vim.api.nvim_set_hl(0, 'I2A530', { fg = '#9d722d' })
    vim.api.nvim_set_hl(0, 'I2A531', { fg = '#936838' })
    vim.api.nvim_set_hl(0, 'I2A532', { fg = '#ae8857' })
    vim.api.nvim_set_hl(0, 'I2A533', { fg = '#a2652f' })
    vim.api.nvim_set_hl(0, 'I2A534', { fg = '#af7f41' })
    vim.api.nvim_set_hl(0, 'I2A535', { fg = '#c5a85d' })
    vim.api.nvim_set_hl(0, 'I2A536', { fg = '#918968' })
    vim.api.nvim_set_hl(0, 'I2A537', { fg = '#25201c' })
    vim.api.nvim_set_hl(0, 'I2A538', { fg = '#201c19' })
    vim.api.nvim_set_hl(0, 'I2A539', { fg = '#1d1917' })
    vim.api.nvim_set_hl(0, 'I2A540', { fg = '#191313' })
    vim.api.nvim_set_hl(0, 'I2A541', { fg = '#20181a' })
    vim.api.nvim_set_hl(0, 'I2A542', { fg = '#474130' })
    vim.api.nvim_set_hl(0, 'I2A543', { fg = '#bdb268' })
    vim.api.nvim_set_hl(0, 'I2A544', { fg = '#c4af60' })
    vim.api.nvim_set_hl(0, 'I2A545', { fg = '#c7af62' })
    vim.api.nvim_set_hl(0, 'I2A546', { fg = '#cbb361' })
    vim.api.nvim_set_hl(0, 'I2A547', { fg = '#cab567' })
    vim.api.nvim_set_hl(0, 'I2A548', { fg = '#c9b66a' })
    vim.api.nvim_set_hl(0, 'I2A549', { fg = '#c8b167' })
    vim.api.nvim_set_hl(0, 'I2A550', { fg = '#bfaa61' })
    vim.api.nvim_set_hl(0, 'I2A551', { fg = '#b29e59' })
    vim.api.nvim_set_hl(0, 'I2A552', { fg = '#ac9b56' })
    vim.api.nvim_set_hl(0, 'I2A553', { fg = '#9d793b' })
    vim.api.nvim_set_hl(0, 'I2A554', { fg = '#9c8543' })
    vim.api.nvim_set_hl(0, 'I2A555', { fg = '#a99161' })
    vim.api.nvim_set_hl(0, 'I2A556', { fg = '#887157' })
    vim.api.nvim_set_hl(0, 'I2A557', { fg = '#7d6a39' })
    vim.api.nvim_set_hl(0, 'I2A558', { fg = '#9f823b' })
    vim.api.nvim_set_hl(0, 'I2A559', { fg = '#ac8a41' })
    vim.api.nvim_set_hl(0, 'I2A560', { fg = '#b99c4c' })
    vim.api.nvim_set_hl(0, 'I2A561', { fg = '#69562e' })
    vim.api.nvim_set_hl(0, 'I2A562', { fg = '#a39588' })
    vim.api.nvim_set_hl(0, 'I2A563', { fg = '#ac9a8f' })
    vim.api.nvim_set_hl(0, 'I2A564', { fg = '#ae9d8c' })
    vim.api.nvim_set_hl(0, 'I2A565', { fg = '#ae9d8d' })
    vim.api.nvim_set_hl(0, 'I2A566', { fg = '#ad9c8d' })
    vim.api.nvim_set_hl(0, 'I2A567', { fg = '#847361' })
    vim.api.nvim_set_hl(0, 'I2A568', { fg = '#50391e' })
    vim.api.nvim_set_hl(0, 'I2A569', { fg = '#9b8665' })
    vim.api.nvim_set_hl(0, 'I2A570', { fg = '#c4ac73' })
    vim.api.nvim_set_hl(0, 'I2A571', { fg = '#aa7c3f' })
    vim.api.nvim_set_hl(0, 'I2A572', { fg = '#c4ad61' })
    vim.api.nvim_set_hl(0, 'I2A573', { fg = '#c7c285' })
    vim.api.nvim_set_hl(0, 'I2A574', { fg = '#241f16' })
    vim.api.nvim_set_hl(0, 'I2A575', { fg = '#221d18' })
    vim.api.nvim_set_hl(0, 'I2A576', { fg = '#1d1914' })
    vim.api.nvim_set_hl(0, 'I2A577', { fg = '#1b1815' })
    vim.api.nvim_set_hl(0, 'I2A578', { fg = '#191512' })
    vim.api.nvim_set_hl(0, 'I2A579', { fg = '#161010' })
    vim.api.nvim_set_hl(0, 'I2A580', { fg = '#161110' })
    vim.api.nvim_set_hl(0, 'I2A581', { fg = '#1a1615' })
    vim.api.nvim_set_hl(0, 'I2A582', { fg = '#17120f' })
    vim.api.nvim_set_hl(0, 'I2A583', { fg = '#b0a671' })
    vim.api.nvim_set_hl(0, 'I2A584', { fg = '#c4b46b' })
    vim.api.nvim_set_hl(0, 'I2A585', { fg = '#c6b265' })
    vim.api.nvim_set_hl(0, 'I2A586', { fg = '#c3ac5e' })
    vim.api.nvim_set_hl(0, 'I2A587', { fg = '#c2ab5e' })
    vim.api.nvim_set_hl(0, 'I2A588', { fg = '#c1ab5f' })
    vim.api.nvim_set_hl(0, 'I2A589', { fg = '#c4ad62' })
    vim.api.nvim_set_hl(0, 'I2A590', { fg = '#bda65c' })
    vim.api.nvim_set_hl(0, 'I2A591', { fg = '#bfa560' })
    vim.api.nvim_set_hl(0, 'I2A592', { fg = '#b99e5a' })
    vim.api.nvim_set_hl(0, 'I2A593', { fg = '#a48548' })
    vim.api.nvim_set_hl(0, 'I2A594', { fg = '#9f8d4d' })
    vim.api.nvim_set_hl(0, 'I2A595', { fg = '#a39054' })
    vim.api.nvim_set_hl(0, 'I2A596', { fg = '#b6a16a' })
    vim.api.nvim_set_hl(0, 'I2A597', { fg = '#927c51' })
    vim.api.nvim_set_hl(0, 'I2A598', { fg = '#917d66' })
    vim.api.nvim_set_hl(0, 'I2A599', { fg = '#8e7e69' })
    vim.api.nvim_set_hl(0, 'I2A600', { fg = '#928273' })
    vim.api.nvim_set_hl(0, 'I2A601', { fg = '#99877b' })
    vim.api.nvim_set_hl(0, 'I2A602', { fg = '#9e8c80' })
    vim.api.nvim_set_hl(0, 'I2A603', { fg = '#a49285' })
    vim.api.nvim_set_hl(0, 'I2A604', { fg = '#a69486' })
    vim.api.nvim_set_hl(0, 'I2A605', { fg = '#a79486' })
    vim.api.nvim_set_hl(0, 'I2A606', { fg = '#a89587' })
    vim.api.nvim_set_hl(0, 'I2A607', { fg = '#a79587' })
    vim.api.nvim_set_hl(0, 'I2A608', { fg = '#aa988a' })
    vim.api.nvim_set_hl(0, 'I2A609', { fg = '#a08b78' })
    vim.api.nvim_set_hl(0, 'I2A610', { fg = '#8e714b' })
    vim.api.nvim_set_hl(0, 'I2A611', { fg = '#a57f47' })
    vim.api.nvim_set_hl(0, 'I2A612', { fg = '#c4a55a' })
    vim.api.nvim_set_hl(0, 'I2A613', { fg = '#bdaa6e' })
    vim.api.nvim_set_hl(0, 'I2A614', { fg = '#2a1f12' })
    vim.api.nvim_set_hl(0, 'I2A615', { fg = '#212018' })
    vim.api.nvim_set_hl(0, 'I2A616', { fg = '#201f1b' })
    vim.api.nvim_set_hl(0, 'I2A617', { fg = '#1c1b17' })
    vim.api.nvim_set_hl(0, 'I2A618', { fg = '#1a1917' })
    vim.api.nvim_set_hl(0, 'I2A619', { fg = '#1b1a17' })
    vim.api.nvim_set_hl(0, 'I2A620', { fg = '#18100e' })
    vim.api.nvim_set_hl(0, 'I2A621', { fg = '#170e0e' })
    vim.api.nvim_set_hl(0, 'I2A622', { fg = '#191414' })
    vim.api.nvim_set_hl(0, 'I2A623', { fg = '#1c1716' })
    vim.api.nvim_set_hl(0, 'I2A624', { fg = '#231c15' })
    vim.api.nvim_set_hl(0, 'I2A625', { fg = '#a79c68' })
    vim.api.nvim_set_hl(0, 'I2A626', { fg = '#b7a865' })
    vim.api.nvim_set_hl(0, 'I2A627', { fg = '#b9a661' })
    vim.api.nvim_set_hl(0, 'I2A628', { fg = '#b9a460' })
    vim.api.nvim_set_hl(0, 'I2A629', { fg = '#bca55f' })
    vim.api.nvim_set_hl(0, 'I2A630', { fg = '#b8a15d' })
    vim.api.nvim_set_hl(0, 'I2A631', { fg = '#b69b58' })
    vim.api.nvim_set_hl(0, 'I2A632', { fg = '#c9b570' })
    vim.api.nvim_set_hl(0, 'I2A633', { fg = '#c4b76e' })
    vim.api.nvim_set_hl(0, 'I2A634', { fg = '#b89a56' })
    vim.api.nvim_set_hl(0, 'I2A635', { fg = '#a48544' })
    vim.api.nvim_set_hl(0, 'I2A636', { fg = '#a38543' })
    vim.api.nvim_set_hl(0, 'I2A637', { fg = '#a3884d' })
    vim.api.nvim_set_hl(0, 'I2A638', { fg = '#b9a46a' })
    vim.api.nvim_set_hl(0, 'I2A639', { fg = '#8e744d' })
    vim.api.nvim_set_hl(0, 'I2A640', { fg = '#91795c' })
    vim.api.nvim_set_hl(0, 'I2A641', { fg = '#947a62' })
    vim.api.nvim_set_hl(0, 'I2A642', { fg = '#937b65' })
    vim.api.nvim_set_hl(0, 'I2A643', { fg = '#97836d' })
    vim.api.nvim_set_hl(0, 'I2A644', { fg = '#98826d' })
    vim.api.nvim_set_hl(0, 'I2A645', { fg = '#978272' })
    vim.api.nvim_set_hl(0, 'I2A646', { fg = '#7f6757' })
    vim.api.nvim_set_hl(0, 'I2A647', { fg = '#a18b76' })
    vim.api.nvim_set_hl(0, 'I2A648', { fg = '#a28a6f' })
    vim.api.nvim_set_hl(0, 'I2A649', { fg = '#a08767' })
    vim.api.nvim_set_hl(0, 'I2A650', { fg = '#bb9a67' })
    vim.api.nvim_set_hl(0, 'I2A651', { fg = '#dfc07e' })
    vim.api.nvim_set_hl(0, 'I2A652', { fg = '#ccb96e' })
    vim.api.nvim_set_hl(0, 'I2A653', { fg = '#ada06a' })
    vim.api.nvim_set_hl(0, 'I2A654', { fg = '#1e1b13' })
    vim.api.nvim_set_hl(0, 'I2A655', { fg = '#1b1714' })
    vim.api.nvim_set_hl(0, 'I2A656', { fg = '#191514' })
    vim.api.nvim_set_hl(0, 'I2A657', { fg = '#181413' })
    vim.api.nvim_set_hl(0, 'I2A658', { fg = '#181412' })
    vim.api.nvim_set_hl(0, 'I2A659', { fg = '#160c10' })
    vim.api.nvim_set_hl(0, 'I2A660', { fg = '#150c10' })
    vim.api.nvim_set_hl(0, 'I2A661', { fg = '#151111' })
    vim.api.nvim_set_hl(0, 'I2A662', { fg = '#151010' })
    vim.api.nvim_set_hl(0, 'I2A663', { fg = '#4b4c49' })
    vim.api.nvim_set_hl(0, 'I2A664', { fg = '#afb4b0' })
    vim.api.nvim_set_hl(0, 'I2A665', { fg = '#ada677' })
    vim.api.nvim_set_hl(0, 'I2A666', { fg = '#b0a264' })
    vim.api.nvim_set_hl(0, 'I2A667', { fg = '#aea263' })
    vim.api.nvim_set_hl(0, 'I2A668', { fg = '#b1a05c' })
    vim.api.nvim_set_hl(0, 'I2A669', { fg = '#ad9452' })
    vim.api.nvim_set_hl(0, 'I2A670', { fg = '#ab9451' })
    vim.api.nvim_set_hl(0, 'I2A671', { fg = '#c2b26f' })
    vim.api.nvim_set_hl(0, 'I2A672', { fg = '#d4c280' })
    vim.api.nvim_set_hl(0, 'I2A673', { fg = '#dbc583' })
    vim.api.nvim_set_hl(0, 'I2A674', { fg = '#dbc883' })
    vim.api.nvim_set_hl(0, 'I2A675', { fg = '#dcc884' })
    vim.api.nvim_set_hl(0, 'I2A676', { fg = '#cdbb7b' })
    vim.api.nvim_set_hl(0, 'I2A677', { fg = '#ceb577' })
    vim.api.nvim_set_hl(0, 'I2A678', { fg = '#ccab6b' })
    vim.api.nvim_set_hl(0, 'I2A679', { fg = '#d2b070' })
    vim.api.nvim_set_hl(0, 'I2A680', { fg = '#e3c98b' })
    vim.api.nvim_set_hl(0, 'I2A681', { fg = '#edd695' })
    vim.api.nvim_set_hl(0, 'I2A682', { fg = '#f1db99' })
    vim.api.nvim_set_hl(0, 'I2A683', { fg = '#fbe8aa' })
    vim.api.nvim_set_hl(0, 'I2A684', { fg = '#fcecae' })
    vim.api.nvim_set_hl(0, 'I2A685', { fg = '#f7e4a5' })
    vim.api.nvim_set_hl(0, 'I2A686', { fg = '#eddc9e' })
    vim.api.nvim_set_hl(0, 'I2A687', { fg = '#d2ba75' })
    vim.api.nvim_set_hl(0, 'I2A688', { fg = '#bfa45e' })
    vim.api.nvim_set_hl(0, 'I2A689', { fg = '#b1a169' })
    vim.api.nvim_set_hl(0, 'I2A690', { fg = '#281b0e' })
    vim.api.nvim_set_hl(0, 'I2A691', { fg = '#1f1513' })
    vim.api.nvim_set_hl(0, 'I2A692', { fg = '#1a1411' })
    vim.api.nvim_set_hl(0, 'I2A693', { fg = '#1b1816' })
    vim.api.nvim_set_hl(0, 'I2A694', { fg = '#191816' })
    vim.api.nvim_set_hl(0, 'I2A695', { fg = '#171514' })
    vim.api.nvim_set_hl(0, 'I2A696', { fg = '#161311' })
    vim.api.nvim_set_hl(0, 'I2A697', { fg = '#171210' })
    vim.api.nvim_set_hl(0, 'I2A698', { fg = '#150e0f' })
    vim.api.nvim_set_hl(0, 'I2A699', { fg = '#150c0f' })
    vim.api.nvim_set_hl(0, 'I2A700', { fg = '#1a1415' })
    vim.api.nvim_set_hl(0, 'I2A701', { fg = '#999f98' })
    vim.api.nvim_set_hl(0, 'I2A702', { fg = '#838379' })
    vim.api.nvim_set_hl(0, 'I2A703', { fg = '#797664' })
    vim.api.nvim_set_hl(0, 'I2A704', { fg = '#75725c' })
    vim.api.nvim_set_hl(0, 'I2A705', { fg = '#88835c' })
    vim.api.nvim_set_hl(0, 'I2A706', { fg = '#a99e64' })
    vim.api.nvim_set_hl(0, 'I2A707', { fg = '#aa9d5f' })
    vim.api.nvim_set_hl(0, 'I2A708', { fg = '#a69757' })
    vim.api.nvim_set_hl(0, 'I2A709', { fg = '#a99451' })
    vim.api.nvim_set_hl(0, 'I2A710', { fg = '#b5a06d' })
    vim.api.nvim_set_hl(0, 'I2A711', { fg = '#b9ab88' })
    vim.api.nvim_set_hl(0, 'I2A712', { fg = '#c8ba87' })
    vim.api.nvim_set_hl(0, 'I2A713', { fg = '#bdad73' })
    vim.api.nvim_set_hl(0, 'I2A714', { fg = '#cdbf86' })
    vim.api.nvim_set_hl(0, 'I2A715', { fg = '#e6d9be' })
    vim.api.nvim_set_hl(0, 'I2A716', { fg = '#d7d1c1' })
    vim.api.nvim_set_hl(0, 'I2A717', { fg = '#bcbab2' })
    vim.api.nvim_set_hl(0, 'I2A718', { fg = '#bdbdbc' })
    vim.api.nvim_set_hl(0, 'I2A719', { fg = '#d2b79f' })
    vim.api.nvim_set_hl(0, 'I2A720', { fg = '#c5894e' })
    vim.api.nvim_set_hl(0, 'I2A721', { fg = '#c99e5d' })
    vim.api.nvim_set_hl(0, 'I2A722', { fg = '#bf935c' })
    vim.api.nvim_set_hl(0, 'I2A723', { fg = '#c89c61' })
    vim.api.nvim_set_hl(0, 'I2A724', { fg = '#d4a25d' })
    vim.api.nvim_set_hl(0, 'I2A725', { fg = '#d1a560' })
    vim.api.nvim_set_hl(0, 'I2A726', { fg = '#e5c88d' })
    vim.api.nvim_set_hl(0, 'I2A727', { fg = '#a28f5f' })
    vim.api.nvim_set_hl(0, 'I2A728', { fg = '#23140b' })
    vim.api.nvim_set_hl(0, 'I2A729', { fg = '#221411' })
    vim.api.nvim_set_hl(0, 'I2A730', { fg = '#1e1312' })
    vim.api.nvim_set_hl(0, 'I2A731', { fg = '#1c1211' })
    vim.api.nvim_set_hl(0, 'I2A732', { fg = '#19100e' })
    vim.api.nvim_set_hl(0, 'I2A733', { fg = '#1a100f' })
    vim.api.nvim_set_hl(0, 'I2A734', { fg = '#1b1110' })
    vim.api.nvim_set_hl(0, 'I2A735', { fg = '#190e0e' })
    vim.api.nvim_set_hl(0, 'I2A736', { fg = '#1a0f0e' })
    vim.api.nvim_set_hl(0, 'I2A737', { fg = '#140d0e' })
    vim.api.nvim_set_hl(0, 'I2A738', { fg = '#110c10' })
    vim.api.nvim_set_hl(0, 'I2A739', { fg = '#75726d' })
    vim.api.nvim_set_hl(0, 'I2A740', { fg = '#847f6d' })
    vim.api.nvim_set_hl(0, 'I2A741', { fg = '#817c69' })
    vim.api.nvim_set_hl(0, 'I2A742', { fg = '#757461' })
    vim.api.nvim_set_hl(0, 'I2A743', { fg = '#605f4d' })
    vim.api.nvim_set_hl(0, 'I2A744', { fg = '#aca480' })
    vim.api.nvim_set_hl(0, 'I2A745', { fg = '#584e2d' })
    vim.api.nvim_set_hl(0, 'I2A746', { fg = '#3f3120' })
    vim.api.nvim_set_hl(0, 'I2A747', { fg = '#3d301e' })
    vim.api.nvim_set_hl(0, 'I2A748', { fg = '#9f9b97' })
    vim.api.nvim_set_hl(0, 'I2A749', { fg = '#a3a29e' })
    vim.api.nvim_set_hl(0, 'I2A750', { fg = '#97968f' })
    vim.api.nvim_set_hl(0, 'I2A751', { fg = '#9e9885' })
    vim.api.nvim_set_hl(0, 'I2A752', { fg = '#98885c' })
    vim.api.nvim_set_hl(0, 'I2A753', { fg = '#98875a' })
    vim.api.nvim_set_hl(0, 'I2A754', { fg = '#9e9a96' })
    vim.api.nvim_set_hl(0, 'I2A755', { fg = '#a6a3a5' })
    vim.api.nvim_set_hl(0, 'I2A756', { fg = '#b4b1b4' })
    vim.api.nvim_set_hl(0, 'I2A757', { fg = '#a89463' })
    vim.api.nvim_set_hl(0, 'I2A758', { fg = '#ab945f' })
    vim.api.nvim_set_hl(0, 'I2A759', { fg = '#866a3f' })
    vim.api.nvim_set_hl(0, 'I2A760', { fg = '#7b5b3b' })
    vim.api.nvim_set_hl(0, 'I2A761', { fg = '#6c4c31' })
    vim.api.nvim_set_hl(0, 'I2A762', { fg = '#7a5a3d' })
    vim.api.nvim_set_hl(0, 'I2A763', { fg = '#7b5a3e' })
    vim.api.nvim_set_hl(0, 'I2A764', { fg = '#79563a' })
    vim.api.nvim_set_hl(0, 'I2A765', { fg = '#79563e' })
    vim.api.nvim_set_hl(0, 'I2A766', { fg = '#7f5f49' })
    vim.api.nvim_set_hl(0, 'I2A767', { fg = '#604a3b' })
    vim.api.nvim_set_hl(0, 'I2A768', { fg = '#1c1110' })
    vim.api.nvim_set_hl(0, 'I2A769', { fg = '#190f0e' })
    vim.api.nvim_set_hl(0, 'I2A770', { fg = '#160b0e' })
    vim.api.nvim_set_hl(0, 'I2A771', { fg = '#160e0d' })
    vim.api.nvim_set_hl(0, 'I2A772', { fg = '#130f10' })
    vim.api.nvim_set_hl(0, 'I2A773', { fg = '#141011' })
    vim.api.nvim_set_hl(0, 'I2A774', { fg = '#110d0e' })
    vim.api.nvim_set_hl(0, 'I2A775', { fg = '#3c3a2d' })
    vim.api.nvim_set_hl(0, 'I2A776', { fg = '#d1caa1' })
    vim.api.nvim_set_hl(0, 'I2A777', { fg = '#d6c88f' })
    vim.api.nvim_set_hl(0, 'I2A778', { fg = '#cdbd83' })
    vim.api.nvim_set_hl(0, 'I2A779', { fg = '#665736' })
    vim.api.nvim_set_hl(0, 'I2A780', { fg = '#4f402b' })
    vim.api.nvim_set_hl(0, 'I2A781', { fg = '#9f927e' })
    vim.api.nvim_set_hl(0, 'I2A782', { fg = '#958a7d' })
    vim.api.nvim_set_hl(0, 'I2A783', { fg = '#928a62' })
    vim.api.nvim_set_hl(0, 'I2A784', { fg = '#bbad73' })
    vim.api.nvim_set_hl(0, 'I2A785', { fg = '#b3a56d' })
    vim.api.nvim_set_hl(0, 'I2A786', { fg = '#a79865' })
    vim.api.nvim_set_hl(0, 'I2A787', { fg = '#342b20' })
    vim.api.nvim_set_hl(0, 'I2A788', { fg = '#7e7a73' })
    vim.api.nvim_set_hl(0, 'I2A789', { fg = '#493423' })
    vim.api.nvim_set_hl(0, 'I2A790', { fg = '#59402c' })
    vim.api.nvim_set_hl(0, 'I2A791', { fg = '#614733' })
    vim.api.nvim_set_hl(0, 'I2A792', { fg = '#634834' })
    vim.api.nvim_set_hl(0, 'I2A793', { fg = '#6a4b33' })
    vim.api.nvim_set_hl(0, 'I2A794', { fg = '#684a32' })
    vim.api.nvim_set_hl(0, 'I2A795', { fg = '#6c4e37' })
    vim.api.nvim_set_hl(0, 'I2A796', { fg = '#74533f' })
    vim.api.nvim_set_hl(0, 'I2A797', { fg = '#72503a' })
    vim.api.nvim_set_hl(0, 'I2A798', { fg = '#74523c' })
    vim.api.nvim_set_hl(0, 'I2A799', { fg = '#795740' })
    vim.api.nvim_set_hl(0, 'I2A800', { fg = '#84664b' })
    vim.api.nvim_set_hl(0, 'I2A801', { fg = '#8f7e68' })
    vim.api.nvim_set_hl(0, 'I2A802', { fg = '#1b1311' })
    vim.api.nvim_set_hl(0, 'I2A803', { fg = '#1a1112' })
    vim.api.nvim_set_hl(0, 'I2A804', { fg = '#191011' })
    vim.api.nvim_set_hl(0, 'I2A805', { fg = '#181010' })
    vim.api.nvim_set_hl(0, 'I2A806', { fg = '#190f0f' })
    vim.api.nvim_set_hl(0, 'I2A807', { fg = '#191010' })
    vim.api.nvim_set_hl(0, 'I2A808', { fg = '#150d0e' })
    vim.api.nvim_set_hl(0, 'I2A809', { fg = '#151011' })
    vim.api.nvim_set_hl(0, 'I2A810', { fg = '#121010' })
    vim.api.nvim_set_hl(0, 'I2A811', { fg = '#110f10' })
    vim.api.nvim_set_hl(0, 'I2A812', { fg = '#342f2a' })
    vim.api.nvim_set_hl(0, 'I2A813', { fg = '#a69c7b' })
    vim.api.nvim_set_hl(0, 'I2A814', { fg = '#dcd29c' })
    vim.api.nvim_set_hl(0, 'I2A815', { fg = '#dbcd8e' })
    vim.api.nvim_set_hl(0, 'I2A816', { fg = '#d5c27f' })
    vim.api.nvim_set_hl(0, 'I2A817', { fg = '#c1ab7c' })
    vim.api.nvim_set_hl(0, 'I2A818', { fg = '#b9a893' })
    vim.api.nvim_set_hl(0, 'I2A819', { fg = '#baa994' })
    vim.api.nvim_set_hl(0, 'I2A820', { fg = '#a28f79' })
    vim.api.nvim_set_hl(0, 'I2A821', { fg = '#836f57' })
    vim.api.nvim_set_hl(0, 'I2A822', { fg = '#897a54' })
    vim.api.nvim_set_hl(0, 'I2A823', { fg = '#b9ae7a' })
    vim.api.nvim_set_hl(0, 'I2A824', { fg = '#302413' })
    vim.api.nvim_set_hl(0, 'I2A825', { fg = '#48382b' })
    vim.api.nvim_set_hl(0, 'I2A826', { fg = '#3f2e20' })
    vim.api.nvim_set_hl(0, 'I2A827', { fg = '#423022' })
    vim.api.nvim_set_hl(0, 'I2A828', { fg = '#4f3b29' })
    vim.api.nvim_set_hl(0, 'I2A829', { fg = '#523e2b' })
    vim.api.nvim_set_hl(0, 'I2A830', { fg = '#5f462f' })
    vim.api.nvim_set_hl(0, 'I2A831', { fg = '#6b5637' })
    vim.api.nvim_set_hl(0, 'I2A832', { fg = '#a38c6a' })
    vim.api.nvim_set_hl(0, 'I2A833', { fg = '#bdab82' })
    vim.api.nvim_set_hl(0, 'I2A834', { fg = '#eadbab' })
    vim.api.nvim_set_hl(0, 'I2A835', { fg = '#f7edb7' })
    vim.api.nvim_set_hl(0, 'I2A836', { fg = '#fbf5bd' })
    vim.api.nvim_set_hl(0, 'I2A837', { fg = '#fffac4' })
    vim.api.nvim_set_hl(0, 'I2A838', { fg = '#fcf7c4' })
    vim.api.nvim_set_hl(0, 'I2A839', { fg = '#eee9b9' })
    vim.api.nvim_set_hl(0, 'I2A840', { fg = '#6e6750' })
    vim.api.nvim_set_hl(0, 'I2A841', { fg = '#1f1413' })
    vim.api.nvim_set_hl(0, 'I2A842', { fg = '#1a1113' })
    vim.api.nvim_set_hl(0, 'I2A843', { fg = '#180f10' })
    vim.api.nvim_set_hl(0, 'I2A844', { fg = '#180f0f' })
    vim.api.nvim_set_hl(0, 'I2A845', { fg = '#180d0d' })
    vim.api.nvim_set_hl(0, 'I2A846', { fg = '#160d0d' })
    vim.api.nvim_set_hl(0, 'I2A847', { fg = '#171010' })
    vim.api.nvim_set_hl(0, 'I2A848', { fg = '#13100f' })
    vim.api.nvim_set_hl(0, 'I2A849', { fg = '#100f0e' })
    vim.api.nvim_set_hl(0, 'I2A850', { fg = '#0f0d0a' })
    vim.api.nvim_set_hl(0, 'I2A851', { fg = '#776d5a' })
    vim.api.nvim_set_hl(0, 'I2A852', { fg = '#594536' })
    vim.api.nvim_set_hl(0, 'I2A853', { fg = '#c3ba94' })
    vim.api.nvim_set_hl(0, 'I2A854', { fg = '#d7c6a7' })
    vim.api.nvim_set_hl(0, 'I2A855', { fg = '#dfcbc4' })
    vim.api.nvim_set_hl(0, 'I2A856', { fg = '#e5d2d0' })
    vim.api.nvim_set_hl(0, 'I2A857', { fg = '#e6d3d0' })
    vim.api.nvim_set_hl(0, 'I2A858', { fg = '#ddcac3' })
    vim.api.nvim_set_hl(0, 'I2A859', { fg = '#cbb5aa' })
    vim.api.nvim_set_hl(0, 'I2A860', { fg = '#938068' })
    vim.api.nvim_set_hl(0, 'I2A861', { fg = '#8a6d4a' })
    vim.api.nvim_set_hl(0, 'I2A862', { fg = '#917a51' })
    vim.api.nvim_set_hl(0, 'I2A863', { fg = '#ad9b61' })
    vim.api.nvim_set_hl(0, 'I2A864', { fg = '#d6c286' })
    vim.api.nvim_set_hl(0, 'I2A865', { fg = '#d5c989' })
    vim.api.nvim_set_hl(0, 'I2A866', { fg = '#dacb8c' })
    vim.api.nvim_set_hl(0, 'I2A867', { fg = '#e4d494' })
    vim.api.nvim_set_hl(0, 'I2A868', { fg = '#e9d99b' })
    vim.api.nvim_set_hl(0, 'I2A869', { fg = '#eddf9e' })
    vim.api.nvim_set_hl(0, 'I2A870', { fg = '#ebe19e' })
    vim.api.nvim_set_hl(0, 'I2A871', { fg = '#ece1a2' })
    vim.api.nvim_set_hl(0, 'I2A872', { fg = '#f4ebae' })
    vim.api.nvim_set_hl(0, 'I2A873', { fg = '#f5ecb0' })
    vim.api.nvim_set_hl(0, 'I2A874', { fg = '#f8efb3' })
    vim.api.nvim_set_hl(0, 'I2A875', { fg = '#f6f0b5' })
    vim.api.nvim_set_hl(0, 'I2A876', { fg = '#f6efba' })
    vim.api.nvim_set_hl(0, 'I2A877', { fg = '#f1ecb8' })
    vim.api.nvim_set_hl(0, 'I2A878', { fg = '#e6e5b2' })
    vim.api.nvim_set_hl(0, 'I2A879', { fg = '#989278' })
    vim.api.nvim_set_hl(0, 'I2A880', { fg = '#1e1513' })
    vim.api.nvim_set_hl(0, 'I2A881', { fg = '#160f0d' })
    vim.api.nvim_set_hl(0, 'I2A882', { fg = '#190d0d' })
    vim.api.nvim_set_hl(0, 'I2A883', { fg = '#131110' })
    vim.api.nvim_set_hl(0, 'I2A884', { fg = '#111010' })
    vim.api.nvim_set_hl(0, 'I2A885', { fg = '#282523' })
    vim.api.nvim_set_hl(0, 'I2A886', { fg = '#847c68' })
    vim.api.nvim_set_hl(0, 'I2A887', { fg = '#5a4a39' })
    vim.api.nvim_set_hl(0, 'I2A888', { fg = '#d7c4be' })
    vim.api.nvim_set_hl(0, 'I2A889', { fg = '#ddc8c3' })
    vim.api.nvim_set_hl(0, 'I2A890', { fg = '#dbc8c2' })
    vim.api.nvim_set_hl(0, 'I2A891', { fg = '#d7c5bf' })
    vim.api.nvim_set_hl(0, 'I2A892', { fg = '#d5c2bb' })
    vim.api.nvim_set_hl(0, 'I2A893', { fg = '#cdb8af' })
    vim.api.nvim_set_hl(0, 'I2A894', { fg = '#bfa786' })
    vim.api.nvim_set_hl(0, 'I2A895', { fg = '#d3b77d' })
    vim.api.nvim_set_hl(0, 'I2A896', { fg = '#e1c784' })
    vim.api.nvim_set_hl(0, 'I2A897', { fg = '#e8d690' })
    vim.api.nvim_set_hl(0, 'I2A898', { fg = '#e1d38e' })
    vim.api.nvim_set_hl(0, 'I2A899', { fg = '#e4d493' })
    vim.api.nvim_set_hl(0, 'I2A900', { fg = '#e0d591' })
    vim.api.nvim_set_hl(0, 'I2A901', { fg = '#dbcc89' })
    vim.api.nvim_set_hl(0, 'I2A902', { fg = '#d7c985' })
    vim.api.nvim_set_hl(0, 'I2A903', { fg = '#d9c883' })
    vim.api.nvim_set_hl(0, 'I2A904', { fg = '#dccb85' })
    vim.api.nvim_set_hl(0, 'I2A905', { fg = '#dfd38d' })
    vim.api.nvim_set_hl(0, 'I2A906', { fg = '#e6db99' })
    vim.api.nvim_set_hl(0, 'I2A907', { fg = '#e9dc9c' })
    vim.api.nvim_set_hl(0, 'I2A908', { fg = '#e8da9b' })
    vim.api.nvim_set_hl(0, 'I2A909', { fg = '#eadea4' })
    vim.api.nvim_set_hl(0, 'I2A910', { fg = '#dfd4a0' })
    vim.api.nvim_set_hl(0, 'I2A911', { fg = '#92835b' })
    vim.api.nvim_set_hl(0, 'I2A912', { fg = '#7d684a' })
    vim.api.nvim_set_hl(0, 'I2A913', { fg = '#72583e' })
    vim.api.nvim_set_hl(0, 'I2A914', { fg = '#302618' })
    vim.api.nvim_set_hl(0, 'I2A915', { fg = '#181612' })
    vim.api.nvim_set_hl(0, 'I2A916', { fg = '#17100e' })
    vim.api.nvim_set_hl(0, 'I2A917', { fg = '#73605a' })
    vim.api.nvim_set_hl(0, 'I2A918', { fg = '#9e7e6d' })
    vim.api.nvim_set_hl(0, 'I2A919', { fg = '#594033' })
    vim.api.nvim_set_hl(0, 'I2A920', { fg = '#a0977c' })
    vim.api.nvim_set_hl(0, 'I2A921', { fg = '#92866c' })
    vim.api.nvim_set_hl(0, 'I2A922', { fg = '#a5948b' })
    vim.api.nvim_set_hl(0, 'I2A923', { fg = '#ad9c96' })
    vim.api.nvim_set_hl(0, 'I2A924', { fg = '#b6a1a0' })
    vim.api.nvim_set_hl(0, 'I2A925', { fg = '#b09d9b' })
    vim.api.nvim_set_hl(0, 'I2A926', { fg = '#a3908c' })
    vim.api.nvim_set_hl(0, 'I2A927', { fg = '#56442e' })
    vim.api.nvim_set_hl(0, 'I2A928', { fg = '#beaa7e' })
    vim.api.nvim_set_hl(0, 'I2A929', { fg = '#d5c18d' })
    vim.api.nvim_set_hl(0, 'I2A930', { fg = '#d6c28e' })
    vim.api.nvim_set_hl(0, 'I2A931', { fg = '#d2c187' })
    vim.api.nvim_set_hl(0, 'I2A932', { fg = '#cec186' })
    vim.api.nvim_set_hl(0, 'I2A933', { fg = '#ccc17f' })
    vim.api.nvim_set_hl(0, 'I2A934', { fg = '#c7bd7f' })
    vim.api.nvim_set_hl(0, 'I2A935', { fg = '#c0b576' })
    vim.api.nvim_set_hl(0, 'I2A936', { fg = '#c0af76' })
    vim.api.nvim_set_hl(0, 'I2A937', { fg = '#b39e6b' })
    vim.api.nvim_set_hl(0, 'I2A938', { fg = '#8d7650' })
    vim.api.nvim_set_hl(0, 'I2A939', { fg = '#66522f' })
    vim.api.nvim_set_hl(0, 'I2A940', { fg = '#604734' })
    vim.api.nvim_set_hl(0, 'I2A941', { fg = '#513729' })
    vim.api.nvim_set_hl(0, 'I2A942', { fg = '#503a2d' })
    vim.api.nvim_set_hl(0, 'I2A943', { fg = '#4c372d' })
    vim.api.nvim_set_hl(0, 'I2A944', { fg = '#50382b' })
    vim.api.nvim_set_hl(0, 'I2A945', { fg = '#533c2a' })
    vim.api.nvim_set_hl(0, 'I2A946', { fg = '#705945' })
    vim.api.nvim_set_hl(0, 'I2A947', { fg = '#c1b1b1' })
    vim.api.nvim_set_hl(0, 'I2A948', { fg = '#554846' })
    vim.api.nvim_set_hl(0, 'I2A949', { fg = '#251719' })
    vim.api.nvim_set_hl(0, 'I2A950', { fg = '#1e1314' })
    vim.api.nvim_set_hl(0, 'I2A951', { fg = '#1d0f12' })
    vim.api.nvim_set_hl(0, 'I2A952', { fg = '#1a1011' })
    vim.api.nvim_set_hl(0, 'I2A953', { fg = '#170f0d' })
    vim.api.nvim_set_hl(0, 'I2A954', { fg = '#665453' })
    vim.api.nvim_set_hl(0, 'I2A955', { fg = '#a98980' })
    vim.api.nvim_set_hl(0, 'I2A956', { fg = '#9b7a66' })
    vim.api.nvim_set_hl(0, 'I2A957', { fg = '#7e5f51' })
    vim.api.nvim_set_hl(0, 'I2A958', { fg = '#2f2014' })
    vim.api.nvim_set_hl(0, 'I2A959', { fg = '#a4997c' })
    vim.api.nvim_set_hl(0, 'I2A960', { fg = '#c1b894' })
    vim.api.nvim_set_hl(0, 'I2A961', { fg = '#81765a' })
    vim.api.nvim_set_hl(0, 'I2A962', { fg = '#47362d' })
    vim.api.nvim_set_hl(0, 'I2A963', { fg = '#443329' })
    vim.api.nvim_set_hl(0, 'I2A964', { fg = '#3d2e23' })
    vim.api.nvim_set_hl(0, 'I2A965', { fg = '#3b2d22' })
    vim.api.nvim_set_hl(0, 'I2A966', { fg = '#3a2b1e' })
    vim.api.nvim_set_hl(0, 'I2A967', { fg = '#38271d' })
    vim.api.nvim_set_hl(0, 'I2A968', { fg = '#392820' })
    vim.api.nvim_set_hl(0, 'I2A969', { fg = '#3b2a20' })
    vim.api.nvim_set_hl(0, 'I2A970', { fg = '#3a291f' })
    vim.api.nvim_set_hl(0, 'I2A971', { fg = '#433127' })
    vim.api.nvim_set_hl(0, 'I2A972', { fg = '#3c2a20' })
    vim.api.nvim_set_hl(0, 'I2A973', { fg = '#3d2920' })
    vim.api.nvim_set_hl(0, 'I2A974', { fg = '#443127' })
    vim.api.nvim_set_hl(0, 'I2A975', { fg = '#4d3a2b' })
    vim.api.nvim_set_hl(0, 'I2A976', { fg = '#4a3426' })
    vim.api.nvim_set_hl(0, 'I2A977', { fg = '#493428' })
    vim.api.nvim_set_hl(0, 'I2A978', { fg = '#4a3529' })
    vim.api.nvim_set_hl(0, 'I2A979', { fg = '#4b3528' })
    vim.api.nvim_set_hl(0, 'I2A980', { fg = '#877466' })
    vim.api.nvim_set_hl(0, 'I2A981', { fg = '#827067' })
    vim.api.nvim_set_hl(0, 'I2A982', { fg = '#9b8b82' })
    vim.api.nvim_set_hl(0, 'I2A983', { fg = '#c6b7b7' })
    vim.api.nvim_set_hl(0, 'I2A984', { fg = '#b5a5a6' })
    vim.api.nvim_set_hl(0, 'I2A985', { fg = '#c4b4b4' })
    vim.api.nvim_set_hl(0, 'I2A986', { fg = '#cdbdbd' })
    vim.api.nvim_set_hl(0, 'I2A987', { fg = '#b5a7a9' })
    vim.api.nvim_set_hl(0, 'I2A988', { fg = '#1c1519' })
    vim.api.nvim_set_hl(0, 'I2A989', { fg = '#19191a' })
    vim.api.nvim_set_hl(0, 'I2A990', { fg = '#1e1e21' })
    vim.api.nvim_set_hl(0, 'I2A991', { fg = '#201c22' })
    vim.api.nvim_set_hl(0, 'I2A992', { fg = '#1b1019' })
    vim.api.nvim_set_hl(0, 'I2A993', { fg = '#372b2c' })
    vim.api.nvim_set_hl(0, 'I2A994', { fg = '#9f857e' })
    vim.api.nvim_set_hl(0, 'I2A995', { fg = '#ab9188' })
    vim.api.nvim_set_hl(0, 'I2A996', { fg = '#af968b' })
    vim.api.nvim_set_hl(0, 'I2A997', { fg = '#a58d81' })
    vim.api.nvim_set_hl(0, 'I2A998', { fg = '#443129' })
    vim.api.nvim_set_hl(0, 'I2A999', { fg = '#22110a' })
    vim.api.nvim_set_hl(0, 'I2A1000', { fg = '#514033' })
    vim.api.nvim_set_hl(0, 'I2A1001', { fg = '#847557' })
    vim.api.nvim_set_hl(0, 'I2A1002', { fg = '#90815f' })
    vim.api.nvim_set_hl(0, 'I2A1003', { fg = '#9c8e6b' })
    vim.api.nvim_set_hl(0, 'I2A1004', { fg = '#9b8c6a' })
    vim.api.nvim_set_hl(0, 'I2A1005', { fg = '#a19271' })
    vim.api.nvim_set_hl(0, 'I2A1006', { fg = '#8c7e5b' })
    vim.api.nvim_set_hl(0, 'I2A1007', { fg = '#736546' })
    vim.api.nvim_set_hl(0, 'I2A1008', { fg = '#61513a' })
    vim.api.nvim_set_hl(0, 'I2A1009', { fg = '#665544' })
    vim.api.nvim_set_hl(0, 'I2A1010', { fg = '#89796a' })
    vim.api.nvim_set_hl(0, 'I2A1011', { fg = '#82766d' })
    vim.api.nvim_set_hl(0, 'I2A1012', { fg = '#968c83' })
    vim.api.nvim_set_hl(0, 'I2A1013', { fg = '#afa5a3' })
    vim.api.nvim_set_hl(0, 'I2A1014', { fg = '#c7bbbb' })
    vim.api.nvim_set_hl(0, 'I2A1015', { fg = '#d0c4c4' })
    vim.api.nvim_set_hl(0, 'I2A1016', { fg = '#c8b6b6' })
    vim.api.nvim_set_hl(0, 'I2A1017', { fg = '#766461' })
    vim.api.nvim_set_hl(0, 'I2A1018', { fg = '#624b46' })
    vim.api.nvim_set_hl(0, 'I2A1019', { fg = '#755d60' })
    vim.api.nvim_set_hl(0, 'I2A1020', { fg = '#7b6869' })
    vim.api.nvim_set_hl(0, 'I2A1021', { fg = '#897a7d' })
    vim.api.nvim_set_hl(0, 'I2A1022', { fg = '#86797e' })
    vim.api.nvim_set_hl(0, 'I2A1023', { fg = '#968a8b' })
    vim.api.nvim_set_hl(0, 'I2A1024', { fg = '#a19189' })
    vim.api.nvim_set_hl(0, 'I2A1025', { fg = '#9b8379' })
    vim.api.nvim_set_hl(0, 'I2A1026', { fg = '#9c857d' })
    vim.api.nvim_set_hl(0, 'I2A1027', { fg = '#9c8983' })
    vim.api.nvim_set_hl(0, 'I2A1028', { fg = '#605456' })
    vim.api.nvim_set_hl(0, 'I2A1029', { fg = '#101013' })
    vim.api.nvim_set_hl(0, 'I2A1030', { fg = '#141519' })
    vim.api.nvim_set_hl(0, 'I2A1031', { fg = '#17161e' })
    vim.api.nvim_set_hl(0, 'I2A1032', { fg = '#1a191d' })
    vim.api.nvim_set_hl(0, 'I2A1033', { fg = '#170f0e' })
    vim.api.nvim_set_hl(0, 'I2A1034', { fg = '#56443e' })
    vim.api.nvim_set_hl(0, 'I2A1035', { fg = '#a79084' })
    vim.api.nvim_set_hl(0, 'I2A1036', { fg = '#ae968b' })
    vim.api.nvim_set_hl(0, 'I2A1037', { fg = '#ae988d' })
    vim.api.nvim_set_hl(0, 'I2A1038', { fg = '#a8948a' })
    vim.api.nvim_set_hl(0, 'I2A1039', { fg = '#ac9892' })
    vim.api.nvim_set_hl(0, 'I2A1040', { fg = '#b5a19f' })
    vim.api.nvim_set_hl(0, 'I2A1041', { fg = '#bda9ab' })
    vim.api.nvim_set_hl(0, 'I2A1042', { fg = '#bba6ae' })
    vim.api.nvim_set_hl(0, 'I2A1043', { fg = '#b19c9e' })
    vim.api.nvim_set_hl(0, 'I2A1044', { fg = '#a8948e' })
    vim.api.nvim_set_hl(0, 'I2A1045', { fg = '#8d7970' })
    vim.api.nvim_set_hl(0, 'I2A1046', { fg = '#4c3931' })
    vim.api.nvim_set_hl(0, 'I2A1047', { fg = '#1b0e06' })
    vim.api.nvim_set_hl(0, 'I2A1048', { fg = '#827671' })
    vim.api.nvim_set_hl(0, 'I2A1049', { fg = '#98939a' })
    vim.api.nvim_set_hl(0, 'I2A1050', { fg = '#9ea1a6' })
    vim.api.nvim_set_hl(0, 'I2A1051', { fg = '#b2b1b4' })
    vim.api.nvim_set_hl(0, 'I2A1052', { fg = '#c1aeb0' })
    vim.api.nvim_set_hl(0, 'I2A1053', { fg = '#c5b6b0' })
    vim.api.nvim_set_hl(0, 'I2A1054', { fg = '#d6c7c4' })
    vim.api.nvim_set_hl(0, 'I2A1055', { fg = '#252024' })
    vim.api.nvim_set_hl(0, 'I2A1056', { fg = '#1c1824' })
    vim.api.nvim_set_hl(0, 'I2A1057', { fg = '#262228' })
    vim.api.nvim_set_hl(0, 'I2A1058', { fg = '#4b3b3c' })
    vim.api.nvim_set_hl(0, 'I2A1059', { fg = '#6b5759' })
    vim.api.nvim_set_hl(0, 'I2A1060', { fg = '#796366' })
    vim.api.nvim_set_hl(0, 'I2A1061', { fg = '#7f6b6c' })
    vim.api.nvim_set_hl(0, 'I2A1062', { fg = '#907c7b' })
    vim.api.nvim_set_hl(0, 'I2A1063', { fg = '#836763' })
    vim.api.nvim_set_hl(0, 'I2A1064', { fg = '#86695e' })
    vim.api.nvim_set_hl(0, 'I2A1065', { fg = '#86685e' })
    vim.api.nvim_set_hl(0, 'I2A1066', { fg = '#856960' })
    vim.api.nvim_set_hl(0, 'I2A1067', { fg = '#524540' })
    vim.api.nvim_set_hl(0, 'I2A1068', { fg = '#0a090c' })
    vim.api.nvim_set_hl(0, 'I2A1069', { fg = '#08090b' })
    vim.api.nvim_set_hl(0, 'I2A1070', { fg = '#0b0e10' })
    vim.api.nvim_set_hl(0, 'I2A1071', { fg = '#0d0f11' })
    vim.api.nvim_set_hl(0, 'I2A1072', { fg = '#1a1519' })
    vim.api.nvim_set_hl(0, 'I2A1073', { fg = '#1c1112' })
    vim.api.nvim_set_hl(0, 'I2A1074', { fg = '#91837b' })
    vim.api.nvim_set_hl(0, 'I2A1075', { fg = '#9e8d83' })
    vim.api.nvim_set_hl(0, 'I2A1076', { fg = '#9e8c82' })
    vim.api.nvim_set_hl(0, 'I2A1077', { fg = '#a59389' })
    vim.api.nvim_set_hl(0, 'I2A1078', { fg = '#ae9c92' })
    vim.api.nvim_set_hl(0, 'I2A1079', { fg = '#b6a2a0' })
    vim.api.nvim_set_hl(0, 'I2A1080', { fg = '#c0acad' })
    vim.api.nvim_set_hl(0, 'I2A1081', { fg = '#c6b1b7' })
    vim.api.nvim_set_hl(0, 'I2A1082', { fg = '#ccb7bd' })
    vim.api.nvim_set_hl(0, 'I2A1083', { fg = '#d0bbc3' })
    vim.api.nvim_set_hl(0, 'I2A1084', { fg = '#d1bdc6' })
    vim.api.nvim_set_hl(0, 'I2A1085', { fg = '#ceb8c2' })
    vim.api.nvim_set_hl(0, 'I2A1086', { fg = '#c2acb7' })
    vim.api.nvim_set_hl(0, 'I2A1087', { fg = '#af9a9e' })
    vim.api.nvim_set_hl(0, 'I2A1088', { fg = '#655659' })
    vim.api.nvim_set_hl(0, 'I2A1089', { fg = '#bcb3b8' })
    vim.api.nvim_set_hl(0, 'I2A1090', { fg = '#b19f9b' })
    vim.api.nvim_set_hl(0, 'I2A1091', { fg = '#b4a49d' })
    vim.api.nvim_set_hl(0, 'I2A1092', { fg = '#bea7a2' })
    vim.api.nvim_set_hl(0, 'I2A1093', { fg = '#635953' })
    vim.api.nvim_set_hl(0, 'I2A1094', { fg = '#171719' })
    vim.api.nvim_set_hl(0, 'I2A1095', { fg = '#16171a' })
    vim.api.nvim_set_hl(0, 'I2A1096', { fg = '#1b1c20' })
    vim.api.nvim_set_hl(0, 'I2A1097', { fg = '#1e1f24' })
    vim.api.nvim_set_hl(0, 'I2A1098', { fg = '#201f26' })
    vim.api.nvim_set_hl(0, 'I2A1099', { fg = '#392e2c' })
    vim.api.nvim_set_hl(0, 'I2A1100', { fg = '#6a5148' })
    vim.api.nvim_set_hl(0, 'I2A1101', { fg = '#241112' })
    vim.api.nvim_set_hl(0, 'I2A1102', { fg = '#251213' })
    vim.api.nvim_set_hl(0, 'I2A1103', { fg = '#271412' })
    vim.api.nvim_set_hl(0, 'I2A1104', { fg = '#271312' })
    vim.api.nvim_set_hl(0, 'I2A1105', { fg = '#231512' })
    vim.api.nvim_set_hl(0, 'I2A1106', { fg = '#241512' })
    vim.api.nvim_set_hl(0, 'I2A1107', { fg = '#241315' })
    vim.api.nvim_set_hl(0, 'I2A1108', { fg = '#221515' })
    vim.api.nvim_set_hl(0, 'I2A1109', { fg = '#1e1212' })
    vim.api.nvim_set_hl(0, 'I2A1110', { fg = '#1f1212' })
    vim.api.nvim_set_hl(0, 'I2A1111', { fg = '#221112' })
    vim.api.nvim_set_hl(0, 'I2A1112', { fg = '#1f1617' })
    vim.api.nvim_set_hl(0, 'I2A1113', { fg = '#22191a' })
    vim.api.nvim_set_hl(0, 'I2A1114', { fg = '#211819' })
    vim.api.nvim_set_hl(0, 'I2A1115', { fg = '#6a5b57' })
    vim.api.nvim_set_hl(0, 'I2A1116', { fg = '#806e66' })
    vim.api.nvim_set_hl(0, 'I2A1117', { fg = '#8a786e' })
    vim.api.nvim_set_hl(0, 'I2A1118', { fg = '#948274' })
    vim.api.nvim_set_hl(0, 'I2A1119', { fg = '#a18f84' })
    vim.api.nvim_set_hl(0, 'I2A1120', { fg = '#ac9991' })
    vim.api.nvim_set_hl(0, 'I2A1121', { fg = '#b5a29c' })
    vim.api.nvim_set_hl(0, 'I2A1122', { fg = '#beaaab' })
    vim.api.nvim_set_hl(0, 'I2A1123', { fg = '#c6b1b5' })
    vim.api.nvim_set_hl(0, 'I2A1124', { fg = '#c5b0b4' })
    vim.api.nvim_set_hl(0, 'I2A1125', { fg = '#ceb5bd' })
    vim.api.nvim_set_hl(0, 'I2A1126', { fg = '#d2bbc0' })
    vim.api.nvim_set_hl(0, 'I2A1127', { fg = '#d4bdc2' })
    vim.api.nvim_set_hl(0, 'I2A1128', { fg = '#cbb1b4' })
    vim.api.nvim_set_hl(0, 'I2A1129', { fg = '#886f71' })
    vim.api.nvim_set_hl(0, 'I2A1130', { fg = '#887474' })
    vim.api.nvim_set_hl(0, 'I2A1131', { fg = '#a89694' })
    vim.api.nvim_set_hl(0, 'I2A1132', { fg = '#ab9d97' })
    vim.api.nvim_set_hl(0, 'I2A1133', { fg = '#171518' })
    vim.api.nvim_set_hl(0, 'I2A1134', { fg = '#151519' })
    vim.api.nvim_set_hl(0, 'I2A1135', { fg = '#15151a' })
    vim.api.nvim_set_hl(0, 'I2A1136', { fg = '#17181c' })
    vim.api.nvim_set_hl(0, 'I2A1137', { fg = '#1a1b1f' })
    vim.api.nvim_set_hl(0, 'I2A1138', { fg = '#1d1f23' })
    vim.api.nvim_set_hl(0, 'I2A1139', { fg = '#1f1316' })
    vim.api.nvim_set_hl(0, 'I2A1140', { fg = '#1f1313' })
    vim.api.nvim_set_hl(0, 'I2A1141', { fg = '#1c1310' })
    vim.api.nvim_set_hl(0, 'I2A1142', { fg = '#1e1311' })
    vim.api.nvim_set_hl(0, 'I2A1143', { fg = '#1d1110' })
    vim.api.nvim_set_hl(0, 'I2A1144', { fg = '#1e1211' })
    vim.api.nvim_set_hl(0, 'I2A1145', { fg = '#1b0e0d' })
    vim.api.nvim_set_hl(0, 'I2A1146', { fg = '#180d0c' })
    vim.api.nvim_set_hl(0, 'I2A1147', { fg = '#170d0f' })
    vim.api.nvim_set_hl(0, 'I2A1148', { fg = '#1a1212' })
    vim.api.nvim_set_hl(0, 'I2A1149', { fg = '#1b1213' })
    vim.api.nvim_set_hl(0, 'I2A1150', { fg = '#1c1314' })
    vim.api.nvim_set_hl(0, 'I2A1151', { fg = '#1d1211' })
    vim.api.nvim_set_hl(0, 'I2A1152', { fg = '#40312f' })
    vim.api.nvim_set_hl(0, 'I2A1153', { fg = '#79675f' })
    vim.api.nvim_set_hl(0, 'I2A1154', { fg = '#8c7b6a' })
    vim.api.nvim_set_hl(0, 'I2A1155', { fg = '#9c8a7d' })
    vim.api.nvim_set_hl(0, 'I2A1156', { fg = '#a69489' })
    vim.api.nvim_set_hl(0, 'I2A1157', { fg = '#af9b94' })
    vim.api.nvim_set_hl(0, 'I2A1158', { fg = '#c0ada9' })
    vim.api.nvim_set_hl(0, 'I2A1159', { fg = '#c9b5b4' })
    vim.api.nvim_set_hl(0, 'I2A1160', { fg = '#c8b2b4' })
    vim.api.nvim_set_hl(0, 'I2A1161', { fg = '#d0b6b8' })
    vim.api.nvim_set_hl(0, 'I2A1162', { fg = '#d6babd' })
    vim.api.nvim_set_hl(0, 'I2A1163', { fg = '#d4b6b8' })
    vim.api.nvim_set_hl(0, 'I2A1164', { fg = '#a18481' })
    vim.api.nvim_set_hl(0, 'I2A1165', { fg = '#957975' })
    vim.api.nvim_set_hl(0, 'I2A1166', { fg = '#82665f' })
    vim.api.nvim_set_hl(0, 'I2A1167', { fg = '#816964' })
    vim.api.nvim_set_hl(0, 'I2A1168', { fg = '#161415' })
    vim.api.nvim_set_hl(0, 'I2A1169', { fg = '#0f1116' })
    vim.api.nvim_set_hl(0, 'I2A1170', { fg = '#101115' })
    vim.api.nvim_set_hl(0, 'I2A1171', { fg = '#111215' })
    vim.api.nvim_set_hl(0, 'I2A1172', { fg = '#111216' })
    vim.api.nvim_set_hl(0, 'I2A1173', { fg = '#131416' })
    vim.api.nvim_set_hl(0, 'I2A1174', { fg = '#151618' })
    vim.api.nvim_set_hl(0, 'I2A1175', { fg = '#110b0d' })
    vim.api.nvim_set_hl(0, 'I2A1176', { fg = '#140a0c' })
    vim.api.nvim_set_hl(0, 'I2A1177', { fg = '#150b0c' })
    vim.api.nvim_set_hl(0, 'I2A1178', { fg = '#160a0b' })
    vim.api.nvim_set_hl(0, 'I2A1179', { fg = '#180b0b' })
    vim.api.nvim_set_hl(0, 'I2A1180', { fg = '#170c0d' })
    vim.api.nvim_set_hl(0, 'I2A1181', { fg = '#1a0e0e' })
    vim.api.nvim_set_hl(0, 'I2A1182', { fg = '#1b110e' })
    vim.api.nvim_set_hl(0, 'I2A1183', { fg = '#221513' })
    vim.api.nvim_set_hl(0, 'I2A1184', { fg = '#251813' })
    dashboard.section.header.opts.hl = {
      {
        { 'I2A0', 0, 3 },
        { 'I2A1', 3, 6 },
        { 'I2A2', 6, 9 },
        { 'I2A3', 9, 12 },
        { 'I2A4', 12, 15 },
        { 'I2A3', 15, 18 },
        { 'I2A5', 18, 21 },
        { 'I2A6', 21, 24 },
        { 'I2A6', 24, 27 },
        { 'I2A6', 27, 30 },
        { 'I2A7', 30, 33 },
        { 'I2A8', 33, 36 },
        { 'I2A9', 36, 39 },
        { 'I2A10', 39, 42 },
        { 'I2A11', 42, 45 },
        { 'I2A12', 45, 48 },
        { 'I2A13', 48, 51 },
        { 'I2A14', 51, 54 },
        { 'I2A15', 54, 57 },
        { 'I2A16', 57, 60 },
        { 'I2A17', 60, 63 },
        { 'I2A18', 63, 66 },
        { 'I2A19', 66, 69 },
        { 'I2A20', 69, 72 },
        { 'I2A21', 72, 75 },
        { 'I2A22', 75, 78 },
        { 'I2A23', 78, 81 },
        { 'I2A24', 81, 84 },
        { 'I2A25', 84, 87 },
        { 'I2A26', 87, 90 },
        { 'I2A27', 90, 93 },
        { 'I2A28', 93, 96 },
        { 'I2A29', 96, 99 },
        { 'I2A30', 99, 102 },
        { 'I2A31', 102, 105 },
        { 'I2A32', 105, 108 },
        { 'I2A33', 108, 111 },
        { 'I2A34', 111, 114 },
        { 'I2A35', 114, 117 },
        { 'I2A36', 117, 120 },
        { 'I2A27', 120, 123 },
      },
      {
        { 'I2A37', 0, 3 },
        { 'I2A38', 3, 6 },
        { 'I2A39', 6, 9 },
        { 'I2A40', 9, 12 },
        { 'I2A41', 12, 15 },
        { 'I2A42', 15, 18 },
        { 'I2A43', 18, 21 },
        { 'I2A5', 21, 24 },
        { 'I2A5', 24, 27 },
        { 'I2A8', 27, 30 },
        { 'I2A8', 30, 33 },
        { 'I2A44', 33, 36 },
        { 'I2A45', 36, 39 },
        { 'I2A10', 39, 42 },
        { 'I2A46', 42, 45 },
        { 'I2A47', 45, 48 },
        { 'I2A48', 48, 51 },
        { 'I2A49', 51, 54 },
        { 'I2A50', 54, 57 },
        { 'I2A51', 57, 60 },
        { 'I2A52', 60, 63 },
        { 'I2A53', 63, 66 },
        { 'I2A54', 66, 69 },
        { 'I2A55', 69, 72 },
        { 'I2A56', 72, 75 },
        { 'I2A57', 75, 78 },
        { 'I2A58', 78, 81 },
        { 'I2A59', 81, 84 },
        { 'I2A60', 84, 87 },
        { 'I2A61', 87, 90 },
        { 'I2A62', 90, 93 },
        { 'I2A60', 93, 96 },
        { 'I2A63', 96, 99 },
        { 'I2A64', 99, 102 },
        { 'I2A65', 102, 105 },
        { 'I2A66', 105, 108 },
        { 'I2A67', 108, 111 },
        { 'I2A68', 111, 114 },
        { 'I2A69', 114, 117 },
        { 'I2A70', 117, 120 },
        { 'I2A71', 120, 123 },
      },
      {
        { 'I2A72', 0, 3 },
        { 'I2A73', 3, 6 },
        { 'I2A74', 6, 9 },
        { 'I2A75', 9, 12 },
        { 'I2A76', 12, 15 },
        { 'I2A76', 15, 18 },
        { 'I2A77', 18, 21 },
        { 'I2A78', 21, 24 },
        { 'I2A79', 24, 27 },
        { 'I2A76', 27, 30 },
        { 'I2A76', 30, 33 },
        { 'I2A76', 33, 36 },
        { 'I2A77', 36, 39 },
        { 'I2A80', 39, 42 },
        { 'I2A81', 42, 45 },
        { 'I2A82', 45, 48 },
        { 'I2A83', 48, 51 },
        { 'I2A84', 51, 54 },
        { 'I2A85', 54, 57 },
        { 'I2A86', 57, 60 },
        { 'I2A87', 60, 63 },
        { 'I2A88', 63, 66 },
        { 'I2A89', 66, 69 },
        { 'I2A90', 69, 72 },
        { 'I2A91', 72, 75 },
        { 'I2A92', 75, 78 },
        { 'I2A93', 78, 81 },
        { 'I2A94', 81, 84 },
        { 'I2A95', 84, 87 },
        { 'I2A96', 87, 90 },
        { 'I2A97', 90, 93 },
        { 'I2A96', 93, 96 },
        { 'I2A98', 96, 99 },
        { 'I2A99', 99, 102 },
        { 'I2A100', 102, 105 },
        { 'I2A101', 105, 108 },
        { 'I2A102', 108, 111 },
        { 'I2A103', 111, 114 },
        { 'I2A104', 114, 117 },
        { 'I2A105', 117, 120 },
        { 'I2A106', 120, 123 },
      },
      {
        { 'I2A107', 0, 3 },
        { 'I2A108', 3, 6 },
        { 'I2A109', 6, 9 },
        { 'I2A110', 9, 12 },
        { 'I2A111', 12, 15 },
        { 'I2A112', 15, 18 },
        { 'I2A113', 18, 21 },
        { 'I2A114', 21, 24 },
        { 'I2A115', 24, 27 },
        { 'I2A116', 27, 30 },
        { 'I2A117', 30, 33 },
        { 'I2A118', 33, 36 },
        { 'I2A119', 36, 39 },
        { 'I2A120', 39, 42 },
        { 'I2A121', 42, 45 },
        { 'I2A122', 45, 48 },
        { 'I2A123', 48, 51 },
        { 'I2A124', 51, 54 },
        { 'I2A125', 54, 57 },
        { 'I2A126', 57, 60 },
        { 'I2A127', 60, 63 },
        { 'I2A128', 63, 66 },
        { 'I2A129', 66, 69 },
        { 'I2A130', 69, 72 },
        { 'I2A131', 72, 75 },
        { 'I2A132', 75, 78 },
        { 'I2A132', 78, 81 },
        { 'I2A133', 81, 84 },
        { 'I2A134', 84, 87 },
        { 'I2A135', 87, 90 },
        { 'I2A136', 90, 93 },
        { 'I2A137', 93, 96 },
        { 'I2A138', 96, 99 },
        { 'I2A139', 99, 102 },
        { 'I2A140', 102, 105 },
        { 'I2A56', 105, 108 },
        { 'I2A141', 108, 111 },
        { 'I2A142', 111, 114 },
        { 'I2A143', 114, 117 },
        { 'I2A95', 117, 120 },
        { 'I2A144', 120, 123 },
      },
      {
        { 'I2A145', 0, 3 },
        { 'I2A146', 3, 6 },
        { 'I2A147', 6, 9 },
        { 'I2A148', 9, 12 },
        { 'I2A149', 12, 15 },
        { 'I2A150', 15, 18 },
        { 'I2A151', 18, 21 },
        { 'I2A152', 21, 24 },
        { 'I2A153', 24, 27 },
        { 'I2A154', 27, 30 },
        { 'I2A155', 30, 33 },
        { 'I2A156', 33, 36 },
        { 'I2A157', 36, 39 },
        { 'I2A158', 39, 42 },
        { 'I2A159', 42, 45 },
        { 'I2A160', 45, 48 },
        { 'I2A161', 48, 51 },
        { 'I2A162', 51, 54 },
        { 'I2A163', 54, 57 },
        { 'I2A164', 57, 60 },
        { 'I2A165', 60, 63 },
        { 'I2A166', 63, 66 },
        { 'I2A167', 66, 69 },
        { 'I2A168', 69, 72 },
        { 'I2A169', 72, 75 },
        { 'I2A170', 75, 78 },
        { 'I2A171', 78, 81 },
        { 'I2A172', 81, 84 },
        { 'I2A173', 84, 87 },
        { 'I2A174', 87, 90 },
        { 'I2A175', 90, 93 },
        { 'I2A176', 93, 96 },
        { 'I2A177', 96, 99 },
        { 'I2A136', 99, 102 },
        { 'I2A178', 102, 105 },
        { 'I2A179', 105, 108 },
        { 'I2A137', 108, 111 },
        { 'I2A180', 111, 114 },
        { 'I2A181', 114, 117 },
        { 'I2A182', 117, 120 },
        { 'I2A183', 120, 123 },
      },
      {
        { 'I2A184', 0, 3 },
        { 'I2A185', 3, 6 },
        { 'I2A186', 6, 9 },
        { 'I2A187', 9, 12 },
        { 'I2A188', 12, 15 },
        { 'I2A189', 15, 18 },
        { 'I2A190', 18, 21 },
        { 'I2A191', 21, 24 },
        { 'I2A192', 24, 27 },
        { 'I2A193', 27, 30 },
        { 'I2A194', 30, 33 },
        { 'I2A195', 33, 36 },
        { 'I2A196', 36, 39 },
        { 'I2A197', 39, 42 },
        { 'I2A198', 42, 45 },
        { 'I2A156', 45, 48 },
        { 'I2A199', 48, 51 },
        { 'I2A200', 51, 54 },
        { 'I2A201', 54, 57 },
        { 'I2A202', 57, 60 },
        { 'I2A203', 60, 63 },
        { 'I2A204', 63, 66 },
        { 'I2A205', 66, 69 },
        { 'I2A206', 69, 72 },
        { 'I2A207', 72, 75 },
        { 'I2A208', 75, 78 },
        { 'I2A209', 78, 81 },
        { 'I2A210', 81, 84 },
        { 'I2A211', 84, 87 },
        { 'I2A212', 87, 90 },
        { 'I2A213', 90, 93 },
        { 'I2A214', 93, 96 },
        { 'I2A215', 96, 99 },
        { 'I2A216', 99, 102 },
        { 'I2A217', 102, 105 },
        { 'I2A218', 105, 108 },
        { 'I2A219', 108, 111 },
        { 'I2A220', 111, 114 },
        { 'I2A182', 114, 117 },
        { 'I2A221', 117, 120 },
        { 'I2A222', 120, 123 },
      },
      {
        { 'I2A223', 0, 3 },
        { 'I2A224', 3, 6 },
        { 'I2A225', 6, 9 },
        { 'I2A226', 9, 12 },
        { 'I2A227', 12, 15 },
        { 'I2A228', 15, 18 },
        { 'I2A229', 18, 21 },
        { 'I2A230', 21, 24 },
        { 'I2A231', 24, 27 },
        { 'I2A232', 27, 30 },
        { 'I2A233', 30, 33 },
        { 'I2A234', 33, 36 },
        { 'I2A235', 36, 39 },
        { 'I2A236', 39, 42 },
        { 'I2A237', 42, 45 },
        { 'I2A238', 45, 48 },
        { 'I2A239', 48, 51 },
        { 'I2A240', 51, 54 },
        { 'I2A241', 54, 57 },
        { 'I2A242', 57, 60 },
        { 'I2A243', 60, 63 },
        { 'I2A244', 63, 66 },
        { 'I2A245', 66, 69 },
        { 'I2A246', 69, 72 },
        { 'I2A247', 72, 75 },
        { 'I2A248', 75, 78 },
        { 'I2A249', 78, 81 },
        { 'I2A250', 81, 84 },
        { 'I2A251', 84, 87 },
        { 'I2A210', 87, 90 },
        { 'I2A252', 90, 93 },
        { 'I2A253', 93, 96 },
        { 'I2A254', 96, 99 },
        { 'I2A255', 99, 102 },
        { 'I2A256', 102, 105 },
        { 'I2A257', 105, 108 },
        { 'I2A258', 108, 111 },
        { 'I2A259', 111, 114 },
        { 'I2A260', 114, 117 },
        { 'I2A261', 117, 120 },
        { 'I2A262', 120, 123 },
      },
      {
        { 'I2A263', 0, 3 },
        { 'I2A264', 3, 6 },
        { 'I2A265', 6, 9 },
        { 'I2A266', 9, 12 },
        { 'I2A267', 12, 15 },
        { 'I2A268', 15, 18 },
        { 'I2A269', 18, 21 },
        { 'I2A270', 21, 24 },
        { 'I2A271', 24, 27 },
        { 'I2A272', 27, 30 },
        { 'I2A273', 30, 33 },
        { 'I2A274', 33, 36 },
        { 'I2A275', 36, 39 },
        { 'I2A276', 39, 42 },
        { 'I2A277', 42, 45 },
        { 'I2A278', 45, 48 },
        { 'I2A279', 48, 51 },
        { 'I2A280', 51, 54 },
        { 'I2A281', 54, 57 },
        { 'I2A282', 57, 60 },
        { 'I2A283', 60, 63 },
        { 'I2A284', 63, 66 },
        { 'I2A285', 66, 69 },
        { 'I2A286', 69, 72 },
        { 'I2A287', 72, 75 },
        { 'I2A288', 75, 78 },
        { 'I2A289', 78, 81 },
        { 'I2A290', 81, 84 },
        { 'I2A291', 84, 87 },
        { 'I2A292', 87, 90 },
        { 'I2A293', 90, 93 },
        { 'I2A294', 93, 96 },
        { 'I2A295', 96, 99 },
        { 'I2A296', 99, 102 },
        { 'I2A297', 102, 105 },
        { 'I2A298', 105, 108 },
        { 'I2A299', 108, 111 },
        { 'I2A300', 111, 114 },
        { 'I2A300', 114, 117 },
        { 'I2A301', 117, 120 },
        { 'I2A302', 120, 123 },
      },
      {
        { 'I2A303', 0, 3 },
        { 'I2A304', 3, 6 },
        { 'I2A266', 6, 9 },
        { 'I2A305', 9, 12 },
        { 'I2A306', 12, 15 },
        { 'I2A307', 15, 18 },
        { 'I2A308', 18, 21 },
        { 'I2A309', 21, 24 },
        { 'I2A310', 24, 27 },
        { 'I2A311', 27, 30 },
        { 'I2A312', 30, 33 },
        { 'I2A313', 33, 36 },
        { 'I2A314', 36, 39 },
        { 'I2A315', 39, 42 },
        { 'I2A316', 42, 45 },
        { 'I2A317', 45, 48 },
        { 'I2A318', 48, 51 },
        { 'I2A319', 51, 54 },
        { 'I2A320', 54, 57 },
        { 'I2A321', 57, 60 },
        { 'I2A322', 60, 63 },
        { 'I2A323', 63, 66 },
        { 'I2A324', 66, 69 },
        { 'I2A325', 69, 72 },
        { 'I2A326', 72, 75 },
        { 'I2A327', 75, 78 },
        { 'I2A328', 78, 81 },
        { 'I2A329', 81, 84 },
        { 'I2A330', 84, 87 },
        { 'I2A331', 87, 90 },
        { 'I2A332', 90, 93 },
        { 'I2A333', 93, 96 },
        { 'I2A334', 96, 99 },
        { 'I2A335', 99, 102 },
        { 'I2A336', 102, 105 },
        { 'I2A337', 105, 108 },
        { 'I2A338', 108, 111 },
        { 'I2A339', 111, 114 },
        { 'I2A302', 114, 117 },
        { 'I2A340', 117, 120 },
        { 'I2A341', 120, 123 },
      },
      {
        { 'I2A342', 0, 3 },
        { 'I2A343', 3, 6 },
        { 'I2A344', 6, 9 },
        { 'I2A345', 9, 12 },
        { 'I2A346', 12, 15 },
        { 'I2A347', 15, 18 },
        { 'I2A348', 18, 21 },
        { 'I2A349', 21, 24 },
        { 'I2A350', 24, 27 },
        { 'I2A351', 27, 30 },
        { 'I2A352', 30, 33 },
        { 'I2A353', 33, 36 },
        { 'I2A354', 36, 39 },
        { 'I2A355', 39, 42 },
        { 'I2A356', 42, 45 },
        { 'I2A357', 45, 48 },
        { 'I2A358', 48, 51 },
        { 'I2A359', 51, 54 },
        { 'I2A360', 54, 57 },
        { 'I2A361', 57, 60 },
        { 'I2A362', 60, 63 },
        { 'I2A363', 63, 66 },
        { 'I2A364', 66, 69 },
        { 'I2A365', 69, 72 },
        { 'I2A366', 72, 75 },
        { 'I2A367', 75, 78 },
        { 'I2A368', 78, 81 },
        { 'I2A369', 81, 84 },
        { 'I2A370', 84, 87 },
        { 'I2A371', 87, 90 },
        { 'I2A372', 90, 93 },
        { 'I2A373', 93, 96 },
        { 'I2A374', 96, 99 },
        { 'I2A375', 99, 102 },
        { 'I2A376', 102, 105 },
        { 'I2A377', 105, 108 },
        { 'I2A378', 108, 111 },
        { 'I2A379', 111, 114 },
        { 'I2A380', 114, 117 },
        { 'I2A381', 117, 120 },
        { 'I2A382', 120, 123 },
      },
      {
        { 'I2A383', 0, 3 },
        { 'I2A384', 3, 6 },
        { 'I2A385', 6, 9 },
        { 'I2A386', 9, 12 },
        { 'I2A387', 12, 15 },
        { 'I2A388', 15, 18 },
        { 'I2A389', 18, 21 },
        { 'I2A390', 21, 24 },
        { 'I2A391', 24, 27 },
        { 'I2A392', 27, 30 },
        { 'I2A393', 30, 33 },
        { 'I2A394', 33, 36 },
        { 'I2A395', 36, 39 },
        { 'I2A396', 39, 42 },
        { 'I2A397', 42, 45 },
        { 'I2A398', 45, 48 },
        { 'I2A399', 48, 51 },
        { 'I2A400', 51, 54 },
        { 'I2A401', 54, 57 },
        { 'I2A402', 57, 60 },
        { 'I2A403', 60, 63 },
        { 'I2A404', 63, 66 },
        { 'I2A405', 66, 69 },
        { 'I2A406', 69, 72 },
        { 'I2A407', 72, 75 },
        { 'I2A408', 75, 78 },
        { 'I2A409', 78, 81 },
        { 'I2A410', 81, 84 },
        { 'I2A411', 84, 87 },
        { 'I2A412', 87, 90 },
        { 'I2A413', 90, 93 },
        { 'I2A414', 93, 96 },
        { 'I2A415', 96, 99 },
        { 'I2A416', 99, 102 },
        { 'I2A417', 102, 105 },
        { 'I2A418', 105, 108 },
        { 'I2A419', 108, 111 },
        { 'I2A420', 111, 114 },
        { 'I2A421', 114, 117 },
        { 'I2A422', 117, 120 },
        { 'I2A423', 120, 123 },
      },
      {
        { 'I2A424', 0, 3 },
        { 'I2A425', 3, 6 },
        { 'I2A426', 6, 9 },
        { 'I2A427', 9, 12 },
        { 'I2A428', 12, 15 },
        { 'I2A429', 15, 18 },
        { 'I2A430', 18, 21 },
        { 'I2A431', 21, 24 },
        { 'I2A432', 24, 27 },
        { 'I2A432', 27, 30 },
        { 'I2A433', 30, 33 },
        { 'I2A434', 33, 36 },
        { 'I2A435', 36, 39 },
        { 'I2A436', 39, 42 },
        { 'I2A437', 42, 45 },
        { 'I2A438', 45, 48 },
        { 'I2A439', 48, 51 },
        { 'I2A440', 51, 54 },
        { 'I2A441', 54, 57 },
        { 'I2A442', 57, 60 },
        { 'I2A443', 60, 63 },
        { 'I2A444', 63, 66 },
        { 'I2A445', 66, 69 },
        { 'I2A446', 69, 72 },
        { 'I2A447', 72, 75 },
        { 'I2A448', 75, 78 },
        { 'I2A449', 78, 81 },
        { 'I2A450', 81, 84 },
        { 'I2A451', 84, 87 },
        { 'I2A452', 87, 90 },
        { 'I2A453', 90, 93 },
        { 'I2A454', 93, 96 },
        { 'I2A455', 96, 99 },
        { 'I2A456', 99, 102 },
        { 'I2A457', 102, 105 },
        { 'I2A458', 105, 108 },
        { 'I2A459', 108, 111 },
        { 'I2A460', 111, 114 },
        { 'I2A461', 114, 117 },
        { 'I2A423', 117, 120 },
        { 'I2A265', 120, 123 },
      },
      {
        { 'I2A462', 0, 3 },
        { 'I2A462', 3, 6 },
        { 'I2A463', 6, 9 },
        { 'I2A464', 9, 12 },
        { 'I2A465', 12, 15 },
        { 'I2A466', 15, 18 },
        { 'I2A467', 18, 21 },
        { 'I2A468', 21, 24 },
        { 'I2A469', 24, 27 },
        { 'I2A470', 27, 30 },
        { 'I2A471', 30, 33 },
        { 'I2A472', 33, 36 },
        { 'I2A473', 36, 39 },
        { 'I2A474', 39, 42 },
        { 'I2A475', 42, 45 },
        { 'I2A476', 45, 48 },
        { 'I2A477', 48, 51 },
        { 'I2A478', 51, 54 },
        { 'I2A479', 54, 57 },
        { 'I2A480', 57, 60 },
        { 'I2A481', 60, 63 },
        { 'I2A482', 63, 66 },
        { 'I2A483', 66, 69 },
        { 'I2A484', 69, 72 },
        { 'I2A485', 72, 75 },
        { 'I2A486', 75, 78 },
        { 'I2A487', 78, 81 },
        { 'I2A488', 81, 84 },
        { 'I2A489', 84, 87 },
        { 'I2A490', 87, 90 },
        { 'I2A491', 90, 93 },
        { 'I2A492', 93, 96 },
        { 'I2A493', 96, 99 },
        { 'I2A494', 99, 102 },
        { 'I2A495', 102, 105 },
        { 'I2A496', 105, 108 },
        { 'I2A497', 108, 111 },
        { 'I2A498', 111, 114 },
        { 'I2A499', 114, 117 },
        { 'I2A500', 117, 120 },
        { 'I2A501', 120, 123 },
      },
      {
        { 'I2A462', 0, 3 },
        { 'I2A462', 3, 6 },
        { 'I2A502', 6, 9 },
        { 'I2A503', 9, 12 },
        { 'I2A504', 12, 15 },
        { 'I2A505', 15, 18 },
        { 'I2A506', 18, 21 },
        { 'I2A507', 21, 24 },
        { 'I2A508', 24, 27 },
        { 'I2A509', 27, 30 },
        { 'I2A510', 30, 33 },
        { 'I2A511', 33, 36 },
        { 'I2A512', 36, 39 },
        { 'I2A513', 39, 42 },
        { 'I2A514', 42, 45 },
        { 'I2A515', 45, 48 },
        { 'I2A516', 48, 51 },
        { 'I2A517', 51, 54 },
        { 'I2A518', 54, 57 },
        { 'I2A519', 57, 60 },
        { 'I2A520', 60, 63 },
        { 'I2A521', 63, 66 },
        { 'I2A522', 66, 69 },
        { 'I2A523', 69, 72 },
        { 'I2A524', 72, 75 },
        { 'I2A525', 75, 78 },
        { 'I2A526', 78, 81 },
        { 'I2A527', 81, 84 },
        { 'I2A528', 84, 87 },
        { 'I2A529', 87, 90 },
        { 'I2A530', 90, 93 },
        { 'I2A531', 93, 96 },
        { 'I2A532', 96, 99 },
        { 'I2A533', 99, 102 },
        { 'I2A534', 102, 105 },
        { 'I2A535', 105, 108 },
        { 'I2A536', 108, 111 },
        { 'I2A537', 111, 114 },
        { 'I2A264', 114, 117 },
        { 'I2A538', 117, 120 },
        { 'I2A539', 120, 123 },
      },
      {
        { 'I2A540', 0, 3 },
        { 'I2A540', 3, 6 },
        { 'I2A541', 6, 9 },
        { 'I2A542', 9, 12 },
        { 'I2A543', 12, 15 },
        { 'I2A544', 15, 18 },
        { 'I2A545', 18, 21 },
        { 'I2A546', 21, 24 },
        { 'I2A547', 24, 27 },
        { 'I2A548', 27, 30 },
        { 'I2A549', 30, 33 },
        { 'I2A550', 33, 36 },
        { 'I2A551', 36, 39 },
        { 'I2A552', 39, 42 },
        { 'I2A553', 42, 45 },
        { 'I2A554', 45, 48 },
        { 'I2A555', 48, 51 },
        { 'I2A556', 51, 54 },
        { 'I2A557', 54, 57 },
        { 'I2A558', 57, 60 },
        { 'I2A559', 60, 63 },
        { 'I2A560', 63, 66 },
        { 'I2A561', 66, 69 },
        { 'I2A562', 69, 72 },
        { 'I2A563', 72, 75 },
        { 'I2A564', 75, 78 },
        { 'I2A565', 78, 81 },
        { 'I2A565', 81, 84 },
        { 'I2A566', 84, 87 },
        { 'I2A567', 87, 90 },
        { 'I2A568', 90, 93 },
        { 'I2A569', 93, 96 },
        { 'I2A570', 96, 99 },
        { 'I2A571', 99, 102 },
        { 'I2A572', 102, 105 },
        { 'I2A573', 105, 108 },
        { 'I2A574', 108, 111 },
        { 'I2A575', 111, 114 },
        { 'I2A576', 114, 117 },
        { 'I2A577', 117, 120 },
        { 'I2A578', 120, 123 },
      },
      {
        { 'I2A579', 0, 3 },
        { 'I2A580', 3, 6 },
        { 'I2A581', 6, 9 },
        { 'I2A582', 9, 12 },
        { 'I2A583', 12, 15 },
        { 'I2A584', 15, 18 },
        { 'I2A585', 18, 21 },
        { 'I2A586', 21, 24 },
        { 'I2A587', 24, 27 },
        { 'I2A588', 27, 30 },
        { 'I2A589', 30, 33 },
        { 'I2A590', 33, 36 },
        { 'I2A591', 36, 39 },
        { 'I2A592', 39, 42 },
        { 'I2A593', 42, 45 },
        { 'I2A594', 45, 48 },
        { 'I2A595', 48, 51 },
        { 'I2A596', 51, 54 },
        { 'I2A597', 54, 57 },
        { 'I2A598', 57, 60 },
        { 'I2A599', 60, 63 },
        { 'I2A600', 63, 66 },
        { 'I2A601', 66, 69 },
        { 'I2A602', 69, 72 },
        { 'I2A603', 72, 75 },
        { 'I2A604', 75, 78 },
        { 'I2A605', 78, 81 },
        { 'I2A606', 81, 84 },
        { 'I2A607', 84, 87 },
        { 'I2A608', 87, 90 },
        { 'I2A609', 90, 93 },
        { 'I2A610', 93, 96 },
        { 'I2A611', 96, 99 },
        { 'I2A612', 99, 102 },
        { 'I2A613', 102, 105 },
        { 'I2A614', 105, 108 },
        { 'I2A615', 108, 111 },
        { 'I2A616', 111, 114 },
        { 'I2A617', 114, 117 },
        { 'I2A618', 117, 120 },
        { 'I2A619', 120, 123 },
      },
      {
        { 'I2A620', 0, 3 },
        { 'I2A621', 3, 6 },
        { 'I2A622', 6, 9 },
        { 'I2A623', 9, 12 },
        { 'I2A624', 12, 15 },
        { 'I2A625', 15, 18 },
        { 'I2A626', 18, 21 },
        { 'I2A627', 21, 24 },
        { 'I2A628', 24, 27 },
        { 'I2A629', 27, 30 },
        { 'I2A630', 30, 33 },
        { 'I2A631', 33, 36 },
        { 'I2A632', 36, 39 },
        { 'I2A633', 39, 42 },
        { 'I2A634', 42, 45 },
        { 'I2A635', 45, 48 },
        { 'I2A636', 48, 51 },
        { 'I2A637', 51, 54 },
        { 'I2A638', 54, 57 },
        { 'I2A639', 57, 60 },
        { 'I2A640', 60, 63 },
        { 'I2A641', 63, 66 },
        { 'I2A642', 66, 69 },
        { 'I2A643', 69, 72 },
        { 'I2A644', 72, 75 },
        { 'I2A645', 75, 78 },
        { 'I2A646', 78, 81 },
        { 'I2A647', 81, 84 },
        { 'I2A648', 84, 87 },
        { 'I2A649', 87, 90 },
        { 'I2A650', 90, 93 },
        { 'I2A651', 93, 96 },
        { 'I2A652', 96, 99 },
        { 'I2A653', 99, 102 },
        { 'I2A654', 102, 105 },
        { 'I2A263', 105, 108 },
        { 'I2A655', 108, 111 },
        { 'I2A656', 111, 114 },
        { 'I2A657', 114, 117 },
        { 'I2A656', 117, 120 },
        { 'I2A658', 120, 123 },
      },
      {
        { 'I2A659', 0, 3 },
        { 'I2A660', 3, 6 },
        { 'I2A661', 6, 9 },
        { 'I2A662', 9, 12 },
        { 'I2A663', 12, 15 },
        { 'I2A664', 15, 18 },
        { 'I2A665', 18, 21 },
        { 'I2A666', 21, 24 },
        { 'I2A667', 24, 27 },
        { 'I2A668', 27, 30 },
        { 'I2A514', 30, 33 },
        { 'I2A669', 33, 36 },
        { 'I2A670', 36, 39 },
        { 'I2A671', 39, 42 },
        { 'I2A672', 42, 45 },
        { 'I2A673', 45, 48 },
        { 'I2A674', 48, 51 },
        { 'I2A675', 51, 54 },
        { 'I2A676', 54, 57 },
        { 'I2A677', 57, 60 },
        { 'I2A678', 60, 63 },
        { 'I2A679', 63, 66 },
        { 'I2A680', 66, 69 },
        { 'I2A681', 69, 72 },
        { 'I2A682', 72, 75 },
        { 'I2A683', 75, 78 },
        { 'I2A684', 78, 81 },
        { 'I2A685', 81, 84 },
        { 'I2A686', 84, 87 },
        { 'I2A687', 87, 90 },
        { 'I2A688', 90, 93 },
        { 'I2A689', 93, 96 },
        { 'I2A690', 96, 99 },
        { 'I2A691', 99, 102 },
        { 'I2A692', 102, 105 },
        { 'I2A693', 105, 108 },
        { 'I2A694', 108, 111 },
        { 'I2A694', 111, 114 },
        { 'I2A695', 114, 117 },
        { 'I2A696', 117, 120 },
        { 'I2A697', 120, 123 },
      },
      {
        { 'I2A698', 0, 3 },
        { 'I2A699', 3, 6 },
        { 'I2A700', 6, 9 },
        { 'I2A701', 9, 12 },
        { 'I2A702', 12, 15 },
        { 'I2A703', 15, 18 },
        { 'I2A704', 18, 21 },
        { 'I2A705', 21, 24 },
        { 'I2A706', 24, 27 },
        { 'I2A707', 27, 30 },
        { 'I2A708', 30, 33 },
        { 'I2A709', 33, 36 },
        { 'I2A710', 36, 39 },
        { 'I2A711', 39, 42 },
        { 'I2A712', 42, 45 },
        { 'I2A713', 45, 48 },
        { 'I2A714', 48, 51 },
        { 'I2A715', 51, 54 },
        { 'I2A716', 54, 57 },
        { 'I2A717', 57, 60 },
        { 'I2A718', 60, 63 },
        { 'I2A719', 63, 66 },
        { 'I2A720', 66, 69 },
        { 'I2A721', 69, 72 },
        { 'I2A722', 72, 75 },
        { 'I2A723', 75, 78 },
        { 'I2A724', 78, 81 },
        { 'I2A725', 81, 84 },
        { 'I2A726', 84, 87 },
        { 'I2A727', 87, 90 },
        { 'I2A728', 90, 93 },
        { 'I2A729', 93, 96 },
        { 'I2A730', 96, 99 },
        { 'I2A731', 99, 102 },
        { 'I2A732', 102, 105 },
        { 'I2A733', 105, 108 },
        { 'I2A733', 108, 111 },
        { 'I2A734', 111, 114 },
        { 'I2A733', 114, 117 },
        { 'I2A735', 117, 120 },
        { 'I2A736', 120, 123 },
      },
      {
        { 'I2A737', 0, 3 },
        { 'I2A737', 3, 6 },
        { 'I2A738', 6, 9 },
        { 'I2A739', 9, 12 },
        { 'I2A740', 12, 15 },
        { 'I2A741', 15, 18 },
        { 'I2A742', 18, 21 },
        { 'I2A743', 21, 24 },
        { 'I2A744', 24, 27 },
        { 'I2A745', 27, 30 },
        { 'I2A746', 30, 33 },
        { 'I2A747', 33, 36 },
        { 'I2A748', 36, 39 },
        { 'I2A749', 39, 42 },
        { 'I2A750', 42, 45 },
        { 'I2A751', 45, 48 },
        { 'I2A752', 48, 51 },
        { 'I2A753', 51, 54 },
        { 'I2A754', 54, 57 },
        { 'I2A755', 57, 60 },
        { 'I2A756', 60, 63 },
        { 'I2A757', 63, 66 },
        { 'I2A758', 66, 69 },
        { 'I2A759', 69, 72 },
        { 'I2A760', 72, 75 },
        { 'I2A761', 75, 78 },
        { 'I2A762', 78, 81 },
        { 'I2A763', 81, 84 },
        { 'I2A764', 84, 87 },
        { 'I2A765', 87, 90 },
        { 'I2A766', 90, 93 },
        { 'I2A767', 93, 96 },
        { 'I2A731', 96, 99 },
        { 'I2A731', 99, 102 },
        { 'I2A734', 102, 105 },
        { 'I2A733', 105, 108 },
        { 'I2A733', 108, 111 },
        { 'I2A768', 111, 114 },
        { 'I2A734', 114, 117 },
        { 'I2A733', 117, 120 },
        { 'I2A769', 120, 123 },
      },
      {
        { 'I2A770', 0, 3 },
        { 'I2A771', 3, 6 },
        { 'I2A772', 6, 9 },
        { 'I2A773', 9, 12 },
        { 'I2A774', 12, 15 },
        { 'I2A773', 15, 18 },
        { 'I2A775', 18, 21 },
        { 'I2A776', 21, 24 },
        { 'I2A777', 24, 27 },
        { 'I2A778', 27, 30 },
        { 'I2A779', 30, 33 },
        { 'I2A780', 33, 36 },
        { 'I2A781', 36, 39 },
        { 'I2A782', 39, 42 },
        { 'I2A783', 42, 45 },
        { 'I2A784', 45, 48 },
        { 'I2A785', 48, 51 },
        { 'I2A786', 51, 54 },
        { 'I2A787', 54, 57 },
        { 'I2A788', 57, 60 },
        { 'I2A789', 60, 63 },
        { 'I2A790', 63, 66 },
        { 'I2A791', 66, 69 },
        { 'I2A792', 69, 72 },
        { 'I2A793', 72, 75 },
        { 'I2A794', 75, 78 },
        { 'I2A795', 78, 81 },
        { 'I2A796', 81, 84 },
        { 'I2A797', 84, 87 },
        { 'I2A798', 87, 90 },
        { 'I2A799', 90, 93 },
        { 'I2A800', 93, 96 },
        { 'I2A801', 96, 99 },
        { 'I2A691', 99, 102 },
        { 'I2A802', 102, 105 },
        { 'I2A803', 105, 108 },
        { 'I2A804', 108, 111 },
        { 'I2A804', 111, 114 },
        { 'I2A805', 114, 117 },
        { 'I2A806', 117, 120 },
        { 'I2A769', 120, 123 },
      },
      {
        { 'I2A807', 0, 3 },
        { 'I2A808', 3, 6 },
        { 'I2A809', 6, 9 },
        { 'I2A810', 9, 12 },
        { 'I2A811', 12, 15 },
        { 'I2A812', 15, 18 },
        { 'I2A813', 18, 21 },
        { 'I2A814', 21, 24 },
        { 'I2A815', 24, 27 },
        { 'I2A816', 27, 30 },
        { 'I2A817', 30, 33 },
        { 'I2A818', 33, 36 },
        { 'I2A819', 36, 39 },
        { 'I2A820', 39, 42 },
        { 'I2A821', 42, 45 },
        { 'I2A822', 45, 48 },
        { 'I2A823', 48, 51 },
        { 'I2A824', 51, 54 },
        { 'I2A825', 54, 57 },
        { 'I2A826', 57, 60 },
        { 'I2A827', 60, 63 },
        { 'I2A828', 63, 66 },
        { 'I2A829', 66, 69 },
        { 'I2A830', 69, 72 },
        { 'I2A831', 72, 75 },
        { 'I2A832', 75, 78 },
        { 'I2A833', 78, 81 },
        { 'I2A834', 81, 84 },
        { 'I2A835', 84, 87 },
        { 'I2A836', 87, 90 },
        { 'I2A837', 90, 93 },
        { 'I2A838', 93, 96 },
        { 'I2A839', 96, 99 },
        { 'I2A840', 99, 102 },
        { 'I2A841', 102, 105 },
        { 'I2A842', 105, 108 },
        { 'I2A804', 108, 111 },
        { 'I2A843', 111, 114 },
        { 'I2A844', 114, 117 },
        { 'I2A845', 117, 120 },
        { 'I2A846', 120, 123 },
      },
      {
        { 'I2A804', 0, 3 },
        { 'I2A847', 3, 6 },
        { 'I2A848', 6, 9 },
        { 'I2A849', 9, 12 },
        { 'I2A850', 12, 15 },
        { 'I2A851', 15, 18 },
        { 'I2A852', 18, 21 },
        { 'I2A853', 21, 24 },
        { 'I2A854', 24, 27 },
        { 'I2A855', 27, 30 },
        { 'I2A856', 30, 33 },
        { 'I2A857', 33, 36 },
        { 'I2A858', 36, 39 },
        { 'I2A859', 39, 42 },
        { 'I2A860', 42, 45 },
        { 'I2A861', 45, 48 },
        { 'I2A862', 48, 51 },
        { 'I2A863', 51, 54 },
        { 'I2A864', 54, 57 },
        { 'I2A865', 57, 60 },
        { 'I2A866', 60, 63 },
        { 'I2A867', 63, 66 },
        { 'I2A868', 66, 69 },
        { 'I2A869', 69, 72 },
        { 'I2A870', 72, 75 },
        { 'I2A871', 75, 78 },
        { 'I2A872', 78, 81 },
        { 'I2A873', 81, 84 },
        { 'I2A874', 84, 87 },
        { 'I2A875', 87, 90 },
        { 'I2A876', 90, 93 },
        { 'I2A877', 93, 96 },
        { 'I2A878', 96, 99 },
        { 'I2A879', 99, 102 },
        { 'I2A880', 102, 105 },
        { 'I2A803', 105, 108 },
        { 'I2A843', 108, 111 },
        { 'I2A843', 111, 114 },
        { 'I2A843', 114, 117 },
        { 'I2A881', 117, 120 },
        { 'I2A882', 120, 123 },
      },
      {
        { 'I2A804', 0, 3 },
        { 'I2A847', 3, 6 },
        { 'I2A883', 6, 9 },
        { 'I2A884', 9, 12 },
        { 'I2A885', 12, 15 },
        { 'I2A886', 15, 18 },
        { 'I2A887', 18, 21 },
        { 'I2A888', 21, 24 },
        { 'I2A889', 24, 27 },
        { 'I2A890', 27, 30 },
        { 'I2A891', 30, 33 },
        { 'I2A892', 33, 36 },
        { 'I2A893', 36, 39 },
        { 'I2A894', 39, 42 },
        { 'I2A895', 42, 45 },
        { 'I2A896', 45, 48 },
        { 'I2A897', 48, 51 },
        { 'I2A898', 51, 54 },
        { 'I2A899', 54, 57 },
        { 'I2A900', 57, 60 },
        { 'I2A901', 60, 63 },
        { 'I2A902', 63, 66 },
        { 'I2A903', 66, 69 },
        { 'I2A904', 69, 72 },
        { 'I2A905', 72, 75 },
        { 'I2A906', 75, 78 },
        { 'I2A907', 78, 81 },
        { 'I2A908', 81, 84 },
        { 'I2A909', 84, 87 },
        { 'I2A910', 87, 90 },
        { 'I2A911', 90, 93 },
        { 'I2A912', 93, 96 },
        { 'I2A913', 96, 99 },
        { 'I2A914', 99, 102 },
        { 'I2A915', 102, 105 },
        { 'I2A842', 105, 108 },
        { 'I2A843', 108, 111 },
        { 'I2A843', 111, 114 },
        { 'I2A843', 114, 117 },
        { 'I2A844', 117, 120 },
        { 'I2A843', 120, 123 },
      },
      {
        { 'I2A620', 0, 3 },
        { 'I2A916', 3, 6 },
        { 'I2A917', 6, 9 },
        { 'I2A918', 9, 12 },
        { 'I2A919', 12, 15 },
        { 'I2A920', 15, 18 },
        { 'I2A921', 18, 21 },
        { 'I2A922', 21, 24 },
        { 'I2A923', 24, 27 },
        { 'I2A924', 27, 30 },
        { 'I2A925', 30, 33 },
        { 'I2A926', 33, 36 },
        { 'I2A927', 36, 39 },
        { 'I2A928', 39, 42 },
        { 'I2A929', 42, 45 },
        { 'I2A930', 45, 48 },
        { 'I2A931', 48, 51 },
        { 'I2A932', 51, 54 },
        { 'I2A933', 54, 57 },
        { 'I2A934', 57, 60 },
        { 'I2A935', 60, 63 },
        { 'I2A936', 63, 66 },
        { 'I2A937', 66, 69 },
        { 'I2A938', 69, 72 },
        { 'I2A939', 72, 75 },
        { 'I2A940', 75, 78 },
        { 'I2A941', 78, 81 },
        { 'I2A942', 81, 84 },
        { 'I2A943', 84, 87 },
        { 'I2A944', 87, 90 },
        { 'I2A945', 90, 93 },
        { 'I2A946', 93, 96 },
        { 'I2A947', 96, 99 },
        { 'I2A948', 99, 102 },
        { 'I2A949', 102, 105 },
        { 'I2A950', 105, 108 },
        { 'I2A951', 108, 111 },
        { 'I2A952', 111, 114 },
        { 'I2A804', 114, 117 },
        { 'I2A844', 117, 120 },
        { 'I2A806', 120, 123 },
      },
      {
        { 'I2A953', 0, 3 },
        { 'I2A954', 3, 6 },
        { 'I2A955', 6, 9 },
        { 'I2A956', 9, 12 },
        { 'I2A957', 12, 15 },
        { 'I2A958', 15, 18 },
        { 'I2A959', 18, 21 },
        { 'I2A960', 21, 24 },
        { 'I2A961', 24, 27 },
        { 'I2A962', 27, 30 },
        { 'I2A963', 30, 33 },
        { 'I2A964', 33, 36 },
        { 'I2A965', 36, 39 },
        { 'I2A966', 39, 42 },
        { 'I2A967', 42, 45 },
        { 'I2A968', 45, 48 },
        { 'I2A969', 48, 51 },
        { 'I2A970', 51, 54 },
        { 'I2A971', 54, 57 },
        { 'I2A972', 57, 60 },
        { 'I2A972', 60, 63 },
        { 'I2A973', 63, 66 },
        { 'I2A974', 66, 69 },
        { 'I2A975', 69, 72 },
        { 'I2A976', 72, 75 },
        { 'I2A977', 75, 78 },
        { 'I2A978', 78, 81 },
        { 'I2A979', 81, 84 },
        { 'I2A980', 84, 87 },
        { 'I2A981', 87, 90 },
        { 'I2A982', 90, 93 },
        { 'I2A983', 93, 96 },
        { 'I2A984', 96, 99 },
        { 'I2A985', 99, 102 },
        { 'I2A986', 102, 105 },
        { 'I2A987', 105, 108 },
        { 'I2A988', 108, 111 },
        { 'I2A989', 111, 114 },
        { 'I2A990', 114, 117 },
        { 'I2A991', 117, 120 },
        { 'I2A992', 120, 123 },
      },
      {
        { 'I2A993', 0, 3 },
        { 'I2A994', 3, 6 },
        { 'I2A995', 6, 9 },
        { 'I2A996', 9, 12 },
        { 'I2A997', 12, 15 },
        { 'I2A998', 15, 18 },
        { 'I2A999', 18, 21 },
        { 'I2A1000', 21, 24 },
        { 'I2A1001', 24, 27 },
        { 'I2A1002', 27, 30 },
        { 'I2A1003', 30, 33 },
        { 'I2A1004', 33, 36 },
        { 'I2A1005', 36, 39 },
        { 'I2A1006', 39, 42 },
        { 'I2A1007', 42, 45 },
        { 'I2A1008', 45, 48 },
        { 'I2A1009', 48, 51 },
        { 'I2A1010', 51, 54 },
        { 'I2A1011', 54, 57 },
        { 'I2A1012', 57, 60 },
        { 'I2A1013', 60, 63 },
        { 'I2A1014', 63, 66 },
        { 'I2A1015', 66, 69 },
        { 'I2A1016', 69, 72 },
        { 'I2A1017', 72, 75 },
        { 'I2A1018', 75, 78 },
        { 'I2A1019', 78, 81 },
        { 'I2A1020', 81, 84 },
        { 'I2A1021', 84, 87 },
        { 'I2A1022', 87, 90 },
        { 'I2A1023', 90, 93 },
        { 'I2A1024', 93, 96 },
        { 'I2A1025', 96, 99 },
        { 'I2A1026', 99, 102 },
        { 'I2A1027', 102, 105 },
        { 'I2A1028', 105, 108 },
        { 'I2A811', 108, 111 },
        { 'I2A1029', 111, 114 },
        { 'I2A1030', 114, 117 },
        { 'I2A1031', 117, 120 },
        { 'I2A1032', 120, 123 },
      },
      {
        { 'I2A1033', 0, 3 },
        { 'I2A1034', 3, 6 },
        { 'I2A1035', 6, 9 },
        { 'I2A1036', 9, 12 },
        { 'I2A1037', 12, 15 },
        { 'I2A1038', 15, 18 },
        { 'I2A1039', 18, 21 },
        { 'I2A1040', 21, 24 },
        { 'I2A1041', 24, 27 },
        { 'I2A1042', 27, 30 },
        { 'I2A1043', 30, 33 },
        { 'I2A1044', 33, 36 },
        { 'I2A1045', 36, 39 },
        { 'I2A1046', 39, 42 },
        { 'I2A1047', 42, 45 },
        { 'I2A1048', 45, 48 },
        { 'I2A1049', 48, 51 },
        { 'I2A1050', 51, 54 },
        { 'I2A1051', 54, 57 },
        { 'I2A1052', 57, 60 },
        { 'I2A1053', 60, 63 },
        { 'I2A1054', 63, 66 },
        { 'I2A983', 66, 69 },
        { 'I2A1055', 69, 72 },
        { 'I2A1056', 72, 75 },
        { 'I2A1057', 75, 78 },
        { 'I2A1058', 78, 81 },
        { 'I2A1059', 81, 84 },
        { 'I2A1060', 84, 87 },
        { 'I2A1061', 87, 90 },
        { 'I2A1062', 90, 93 },
        { 'I2A1063', 93, 96 },
        { 'I2A1064', 96, 99 },
        { 'I2A1065', 99, 102 },
        { 'I2A1066', 102, 105 },
        { 'I2A1067', 105, 108 },
        { 'I2A1068', 108, 111 },
        { 'I2A1069', 111, 114 },
        { 'I2A1070', 114, 117 },
        { 'I2A1071', 117, 120 },
        { 'I2A1072', 120, 123 },
      },
      {
        { 'I2A803', 0, 3 },
        { 'I2A1073', 3, 6 },
        { 'I2A1074', 6, 9 },
        { 'I2A1075', 9, 12 },
        { 'I2A1076', 12, 15 },
        { 'I2A1077', 15, 18 },
        { 'I2A1078', 18, 21 },
        { 'I2A1079', 21, 24 },
        { 'I2A1080', 24, 27 },
        { 'I2A1081', 27, 30 },
        { 'I2A1082', 30, 33 },
        { 'I2A1083', 33, 36 },
        { 'I2A1084', 36, 39 },
        { 'I2A1085', 39, 42 },
        { 'I2A1086', 42, 45 },
        { 'I2A1087', 45, 48 },
        { 'I2A1088', 48, 51 },
        { 'I2A1089', 51, 54 },
        { 'I2A1090', 54, 57 },
        { 'I2A1091', 57, 60 },
        { 'I2A1092', 60, 63 },
        { 'I2A1093', 63, 66 },
        { 'I2A1094', 66, 69 },
        { 'I2A1095', 69, 72 },
        { 'I2A1096', 72, 75 },
        { 'I2A1097', 75, 78 },
        { 'I2A1098', 78, 81 },
        { 'I2A1099', 81, 84 },
        { 'I2A1100', 84, 87 },
        { 'I2A1101', 87, 90 },
        { 'I2A1102', 90, 93 },
        { 'I2A1103', 93, 96 },
        { 'I2A1104', 96, 99 },
        { 'I2A1105', 99, 102 },
        { 'I2A1106', 102, 105 },
        { 'I2A1107', 105, 108 },
        { 'I2A1108', 108, 111 },
        { 'I2A1109', 111, 114 },
        { 'I2A1109', 114, 117 },
        { 'I2A1110', 117, 120 },
        { 'I2A1111', 120, 123 },
      },
      {
        { 'I2A1112', 0, 3 },
        { 'I2A1113', 3, 6 },
        { 'I2A1114', 6, 9 },
        { 'I2A1115', 9, 12 },
        { 'I2A1116', 12, 15 },
        { 'I2A1117', 15, 18 },
        { 'I2A1118', 18, 21 },
        { 'I2A1119', 21, 24 },
        { 'I2A1120', 24, 27 },
        { 'I2A1121', 27, 30 },
        { 'I2A1122', 30, 33 },
        { 'I2A1123', 33, 36 },
        { 'I2A1124', 36, 39 },
        { 'I2A1125', 39, 42 },
        { 'I2A1126', 42, 45 },
        { 'I2A1127', 45, 48 },
        { 'I2A1128', 48, 51 },
        { 'I2A1129', 51, 54 },
        { 'I2A1130', 54, 57 },
        { 'I2A1131', 57, 60 },
        { 'I2A1132', 60, 63 },
        { 'I2A1133', 63, 66 },
        { 'I2A1134', 66, 69 },
        { 'I2A1135', 69, 72 },
        { 'I2A1030', 72, 75 },
        { 'I2A1136', 75, 78 },
        { 'I2A1137', 78, 81 },
        { 'I2A1138', 81, 84 },
        { 'I2A1139', 84, 87 },
        { 'I2A1110', 87, 90 },
        { 'I2A1109', 90, 93 },
        { 'I2A1140', 93, 96 },
        { 'I2A1109', 96, 99 },
        { 'I2A731', 99, 102 },
        { 'I2A1141', 102, 105 },
        { 'I2A1142', 105, 108 },
        { 'I2A1143', 108, 111 },
        { 'I2A1144', 111, 114 },
        { 'I2A1145', 114, 117 },
        { 'I2A882', 117, 120 },
        { 'I2A1146', 120, 123 },
      },
      {
        { 'I2A1147', 0, 3 },
        { 'I2A1148', 3, 6 },
        { 'I2A1149', 6, 9 },
        { 'I2A1150', 9, 12 },
        { 'I2A1151', 12, 15 },
        { 'I2A1152', 15, 18 },
        { 'I2A1153', 18, 21 },
        { 'I2A1154', 21, 24 },
        { 'I2A1155', 24, 27 },
        { 'I2A1156', 27, 30 },
        { 'I2A1157', 30, 33 },
        { 'I2A1158', 33, 36 },
        { 'I2A1159', 36, 39 },
        { 'I2A1160', 39, 42 },
        { 'I2A1161', 42, 45 },
        { 'I2A1162', 45, 48 },
        { 'I2A1163', 48, 51 },
        { 'I2A1164', 51, 54 },
        { 'I2A1165', 54, 57 },
        { 'I2A1166', 57, 60 },
        { 'I2A1167', 60, 63 },
        { 'I2A1168', 63, 66 },
        { 'I2A1169', 66, 69 },
        { 'I2A1170', 69, 72 },
        { 'I2A1171', 72, 75 },
        { 'I2A1172', 75, 78 },
        { 'I2A1173', 78, 81 },
        { 'I2A1174', 81, 84 },
        { 'I2A1175', 84, 87 },
        { 'I2A1176', 87, 90 },
        { 'I2A1177', 90, 93 },
        { 'I2A1178', 93, 96 },
        { 'I2A1179', 96, 99 },
        { 'I2A1180', 99, 102 },
        { 'I2A1181', 102, 105 },
        { 'I2A1182', 105, 108 },
        { 'I2A620', 108, 111 },
        { 'I2A802', 111, 114 },
        { 'I2A730', 114, 117 },
        { 'I2A1183', 117, 120 },
        { 'I2A1184', 120, 123 },
      },
    }
    dashboard.section.header.val = {

      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],
      [[ █████████████████████████████████████████ ]],

      [[                                           ]],
      [[                  Riptide                  ]],
    }

    dashboard.section.buttons.val = {
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
