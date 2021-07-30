vim.cmd('nnoremap <leader>ff <cmd>lua require(\'telescope.builtin\').find_files()<cr>')
vim.cmd('nnoremap <leader>fg <cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
vim.cmd('nnoremap <leader>fb <cmd>lua require(\'telescope.builtin\').buffers()<cr>')
vim.cmd('nnoremap <leader>fh <cmd>lua require(\'telescope.builtin\').help_tags()<cr>')
vim.cmd('nnoremap <leader>ws <cmd>lua require(\'telescope.builtin\').lsp_workspace_symbols()<cr>')
vim.cmd('nnoremap <leader>ds <cmd>lua require(\'telescope.builtin\').lsp_document_symbols()<cr>')

