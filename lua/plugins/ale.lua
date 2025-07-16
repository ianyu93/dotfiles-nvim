return({
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
              sh = {"shellcheck"}
          }
          g.ale_fixers = {
              python = { "ruff_format" },
              javascript = { "prettier", "eslint" },
              typescript = { "prettier", "eslint" },
              typescriptreact = { "prettier", "eslint" },
              javascriptreact = { "prettier", "eslint" },
              lua = { "stylua" },
          }

          -- Use local executables from node_modules
          g.ale_javascript_eslint_executable = 'npx'
          g.ale_typescript_eslint_executable = 'npx'
          g.ale_javascript_prettier_executable = 'npx'
          g.ale_typescript_prettier_executable = 'npx'

          g.ale_echo_msg_error_str = 'E'
          g.ale_echo_msg_warning_str = 'W'
          g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
      end,
  })
