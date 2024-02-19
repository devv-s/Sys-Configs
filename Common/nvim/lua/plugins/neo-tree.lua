return {
	"nvim-neo-tree/neo-tree.nvim",
	name = "neotree",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", ":Neotree filesystem reveal right toggle<CR>" },
	}
}

