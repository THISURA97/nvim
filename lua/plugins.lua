--[[
██████╗     ██╗         ██╗   ██╗     ██████╗     ██╗    ███╗   ██╗    ███████╗
██╔══██╗    ██║         ██║   ██║    ██╔════╝     ██║    ████╗  ██║    ██╔════╝
██████╔╝    ██║         ██║   ██║    ██║  ███╗    ██║    ██╔██╗ ██║    ███████╗
██╔═══╝     ██║         ██║   ██║    ██║   ██║    ██║    ██║╚██╗██║    ╚════██║
██║         ███████╗    ╚██████╔╝    ╚██████╔╝    ██║    ██║ ╚████║    ███████║
╚═╝         ╚══════╝     ╚═════╝      ╚═════╝     ╚═╝    ╚═╝  ╚═══╝    ╚══════╝

]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then

    vim.api.nvim_echo({{'Installing packer.nvim', 'Type'}}, true, {})

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
--use{'matsuuu/pinkmare'}

use({ 'rose-pine/neovim', as = 'rose-pine' })


  -- dashboard
use { 'glepnir/dashboard-nvim'}

 -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires =
    {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},

      config = function()
      require("config.telescope").setup()
    end,

    }

}

-- Lua
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {

    }
  end
}

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  --Nvimtree
  use 'kyazdani42/nvim-tree.lua'

  --Icons
   -- Devicons
  use {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("config.nvim_web_devicons").setup()
    end
  }

  use{'ryanoasis/vim-devicons'}

  -- Treesitter
 use {
   'nvim-treesitter/nvim-treesitter',
    branch = "0.5-compat",
    run = ':TSUpdate',

    config = function()
      require("config.treesitter").setup()
    end,

  }

 require 'nvim-treesitter.install'.compilers = { "clang" }

 use{'romgrk/nvim-treesitter-context',
 config = function()
      require('treesitter-context.config').setup {enable = true}
   end
  }

 --still on testing
 use{'nvim-treesitter/nvim-treesitter-textobjects'}
 use {'RRethy/nvim-treesitter-textsubjects'}

  -- Status Line and Bufferline
use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true},

  config = function()
      require("config.lualine").setup()
    end
}

--whichkey
use{'liuchengxu/vim-which-key'}

--floaterm
use{'voldikss/vim-floaterm'}

--indentline
use{'lukas-reineke/indent-blankline.nvim',

 config = function()
      require('config.blankline').setup()
    end

}


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

 -- autopairs
  use {
   "windwp/nvim-autopairs",
   event = "InsertEnter",
   -- after = "nvim-compe",
   config = function()
     require "config.autopairs"
   end,
 }

  -- Colorizer
      use {
        'norcalli/nvim-colorizer.lua',

        config = function()
        require("colorizer").setup()
    end
      }

  --semshi
      use { 'numirias/semshi'}

  --package.json info
      use { "vuki656/package-info.nvim" }

  --menu
      use {'gelguy/wilder.nvim',  run = ':UpdateRemotePlugins' }

  --fzy-lua-native
     use{'romgrk/fzy-lua-native'}

  --delimit
     use{'Raimondi/delimitMate'}

  --coc
     use {'neoclide/coc.nvim', branch = 'release'}


  -- gps
      use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
      }

end)

