vim.g.dashboard_custom_header = {

 ' ████████╗██╗  ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
 ' ╚══██╔══╝██║  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
 '    ██║   ███████║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
 '    ██║   ██╔══██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
 '    ██║   ██║  ██║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
 '    ╚═╝   ╚═╝  ╚═╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
 '                                                          ',
 '          -- created by thisura hettiarachchi --          ',

}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    e = {description = {'  Settings           '}, command = ':e C:/Users/tdini/AppData/Local/nvim/lua/settings.lua'},
   -- f = {description = {'  Bookmarks              '}, command = 'Telescope marks'}
    f = {description = {'  Change Colorscheme '}, command = 'DashboardChangeColorscheme'}
}

