return({
	"dense-analysis/ale",
	config = function()
		-- Configuration goes here.
		local g = vim.g

		g.ale_fix_on_save = 0
		g.ale_linters = {
			python = { "ruff" },
			javascript = { "eslint" },
			typescript = { "eslint" },
			lua = { "lua_language_server" },
		}
		g.ale_fixers = {
			python = { "ruff" },
			javascript = { "eslint" },
			typescript = { "eslint" },
			lua = { "stylua" },
		}
		g.ale_echo_msg_error_str = 'E'
		g.ale_echo_msg_warning_str = 'W'
		g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
	end,
})
