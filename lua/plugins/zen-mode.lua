return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.95,
			width = 120,
			height = 1,
			options = {
				signcolumn = "no",
				number = false,
				relativenumber = false,
				cursorline = false,
				cursorcolumn = false,
				foldcolumn = "0",
				list = false,
			},
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false,
				showcmd = false,
			},
			twilight = { enabled = true },
			gitsigns = { enabled = false },
			tmux = { enabled = false },
		},
	},
	config = function(_, opts)
		require("zen-mode").setup(opts)
		
		-- Key mapping
		vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = "Toggle Zen Mode" })
	end,
}