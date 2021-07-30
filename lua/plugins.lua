-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end-- Bootstrap packer so it auto installs everywhere

vim.cmd [[packadd packer.nvim]]

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}


--colorscheme
use{'matsuuu/pinkmare'}

 -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',

      requires = {
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},

      }

  }

-- Lua
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  --Nvimtree
  use 'kyazdani42/nvim-tree.lua'

  --Icons
  use 'kyazdani42/nvim-web-devicons'
  use{'ryanoasis/vim-devicons'}

  -- Treesitter
 use {'nvim-treesitter/nvim-treesitter'}
 require 'nvim-treesitter.install'.compilers = { "clang" }
 use{'romgrk/nvim-treesitter-context'}


  -- Status Line and Bufferline
 use {
  {'vim-airline/vim-airline'},{'vim-airline/vim-airline-themes'}, requires = 'kyazdani42/nvim-web-devicons', branch = 'main'
}

use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}


  -- dashboard
use { 'glepnir/dashboard-nvim'}

--whichkey
use{'liuchengxu/vim-which-key'}

--floaterm
use{'voldikss/vim-floaterm'}

--indentline

use{'lukas-reineke/indent-blankline.nvim'}


--tagbar
use{'preservim/tagbar'}

--polyglot
use{'sheerun/vim-polyglot'}

--undo tree
use{'simnalamburt/vim-mundo'}

--number
use 'nacro90/numb.nvim'

--vifm
use{'vifm/vifm.vim'}

--LeaderF
use{'Yggdroot/LeaderF'}

--cheatsheet
use 'sudormrfbin/cheatsheet.nvim'

--spaceduck
use {'pineapplegiant/spaceduck', branch = 'main' }

--bufkil
use {'qpkorr/vim-bufkill'}

--Jabs
use 'matbme/JABS.nvim'

  --git signs
  use { 'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
      }

  --reload
  use { 'famiu/nvim-reload',
          requires = { 'nvim-lua/plenary.nvim' }

      }

  -- Autocompletion
    use { 'hrsh7th/nvim-compe' }


  -- Colorizer
      use { 'norcalli/nvim-colorizer.lua'}

  --semshi
      use { 'numirias/semshi'}



end)

