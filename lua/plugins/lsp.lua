return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			-- Add blink.cmp capabilities to all LSP servers
			vim.lsp.config("*", {
				capabilities = require("blink.cmp").get_lsp_capabilities(),
			})

			-- Configure language servers
			vim.lsp.config("lua_ls", {
				cmd = { "lua-language-server" },
				filetypes = { "lua" },
				root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})

			-- TypeScript/JavaScript
			vim.lsp.config("tsserver", {
				cmd = { "typescript-language-server", "--stdio" },
				filetypes = {
					"javascript",
					"javascriptreact",
					"javascript.jsx",
					"typescript",
					"typescriptreact",
				},
				root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
			})

			-- Python
			vim.lsp.config("basedpyright", {
				cmd = { "basedpyright-langserver", "--stdio" },
				filetypes = { "python" },
				root_markers = { "pyproject.toml", "uv.lock", "setup.py", "setup.cfg", "requirements.txt", ".git" },
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							diagnosticMode = "workspace",
						},
						venvPath = ".",
						venv = ".venv",
					},
					basedpyright = {
						analysis = {
							typeCheckingMode = "off",
						},
					},
				},
				before_init = function(_, config)
					-- Dynamically detect Python path from uv's .venv
					local cwd = vim.fn.getcwd()
					local util = require("lspconfig.util")
					local path = util.path

					-- Find project root
					local root = util.find_git_ancestor(cwd) or cwd

					-- Check for .venv in project root (uv default location)
					local venv_path = path.join(root, ".venv")
					if vim.fn.isdirectory(venv_path) == 1 then
						local python_path = path.join(venv_path, "bin", "python")
						if vim.fn.filereadable(python_path) == 1 then
							config.settings.python.pythonPath = python_path
						end
					-- Check if VIRTUAL_ENV is set (for activated environments)
					elseif vim.env.VIRTUAL_ENV then
						config.settings.python.pythonPath = path.join(vim.env.VIRTUAL_ENV, "bin", "python")
					end
				end,
			})

			-- Go
			vim.lsp.config("gopls", {
				cmd = { "/Users/ian.yu/go/bin/gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_markers = { "go.mod", "go.work", ".git" },
			})

			-- Enable configured language servers
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("tsserver")
			vim.lsp.enable("basedpyright")
			vim.lsp.enable("gopls")

			-- LSP keybindings are already in vim-options.lua
		end,
	},
}
