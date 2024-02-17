local shortcut = vim.keymap
local onNormalMode = "n"
local onVisualMode = "v"
local silentAndNoremap = { noremap = true, silent = true }

-- Sourcing and Reloading (not working)--
shortcut.set(onNormalMode, '<leader>so', '<cmd>source ~/.config/nvim/init.lua<CR>', {})

-- Plugins configurations and mapping --
require("plugins-configs/telescope")
require("plugins-configs/treesitter")
require("plugins-configs/neo-tree")

