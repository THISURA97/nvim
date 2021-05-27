-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}



 -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }



  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  --Nerdtree
  use 'kyazdani42/nvim-tree.lua'


  --Icons
  use 'kyazdani42/nvim-web-devicons'
  use{'ryanoasis/vim-devicons'}

  -- Treesitter


  -- Status Line and Bufferline
 use {
  {'vim-airline/vim-airline'},{'vim-airline/vim-airline-themes'}
}

  use 'romgrk/barbar.nvim'


  -- general
use { 'glepnir/dashboard-nvim' }



end)
