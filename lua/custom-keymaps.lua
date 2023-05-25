local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
map('n', '<leader>e', [[:NvimTreeToggle<CR>]], {})

vim.keymap.set('n', '[e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wl', '<C-w>l')

vim.keymap.set('n', '<leader>mk', ':m -1<CR>')
vim.keymap.set('n', '<leader>mj', ':m +1<CR>')

vim.keymap.set('n', '<leader>la', ':Telescope buffers<CR>')
