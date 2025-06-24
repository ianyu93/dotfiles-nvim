# Neovim Configuration

My personal Neovim configuration files.

## Installation

Clone this repository to your Neovim config directory:

```bash
git clone https://github.com/ianyu93/dotfiles-nvim.git ~/.config/nvim
```

## Requirements

- Neovim >= 0.9.0
- Git

## Plugins

This configuration includes the following plugins:

- **[ALE](https://github.com/dense-analysis/ale)** - Asynchronous linting and fixing
  - Python: `ruff` for linting and formatting
  - JavaScript/TypeScript: `eslint`
  - Lua: `lua_language_server` and `stylua`

- **[Catppuccin](https://github.com/catppuccin/nvim)** - Beautiful pastel theme

- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** - Fast and customizable statusline

- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer with icons
  - `<C-n>` to toggle file tree

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
  - `<C-p>` to find files
  - `<leader>fg` to search text in files

- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting
  - Configured for Lua, JavaScript, TypeScript, and Python

## Structure

```
~/.config/nvim/
├── init.lua          # Main configuration entry point
├── lua/
│   ├── plugins.lua   # Plugin list (currently empty, uses plugin directory)
│   ├── plugins/      # Individual plugin configurations
│   │   ├── ale.lua
│   │   ├── catppuccin.lua
│   │   ├── lualine.lua
│   │   ├── neo-tree.lua
│   │   ├── telescope.lua
│   │   └── treesitter.lua
│   └── vim-options.lua
└── README.md         # This file
```
