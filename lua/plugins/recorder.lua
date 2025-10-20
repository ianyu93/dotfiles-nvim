return {
	"chrisgrieser/nvim-recorder",
	dependencies = "rcarriga/nvim-notify",
	config = function()
		require("recorder").setup({
			slots = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" },
			mappings = {
				startStopRecording = "q",
				playMacro = "Q",
				switchSlot = "<C-q>",
				editMacro = "cq",
				deleteAllMacros = "dq",
				yankMacro = "yq",
			},
		})

		-- Project-specific macro mapping
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			pattern = vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/main") .. "/*",
			callback = function()
				vim.keymap.set("n", "X", "i<BS>X<Esc>lj", { buffer = true, desc = "Insert X and move down" })
			end,
		})
	end,
}
