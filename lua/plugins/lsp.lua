return {
  -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Essential package management
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',

    -- Status updates for LSP
    { 'j-hui/fidget.nvim', opts = {} },

    -- Enhanced Lua development for Neovim config
    { 'folke/neodev.nvim', opts = {} },

    -- Completion capabilities
    'hrsh7th/cmp-nvim-lsp',

    -- Make Telescope optional to prevent errors
    { 'nvim-telescope/telescope.nvim', optional = true },
  },
  config = function()
    -- Enable the sign column for displaying diagnostics
    vim.opt.signcolumn = 'yes'

    -- Diagnostic configuration
    vim.diagnostic.config {
      severity_sort = true,
      float = { border = 'rounded', source = 'if_many' },
      underline = { severity = vim.diagnostic.severity.ERROR },
      signs = vim.g.have_nerd_font and {
        text = {
          [vim.diagnostic.severity.ERROR] = '󰅚 ',
          [vim.diagnostic.severity.WARN] = '󰀪 ',
          [vim.diagnostic.severity.INFO] = '󰋽 ',
          [vim.diagnostic.severity.HINT] = '󰌶 ',
        },
      } or {},
      virtual_text = {
        source = 'if_many',
        spacing = 2,
      },
    }

    -- Function to safely use Telescope if available
    local function get_telescope_or_fallback(picker)
      local has_telescope, telescope = pcall(require, 'telescope.builtin')
      if has_telescope then
        return telescope[picker]
      else
        -- Fallback to built-in LSP functions if Telescope isn't available
        local fallbacks = {
          lsp_definitions = vim.lsp.buf.definition,
          lsp_references = vim.lsp.buf.references,
          lsp_implementations = vim.lsp.buf.implementation,
          lsp_type_definitions = vim.lsp.buf.type_definition,
          lsp_document_symbols = vim.lsp.buf.document_symbol,
          lsp_dynamic_workspace_symbols = vim.lsp.buf.workspace_symbol,
        }
        return fallbacks[picker]
          or function()
            vim.notify('Telescope not available. Install it for enhanced LSP navigation.', vim.log.levels.WARN)
          end
      end
    end

    -- Set up LSP keymappings on attach
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        -- Document navigation - safely handle with or without Telescope
        map('K', vim.lsp.buf.hover, 'Hover Documentation')
        map('gd', get_telescope_or_fallback 'lsp_definitions', '[G]oto [D]efinition')
        map('gr', get_telescope_or_fallback 'lsp_references', '[G]oto [R]eferences')
        map('gI', get_telescope_or_fallback 'lsp_implementations', '[G]oto [I]mplementation')
        map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        map('<leader>D', get_telescope_or_fallback 'lsp_type_definitions', 'Type [D]efinition')
        map('gs', vim.lsp.buf.signature_help, '[G]et [S]ignature Help')

        -- Document symbols
        map('<leader>ds', get_telescope_or_fallback 'lsp_document_symbols', '[D]ocument [S]ymbols')
        map('<leader>ws', get_telescope_or_fallback 'lsp_dynamic_workspace_symbols', '[W]orkspace [S]ymbols')

        -- Code actions
        map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        map('<F2>', vim.lsp.buf.rename, 'Rename')
        map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })
        map('<F4>', vim.lsp.buf.code_action, 'Code Action')
        map('<leader>f', function()
          vim.lsp.buf.format { async = true }
        end, '[F]ormat')
        map('<F3>', function()
          vim.lsp.buf.format { async = true }
        end, 'Format', { 'n', 'x' })

        -- Document highlight on cursor hold (compatible with both Neovim 0.9+ and 0.10+)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client then
          local has_highlight = false

          -- Handle capability checking for different Neovim versions
          if client.server_capabilities then
            has_highlight = client.server_capabilities.documentHighlightProvider
          else
            -- For newer Neovim versions that use supports_method
            local function client_supports_method(client, method, bufnr)
              if vim.fn.has 'nvim-0.10' == 1 then
                return client.supports_method and client:supports_method(method, bufnr)
              else
                return client.server_capabilities.documentHighlightProvider
              end
            end
            has_highlight = client_supports_method(client, 'textDocument/documentHighlight', event.buf)
          end

          if has_highlight then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end
        end

        -- Toggle inlay hints (safely handling different Neovim versions)
        if client and vim.lsp.inlay_hint then
          local has_inlay_hints = false

          if client.server_capabilities then
            has_inlay_hints = client.server_capabilities.inlayHintProvider
          else
            local function client_supports_method(client, method, bufnr)
              if vim.fn.has 'nvim-0.10' == 1 then
                return client.supports_method and client:supports_method(method, bufnr)
              else
                return client.server_capabilities.inlayHintProvider
              end
            end
            has_inlay_hints = client_supports_method(client, 'textDocument/inlayHint', event.buf)
          end

          if has_inlay_hints then
            map('<leader>th', function()
              -- Handle both new and old inlay hint APIs
              if vim.lsp.inlay_hint.is_enabled then
                -- New API (Neovim 0.10+)
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }, { bufnr = event.buf })
              else
                -- Old API (pre-0.10)
                local status = vim.lsp.inlay_hint.get { bufnr = event.buf }
                vim.lsp.inlay_hint.enable(not status, { bufnr = event.buf })
              end
            end, '[T]oggle Inlay [H]ints')
          end
        end
      end,
    })

    -- Set up LSP capabilities
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    local has_cmp, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
    if has_cmp then
      capabilities = vim.tbl_deep_extend('force', capabilities, cmp_lsp.default_capabilities())
    end

    -- Configure servers
    local mason_servers = {
      -- ts_ls = {},
      -- clangd = {},
      pyright = {},
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = 'Replace',
            },
            -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            -- diagnostics = { disable = { 'missing-fields' } },
          },
        },
      },
      rust_analyzer = {
        settings = {
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
              check = {
                allTargets = false,
              },
            },
          },
        },
      },
      tinymist = {
        offset_encoding = 'utf-8',
        settings = {
          exportPdf = 'never',
          outputPath = '$root/target/$name',
          formatterMode = 'typstyle',
        },
      },
    }

    -- Set up Mason
    require('mason').setup()

    -- Tools to ensure are installed
    local ensure_installed = vim.tbl_keys(mason_servers or {})
    vim.list_extend(ensure_installed, {
      -- 'stylua', -- Used to format Lua code
    })

    require('mason-tool-installer').setup { ensure_installed = ensure_installed }

    -- Set up Mason-managed LSP servers
    require('mason-lspconfig').setup {
      ensure_installed = ensure_installed,
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = mason_servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    }

    require('lspconfig').qmlls.setup {
      cmd = { 'qmlls', '-E' },
    }

    -- Manually configure non-Mason servers

    -- Nix language server
    require('lspconfig').nixd.setup {
      -- cmd = { 'nixd' },
      -- settings = {
      --   nixd = {
      --     nixpkgs = {
      --       expr = 'import <nixpkgs> {}',
      --     },
      --     formatting = {
      --       command = { 'nix fmt || alejandra' },
      --     },
      --     options = {},
      --   },
      -- },
    }
  end,
}
