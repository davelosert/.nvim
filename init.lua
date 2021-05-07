require('plugins')
require('globals')
require('settings')
require('keymappings')

if(not vim.g.vscode)
then
    require('c_colorizer')
    require('c_base16')
--    require('c_nvim-tree')
    require('c_hop')
end

require('c_quick-scope')

vim.cmd('source $HOME/.config/nvim/vim/highlight_yank.vim')
vim.cmd('source $HOME/.config/nvim/vim/c_vscode/init.vim')
