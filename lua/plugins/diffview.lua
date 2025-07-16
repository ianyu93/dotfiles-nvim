return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("diffview").setup({
			-- Default configuration
		})
		
		-- Keymap
		vim.keymap.set("n", "<leader>gdm", ":DiffviewOpen main<CR>", { desc = "Diff view main" })
	end,
}