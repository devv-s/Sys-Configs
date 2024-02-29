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
      lsp.csharp_ls.setup({
        root_dir = function(startpath)
          return lsp.util.root_pattern("*.sln")(startpath)
          or lsp.util.root_pattern("*.csproj")(startpath)
          or lsp.util.root_pattern("*.git")(startpath)
        end
      })

      vim.keymap.set('n', '<leader>?', vim.diagnostic.open_float)

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<leader>l', function() vim.lsp.buf.format { async = true } end, opts)
        end
      })
		end
	}
}

