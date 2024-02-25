return {
  { "hrsh7th/cmp-buffer" },       -- suggests the words used in the current buffer.
  { "hrsh7th/cmp-path" },         -- suggests the path. 
  { "hrsh7th/cmp-nvim-lua" },     -- suggests the lua vim APIs. 
  { "hrsh7th/cmp-nvim-lsp" },     -- suggests the constructs from lsp.
  { "saadparwaiz1/cmp_luasnip" }, -- actual snippet plugin.
  {
    "hrsh7th/nvim-cmp",           -- snippet engine.
    config = function()
      local cmp = require'cmp'
      
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-k>'] = cmp.mapping.scroll_docs(-4),
          ['<C-j>'] = cmp.mapping.scroll_docs(4),
          ['<C-h>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lua' },
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer', keyword_length = 4 },
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          end,
        },
      })
    end
  },
}
