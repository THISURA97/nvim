vim.cmd('nnoremap <leader>ff <cmd>lua require(\'telescope.builtin\').find_files()<cr>')
vim.cmd('nnoremap <leader>fg <cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
vim.cmd('nnoremap <leader>fb <cmd>lua require(\'telescope.builtin\').buffers()<cr>')
vim.cmd('nnoremap <leader>fh <cmd>lua require(\'telescope.builtin\').help_tags()<cr>')
vim.cmd('nnoremap <leader>ws <cmd>lua require(\'telescope.builtin\').lsp_workspace_symbols()<cr>')
vim.cmd('nnoremap <leader>ds <cmd>lua require(\'telescope.builtin\').lsp_document_symbols()<cr>')

local M = {}

M.setup = function()
  local actions = require('telescope.actions')
  local telescope = require "telescope"
  -- telescope.setup(telescope_config)
  telescope.setup {
    defaults = {

      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = "   ",
      scroll_strategy = nil,
      sorting_strategy = 'ascending',
      winblend = 0,

      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
      },
      color_devicons = true,
      file_ignore_patterns = {"Applications",
                              "Calibre% Library",
                              "Music",
                              "Pictures",
                              "Tresors",
                              "Videos",
                              "VirtualBox_VMs",
                              "vmware",
                              ".local",
                              "__pycache__",
                              ".*%.pdf"},
  },
}
end

return M