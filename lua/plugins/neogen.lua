return {
	"danymat/neogen",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	config = function()
		local neogen = require("neogen")

		neogen.setup({
			snippet_engine = "luasnip",
			enabled = true,
			languages = {
				python = {
					template = {
						annotation_convention = "google_docstrings", -- or "numpydoc", "reST"
					},
				},
				go = {
					template = {
						annotation_convention = "godoc",
					},
				},
				javascript = {
					template = {
						annotation_convention = "jsdoc",
					},
				},
				typescript = {
					template = {
						annotation_convention = "tsdoc", -- or "jsdoc"
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>nf", function()
			neogen.generate({ type = "func" })
		end)

		vim.keymap.set("n", "<leader>nt", function()
			neogen.generate({ type = "type" })
		end)

		vim.keymap.set("n", "<leader>nc", function()
			neogen.generate({ type = "class" })
		end)
	end,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
