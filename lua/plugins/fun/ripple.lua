return {

  -- The following demonstrates the default configuration.
  -- If you would like to use the defaults, you do not need to include this.
  vertical_step_size = 1,
  horizontal_step_size = 1,
  keys = {
    expand_right = { '<C-right>', mode = { 'n', 'v' }, desc = 'expand right' },
    expand_left = { '<C-left>', mode = { 'n', 'v' }, desc = 'expand left' },
    expand_up = { '<C-up>', mode = { 'n', 'v' }, desc = 'expand up' },
    expand_down = { '<C-down>', mode = { 'n', 'v' }, desc = 'expand down' },
  },

  -- -- The following demonstrates a custom configuration. Note that the "short"
  -- -- keymap notation here will fallback on the default mode and desc.
  -- vertical_step_size = 2,
  -- horizontal_step_size = 5,
  -- keys = {
  --   expand_up = "<up>",
  --   expand_down = "<down>",
  --   expand_right = "<right>",
  --   expand_left = "<left>",
  -- },

  -- -- Use the following to disable all key mappings:
  -- disable_keymaps = true,
  -- -- Or disable them one at a time:
  -- keys = {
  --   expand_up = false,
  --   expand_down = false,
  --   expand_right = false,
  --   expand_left = false,
  -- },
}
