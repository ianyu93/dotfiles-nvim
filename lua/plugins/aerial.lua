return {
	"stevearc/aerial.nvim",
	event = "LspAttach",
	opts = {},
	keys = {
		{ "<leader>oo", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
	},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
