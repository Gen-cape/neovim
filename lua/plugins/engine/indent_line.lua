return {
  "lukas-reineke/indent-blankline.nvim",

  main = "ibl",
  event = 'VeryLazy',

  opts = {
    debounce = 100,
    indent = {
      char = "▏",
      tab_char = "▏",
    },
    scope = {
      show_start = false,
      show_end = false,
    },
  },
}
