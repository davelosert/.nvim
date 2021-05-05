vim.cmd("noremap <SPACE> <Nop>")
require('plugins')
require('globals')
require('settings')
require('keymappings')

require('colorizer')
require('nvim-tree')
require('quick-scope')

local base16 = require "base16"
base16(base16.themes["solarized-dark"], true)

vim.cmd('source $HOME/.config/nvim/vim/highlight_yank.vim')
