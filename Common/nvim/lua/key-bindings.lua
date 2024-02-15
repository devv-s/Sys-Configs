local shortcut = vim.keymap
local onNormalMode = "n"
local onVisualMode = "v"
local silentAndNoremap = { noremap = true, silent = true }

-- Sourcing and Reloading --
shortcut.set(onNormalMode, '<leader>s', '<cmd>source ~/.config/nvim/init.lua<CR>', {})

