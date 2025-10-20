return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	event = {
		"BufReadPre " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents") .. "/**/*.md",
		"BufNewFile " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents") .. "/**/*.md",
	},
	cmd = "Obsidian",
	dependencies = { "nvim-lua/plenary.nvim" },
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	opts = {
		workspaces = {
			{
				name = "main",
				path = vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/main"),
			},
		},

		-- Disable legacy commands to use modern format (Obsidian <subcommand>)
		legacy_commands = false,
	},
}
