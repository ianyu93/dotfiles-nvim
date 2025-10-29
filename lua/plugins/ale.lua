return {
	"dense-analysis/ale",
	config = function()
		-- Configuration goes here.
		local g = vim.g

		g.ale_fix_on_save = 1
		g.ale_linters = {
			python = { "ruff" },
			javascript = { "eslint" },
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
			javascriptreact = { "eslint" },
			lua = { "lua_language_server" },
			sh = { "shellcheck" },
			go = { "golangci-lint", "go vet" },
			sql = { "sqlfluff" },
			baml = {},
		}
		g.ale_fixers = {
			-- Run ruff to sort imports (I) before formatting
			python = { "ruff", "ruff_format" },
			javascript = { "prettier", "eslint" },
			typescript = { "prettier", "eslint" },
			typescriptreact = { "prettier", "eslint" },
			javascriptreact = { "prettier", "eslint" },
			lua = { "stylua" },
			go = { "gofmt", "goimports" },
			sql = { "sqlfluff" },
		}

		-- Configure ruff fixer to only apply import sorting (rule I)
		-- ALE constructs the full command; these options are appended.
		-- Effective command: `ruff check --fix --select I` (then `ruff format`).
		g.ale_python_ruff_fix_options = "--select I"
		-- Use local executables from node_modules
		g.ale_javascript_eslint_executable = "npx"
		g.ale_typescript_eslint_executable = "npx"
		g.ale_javascript_prettier_executable = "npx"
		g.ale_typescript_prettier_executable = "npx"

		g.ale_echo_msg_error_str = "E"
		g.ale_echo_msg_warning_str = "W"
		g.ale_echo_msg_format = "[%linter%] %s [%severity%]"

		-- BAML LSP configuration
		-- Register BAML LSP with ALE
		vim.cmd([[
              augroup BAMLLspSetup
                  autocmd!
                  autocmd FileType baml call ale#linter#Define('baml', {
                  \   'name': 'baml_lsp',
                  \   'lsp': 'stdio',
                  \   'executable': {b -> 'baml'},
                  \   'command': '%e lsp',
                  \   'project_root': {b -> ale#path#FindNearestDirectory(b, 'baml_src')},
                  \})
              augroup END
          ]])
	end,
}
