local g = vim.g

vim.o.termguicolors = true

g.nvim_tree_side = "left"
g.nvim_tree_width = 25
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_auto_open = 0
g.nvim_tree_quit_on_open = 0
g.nvim_tree_git_hl = 1
g.nvim_tree_root_folder_modifier = ":t"
g.nvim_tree_tab_open = 0
g.nvim_tree_allow_resize = 1
g.nvim_tree_disable_netrw = 0 --"1 by default, disables netrw
-- vim.g.nvim_tree_hijack_netrw = 0 --"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
g.nvim_tree_hide_dotfiles = 1 --0 by default, this option hides files and folders starting with a dot `.`
g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
g.nvim_tree_follow = 1 --"0 by default, this option allows the cursor to be updated when entering a buffer
g.nvim_tree_auto_close = 0 --0 by default, closes the tree when it's the last window
g.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.
local tree_cb = require'nvim-tree.config'.nvim_tree_callback


g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "◌"
    },
    folder = {
        default = "",
        open = "",
        symlink = "",
        empty = "",
        empty_open = "",
        symlink_open = ""
    }

}