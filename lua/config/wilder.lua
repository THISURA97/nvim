local is_plugin_installed = require'helpers'.is_plugin_installed
local nvim_exec = vim.api.nvim_exec

if not is_plugin_installed('wilder.nvim') then
  return
end


-- https://github.com/gelguy/wilder.nvim#getting-started
nvim_exec(
[[
call wilder#enable_cmdline_enter()
set wildcharm=<Tab>
cmap <expr> <Tab> wilder#in_context() ? wilder#next() : "\<Tab>"
cmap <expr> <S-Tab> wilder#in_context() ? wilder#previous() : "\<S-Tab>"

" only / and ? are enabled by default
call wilder#set_option('modes', ['/', '?', ':'])

]], false)


  nvim_exec([[

  " wild menu
  call wilder#set_option('renderer',wilder#wildmenu_renderer({ 'highlights': {},'highlighter': [ wilder#basic_highlighter(), wilder#lua_fzy_highlighter(),] ,'separator': ' - ','left': [' ', wilder#wildmenu_spinner(), ' '],'right': [' ', wilder#wildmenu_index()] }))

  " history pipeline
  "call wilder#set_option('pipeline', [ wilder#branch([ wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({ 'draw': [{_, x -> ' ' . x}] }) ], wilder#cmdline_pipeline(), wilder#search_pipeline()) ])

  ]], false)
