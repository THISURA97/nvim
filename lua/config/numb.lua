local is_plugin_installed = require'helpers'.is_plugin_installed

if not is_plugin_installed('numb.nvim') then
  return
end

require('numb').setup{
   show_numbers = true, -- Enable 'number' for the window while peeking
   show_cursorline = true -- Enable 'cursorline' for the window while peeking
}