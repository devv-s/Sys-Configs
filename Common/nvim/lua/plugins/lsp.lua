return {
	{
		'williamboman/mason.nvim',
    lazy = false,
		config = function()
		  require('mason').setup()
		end
	},
	
	{
		'williamboman/mason-lspconfig.nvim',
    lazy = false,
		config = function()
		  require('mason-lspconfig').setup({
        ensured_installed = {
          "lua_ls",
          "tsserver"
        }
      })
		end
	},

	{
		'neovim/nvim-lspconfig',
    lazy = false,
		config = function()
			local lsp = require("lspconfig")
      lsp.tsserver.setup({})
      lsp.csharp_ls.setup({})
		end
	}
}

