return {
	"reybits/scratch.nvim",
	keys = {
		{ "<leader>s", "<cmd>Scratch<cr>", desc = "Toggle scratch buffer" },
	},
	config = function()
		require("scratch").setup()
	end,
}
