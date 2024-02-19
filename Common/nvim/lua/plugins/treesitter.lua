return {
	"nvim-treesitter/nvim-treesitter",
	name = "treesitter",
	build = ":TSUpdate"
	config = function()
		require("nvim-treesitter.configs").setup {
			sync_install = false,
			ensure_installed = { "lua", "typescript", "rust" },

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
}

