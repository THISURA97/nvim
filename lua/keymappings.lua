-----------------------------------------------------------
-- Keymapping
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- init.lua

local map = vim.api.nvim_set_keymap

-- general
map('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})

-- no hl
map('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- nvim tree
map('n', '<Leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window movement
map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

-- better indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
map('i', 'jk', '<ESC>', {noremap = true, silent = true})
map('i', 'kj', '<ESC>', {noremap = true, silent = true})
map('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
map('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

--Which key
map('n','<Leader>x',':WhichKey ""<CR>',{noremap=true,silent=true})

--flaoterm
map('n','<Leader>ft',':FloatermToggle<CR>',{noremap=true,silent=true})

--tagbar
map('n','<Leader>tb',':TagbarToggle<CR>',{noremap=true,silent=true})

--blameline
map('n','<Leader>bl',':ToggleBlameLine<CR>',{noremap=true,silent=true})

--Mundo undotree
map('n','<Leader>ut',':MundoToggle<CR>',{noremap=true,silent=true})

--Leaderf
map('n','<Leader>lf',':Leaderf file<CR>',{noremap=true,silent=true})

--bufkill
--Unloading/Deleting/Wiping

map('n','<Leader>bn',':BUN<CR>',{noremap=true,silent=true})
--When you wish to unload a file from the buffer and keep the window/split intact

map('n','<Leader>bd',':BD<CR>',{noremap=true,silent=true})
--When you wish to delete a file from the buffer and keep the window/split intact

map('n','<Leader>bw',':BW<CR>',{noremap=true,silent=true})
--When you wish to wipe a file from the buffer and keep the window/split intact

--bufkill
--Moving through buffers

map('n','<Leader>bb',':BB<CR>',{noremap=true,silent=true})
--To move backwards through recently accessed buffers:

map('n','<Leader>bf',':BF<CR>',{noremap=true,silent=true})
--and to move forwards:

