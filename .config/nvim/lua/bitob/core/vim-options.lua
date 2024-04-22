local opt = vim.opt

opt.number = true -- enable line number globally
opt.relativenumber = true -- use relative line numbers
opt.scrolloff = 16 -- always (if possible) leave 16 lines around the cursor

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (rustfmt default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.shiftround = true -- round indent to a multiple of 'shiftwidth'. When enabled, <Tab> and <BS> will always increase/decrease the indent by 'shiftwidth'

opt.wrap = true -- enable line wrapping

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true -- highlight the screen line of the cursor with CursorLine highlighting

opt.autowrite = true -- don't automatically save the current file before running certain commands, like ':make' and ':grep'
opt.autoread = true -- automatically re-read files if unmodified inside Vim when they have been changed outside of Vim

opt.termguicolors = true -- enable true color (24 bit) support
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.showcmd = true -- show (partial) command in the last line of the screen, providing feedback on the commands you type
opt.laststatus = 2 -- always display the status line. A value of 2 means always show the status line, even if only one window is displayed

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.swapfile = false -- turn off swapfile
