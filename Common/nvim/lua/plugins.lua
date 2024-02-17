-- (usually) the url of the plugin github page.
local plugins = {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "folke/tokyonight.nvim" },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
}

return plugins

