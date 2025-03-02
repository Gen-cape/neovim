{
  baseLazy,
  addKey',
  ...
}:
baseLazy "jmbuhr/otter.nvim" {
  eventHook = "VimEnter";
  coreDeps = ["'nvim-treesitter/nvim-treesitter',"];
  noSetup = true;
}
