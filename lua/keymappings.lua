-- general
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- nvim tree
vim.api.nvim_set_keymap('n', '<Leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

--Which key
vim.api.nvim_set_keymap('n','<Leader>x',':WhichKey ""<CR>',{noremap=true,silent=true})

--flaoterm
vim.api.nvim_set_keymap('n','<Leader>ft',':FloatermToggle<CR>',{noremap=true,silent=true})

--tagbar
vim.api.nvim_set_keymap('n','<Leader>tb',':TagbarToggle<CR>',{noremap=true,silent=true})

--blameline
vim.api.nvim_set_keymap('n','<Leader>bl',':ToggleBlameLine<CR>',{noremap=true,silent=true})

--Mundo undotree
vim.api.nvim_set_keymap('n','<Leader>ut',':MundoToggle<CR>',{noremap=true,silent=true})
