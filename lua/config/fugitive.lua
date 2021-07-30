local map = vim.api.nvim_set_keymap

  -- Git status
map('n', '<Leader>gs', '<cmd>Gstatus<CR>',{noremap=true,silent=true})