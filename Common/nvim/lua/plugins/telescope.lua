return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' }
	config = function()
		local builtin = require('telescope.builtin')
		local shortcut = vim.keymap

		shortcut.set('n', '<leader>ff', builtin.find_files, {})
		shortcut.set('n', '<leader>fg', builtin.live_grep, {})
		shortcut.set('n', '<leader>fb', builtin.buffers, {})
	end
},

