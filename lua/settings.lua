local utils = require('utils')

local cmd = vim.cmd
local indent = 4

-- Map leader to space
vim.g.mapleader = ' '

cmd 'syntax enable'
cmd 'filetype plugin indent on'

cmd 'set termguicolors'
cmd 'colorscheme pinkmare'

--Enable persistent undo so that undo history persists across vim sessions
cmd 'set undofile'
cmd 'set undodir=~/.vim/undo'



utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'tabstop', indent)

utils.opt('b', 'expandtab', true)

utils.opt('b', 'smartindent', true)
utils.opt('b', 'autoindent', true)

utils.opt('o', 'hidden', true)

utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)

utils.opt('o', 'scrolloff', 4)
utils.opt('o', 'sidescrolloff', 5)

utils.opt('o', 'shiftround', true)

utils.opt('o', 'fileignorecase', true)

utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)

utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', false)

utils.opt('o', 'clipboard','unnamed,unnamedplus')

utils.opt('o','ruler',true)
utils.opt('o','cursorline',true)







