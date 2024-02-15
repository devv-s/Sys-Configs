local option = vim.opt

-- Tabs and Indentations --
option.tabstop = 2
option.softtabstop = 2
option.shiftwidth = 2
option.expandtab = true
option.smartindent = true
option.wrap = true

-- Searching --
option.incsearch = true
option.ignorecase = true
option.smartcase = true
option.hlsearch = false

-- Editor Appearance --
option.number = true
option.relativenumber = true
option.termguicolors = true
option.colorcolumn = "120"
option.signcolumn = "yes"
option.completeopt = "menuone,noinsert,noselect"

-- Editor Behaviour --
option.hidden = true
option.errorbells = false
option.swapfile = false
option.backup = false
option.undofile = true
option.undodir = vim.fn.expand('~/.vim/undodir')
option.backspace = "indent,eol,start"
option.splitright = true
option.splitbelow = true
option.encoding = "UTF-8"

