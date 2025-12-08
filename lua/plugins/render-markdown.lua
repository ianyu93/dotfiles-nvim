return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter",
			build = function()
				pcall(vim.cmd, ":TSInstall markdown")
				pcall(vim.cmd, ":TSInstall markdown_inline")
				pcall(vim.cmd, ":TSInstall html")
			end,
		},
		"nvim-tree/nvim-web-devicons",
	},
	opts = {},
}
