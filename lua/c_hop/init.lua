-- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
if(not vim.g.vscode)
then
  vim.api.nvim_set_keymap('n', '<Leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
end
