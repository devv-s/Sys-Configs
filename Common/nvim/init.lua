-- makes possible to place key-bindings after plugins.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("neovim-options")
require("package-manager")         -- makes 'lazy' package manager available here.
require("lazy").setup("plugins")   -- loading plugins (as maintained in a separate file).
require("setup")                   -- commands required to start or set something once it is loaded.

