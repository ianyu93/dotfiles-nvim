vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.o.jumpoptions = "stack"
vim.opt.number = true
vim.opt.relativenumber = true

-- Global keymaps
vim.keymap.set('n', '<leader>/', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight', silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard', silent = true })
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste over (keep clipboard)', silent = true })

-- LSP keybindings (minimal set)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set('n', 'gr', '<cmd>FzfLua lsp_references<cr>', vim.tbl_extend('force', opts, { desc = 'Show references' }))
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, vim.tbl_extend('force', opts, { desc = 'Go to implementation' }))
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, vim.tbl_extend('force', opts, { desc = 'Rename symbol' }))
  end,
})

-- Disable experimental treesitter warning
vim.g.experimental_check_rtp = false
