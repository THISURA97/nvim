-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- init.lua

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------

local cmd = vim.cmd                  -- execute Vim commands
local exec = vim.api.nvim_exec       -- execute Vimscript

local fn = vim.fn       -- call Vim functions
local g = vim.g         -- global variables
local o = vim.o         -- global options
local b = vim.bo        -- buffer-scoped options
local w = vim.w         -- windows-scoped options
local wo = vim.wo       --Get or set window-scoped
-----------------------------------------------------------
-- General
-----------------------------------------------------------

g.mapleader         = ' '             -- Map leader to space
o.mouse             = 'a'             -- enable mouse support

-- vim clipboard copies to system clipboard
-- unnamed     = use the " register (cmd-s paste in our term)
-- unnamedplus = use the + register (cmd-v paste in our term)
o.clipboard         = 'unnamedplus'   -- copy/paste to system clipboard

b.swapfile          = false           -- don't use swapfile
o.exrc              = false           -- ignore '~/.exrc'

o.secure            = true

o.modelines         = 1         -- read a modeline at EOF
o.errorbells        = false     -- disable error bells (no beep/flash)
o.termguicolors     = true      -- enable 24bit colors
o.updatetime        = 250       -- decrease update time
o.autoread          = true      -- auto read file if changed outside of vim

o.switchbuf         = 'useopen'
o.encoding          = 'utf-8'
o.fileencoding      = 'utf-8'
o.backspace         = 'indent,eol,start'

-- Neovim UI
o.syntax           = 'enable'   -- enable syntax highlighting
o.relativenumber   = false
o.showmatch        = true       -- highlight matching parenthesis
w.foldmethod       = 'indent'   -- enable folding (default 'foldmarker')
w.colorcolumn      = '80'       -- line lenght marker at 80 columns
o.splitright       = true       -- vertical split to the right
o.splitbelow       = true       -- horizontal split to the bottom
o.ignorecase       = true       -- ignore case letters when search
o.smartcase        = true       -- ignore lowercase for the whole pattern
o.showmode          = true      -- show current mode (insert, etc) under the cmdline
o.showcmd           = true      -- show current command under the cmd line
o.cmdheight         = 2         -- cmdline height
o.laststatus        = 2         -- 2 = always show status line (filename, etc)
o.scrolloff         = 3         -- min number of lines to keep between cursor and screen edge
o.sidescrolloff     = 5         -- min number of cols to keep between cursor and screen edge
o.textwidth         = 78        -- max inserted text width for paste operations
o.linespace         = 0         -- font spacing
o.ruler             = true      -- show line,col at the cursor pos
o.number            = true      -- show absolute line no. at the cursor pos
o.cursorline        = true      -- Show a line where the current cursor is
wo.signcolumn       = 'yes'     -- Show sign column as first column
g.colorcolumn       = 81        -- mark column 81
o.colorcolumn       = string.format(g.colorcolumn)
o.wrap              = true      -- wrap long lines
o.breakindent       = true      -- start wrapped lines indented
o.linebreak         = true      -- do not break words on line wrap


-- show menu even for one item do not auto select/insert

o.wildignorecase    = true
o.wildmenu          = true
o.wildmode          = 'longest:full,full'
o.wildoptions       = 'pum'     -- Show completion items using the pop-up-menu (pum)
o.pumblend          = 30        -- Give the pum some transparency


-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
o.hidden = true         -- enable background buffers
o.history = 100         -- remember n lines in history
o.lazyredraw = true     -- faster scrolling - Don’t update screen during macro and script execution.
b.synmaxcol = 240       -- max column for syntax highlight


-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
o.termguicolors = true           -- enable 24-bit RGB colorss
cmd([[colorscheme spaceduck]])    -- set colorscheme

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------

o.shiftwidth        = 4         -- Indent/outdent by two columns
o.shiftround        = true      -- Always indent/outdent to nearest tabstop
o.smartindent       = true      -- autoindent new lines
o.autoindent        = true      -- New lines inherit the indentation of previous lines.
o.tabstop           = 4         -- Tab indentation levels every two columns
o.softtabstop       = 4         -- Tab indentation when mixing tabs & spaces
o.expandtab         = true      -- Convert all tabs that are typed into spaces
o.smarttab          = true      -- Use shiftwidths at left margin, tabstops everywhere else

o.joinspaces        = true      -- insert spaces after '.?!' when joining lines
o.autoindent        = true      -- copy indent from current line on newline
o.smartindent       = true      -- add <tab> depending on syntax (C/C++)
o.startofline       = false     -- keep cursor column on navigation

g.indent = 4

-----------------------------------------------------------
-- Leaderf
-----------------------------------------------------------
g.Lf_WindowPosition = 'popup' --popup windows for LeaderF

-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- remove line lenght marker for selected filetypes
cmd([[
  autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0
]])

-- 2 spaces for selected filetypes
cmd([[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua setlocal shiftwidth=2 tabstop=2
]])


-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
o.completeopt = 'menuone,noselect,noinsert' -- completion options
o.shortmess = 'c'                           -- don't show completion messages


--Enable persistent undo so that undo history persists across vim sessions
cmd 'set undofile'
cmd 'set undodir=~/.vim/undo'

cmd 'set number'

cmd 'filetype plugin indent on'

-- hide line numbers in terminal windows
exec([[
   au BufEnter term://* setlocal nonumber
]], false)

g.markdown_fenced_languages = {
  'vim',
  'lua',
  'cpp',
  'sql',
  'python',
  'bash=sh',
  'console=sh',
  'javascript',
  'typescript',
  'js=javascript',
  'ts=typescript',
  'yaml',
  'json',
}















