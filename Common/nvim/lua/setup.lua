-- execute commands to set/start any plugins or programs.
local execute = vim.cmd

-- setting the color scheme and transparent background.
execute.colorscheme("tokyonight")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

