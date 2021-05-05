local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

vim.cmd [[packadd packer.nvim]] 

return require("packer").startup(function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- Color stuff
        use "norcalli/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"
        
        -- File explorer
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        
        use "unblevable/quick-scope"
        -- use "asvetliakov/vim-easymotion"

        use {
          'phaazon/hop.nvim',
          as = 'hop',
          config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
          end
        }
    end
)
