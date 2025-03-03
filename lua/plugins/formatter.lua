return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      -- Format buffer using Conform
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    -- Define formatters
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      json = { 'prettierd', 'prettier', stop_after_first = true },
      html = { 'prettierd', 'prettier', stop_after_first = true },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      scss = { 'prettierd', 'prettier', stop_after_first = true },
      markdown = { 'prettierd', 'prettier', stop_after_first = true },
      -- yaml = { 'prettier' },
      rust = { 'rustfmt' },
      go = { 'gofmt', 'goimports' },
      cpp = { 'clang-format' },
      cc = { 'clang-format' },
      h = { 'clang-format' },
      -- javascript = { { 'prettierd', 'prettier' } },
      -- python = { 'black' },
      nix = { 'alejandra' },
      bash = { 'shfmt' },
      yaml = { 'yq' },
      typst = { 'typstyle' },
    },

    -- Don't show formatting errors in a notification
    notify_on_error = false,

    -- Format on save configuration
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style
      local disable_filetypes = { c = true, cpp = true }

      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end

      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
  },
}
