-- (usually) the url of the plugin github page.
local plugins = {
  -- minimal base --
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "folke/tokyonight.nvim" },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  -- for file explorer --
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
}

return plugins

