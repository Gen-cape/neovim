{pkgs, ...}:
#lua
''
  return {

    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
      { 'nvim-telescope/telescope.nvim', optional = true },
    },
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.qmlls.setup {
        cmd = { '${pkgs.kdePackages.qtdeclarative}/bin/qmlls', '-E' },
        capabilities = vim.tbl_deep_extend('force', {}, require('cmp_nvim_lsp').default_capabilities()),
        root_dir = lspconfig.util.root_pattern('*.qml', '.git'),
        filetypes = { 'qml' },
        single_file_support = true,
      }
    end,
  }
''
