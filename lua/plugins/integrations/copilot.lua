return {
  'github/copilot.vim',
  event = 'InsertEnter', -- Load the plugin when entering insert mode
  config = function()
    -- Optional: You can add configuration options here
    -- vim.g.copilot_no_tab_map = true -- Disable the default Tab mapping
    -- vim.g.copilot_assume_mapped = true -- Assume you will map it manually

    -- vim.keymap.set('i', 'S-Tab', 'copilot#accept()', { silent = true, script = true, expr = true })
  end,
}
