local opt = vim.opt -- for conciseness

-- opt.nocompataible = true
opt.splitbelow = true
opt.splitright = true
opt.mouse = "a"
-- opt.t_Co = 256
opt.termguicolors = true

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.shiftround = true

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.autoread = true

opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
opt.conceallevel = 1

vim.cmd([[
set whichwrap+=b,h,l,<,>,[,]
set formatoptions-=cro       " Stop newline continution of comments
set noswapfile

" goto file folder after opening it
augroup cdpwd
    autocmd!
    autocmd BufWinEnter * cd %:p:h
    " autocmd BufReadPre * cd %:p:h
    " autocmd VimEnter * cd %:p:h
augroup END
]])
