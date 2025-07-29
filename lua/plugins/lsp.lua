return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      -- Configure language servers
      vim.lsp.config('lua_ls', {
        cmd = {'lua-language-server'},
        filetypes = {'lua'},
        root_markers = {'.luarc.json', '.luarc.jsonc', '.git'},
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = {'vim'},
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
      vim.lsp.config('tsserver', {
        cmd = {'typescript-language-server', '--stdio'},
        filetypes = {'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx'},
        root_markers = {'package.json', 'tsconfig.json', '.git'},
      })

      -- Python
      vim.lsp.config('pyright', {
        cmd = {'pyright-langserver', '--stdio'},
        filetypes = {'python'},
        root_markers = {'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git'},
      })

      -- Enable configured language servers
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('tsserver')
      vim.lsp.enable('pyright')

      -- LSP keybindings are already in vim-options.lua
    end,
  },
}