return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
  dependencies = { "OXY2DEV/markview.nvim" },
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "typescript", "python" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
