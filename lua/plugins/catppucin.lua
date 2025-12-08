return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
