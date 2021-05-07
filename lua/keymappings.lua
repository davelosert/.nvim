vim.cmd("noremap <SPACE> <Nop>")
-- leader to space
vim.g.mapleader=' '

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- coding with german keyboard
vim.api.nvim_set_keymap('i', '<C-s>', '[]<left>', { silent = true, noremap = true})
vim.api.nvim_set_keymap('i', '<C-b>', '()<left>', { silent = true, noremap = true})
vim.api.nvim_set_keymap('i', '<C-c>', '{}<left>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<', { silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-g>', '>', { silent = true, noremap = true })
