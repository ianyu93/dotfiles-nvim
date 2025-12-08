return {
	"folke/snacks.nvim",
	opts = {
		scratch = {
			ft = "markdown",
			autowrite = true,
			filekey = {
				cwd = true,
				branch = true,
			},
			win = {
				width = 80,
				height = 25,
				border = "single",
			},
		},
	},
	keys = {
		{ "<leader>s", function() Snacks.scratch() end, desc = "Toggle Scratchpad" },
		{ "<leader>S", function() Snacks.scratch.select() end, desc = "Select Scratchpad" },
	},
}
