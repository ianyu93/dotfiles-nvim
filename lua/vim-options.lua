vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
-- Put this somewhere in your lua config (e.g. after you attach an LSP)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: rename symbol under cursor" })

-- Disable experimental treesitter warning
vim.g.experimental_check_rtp = false
