-- set leader key to spaceC-g
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------------
-- General Keymaps -------------------

-- use jk to exit insert and command modes
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("c", "jk", "<C-c>", { desc = "Exit command mode with jk" })
vim.keymap.set("i", "<C-g>", "<ESC>", { desc = "Exit command mode with C-g" })
vim.keymap.set("c", "<C-g>", "<C-c>", { desc = "Exit command mode with C-g" })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "C", '"_C')

-- Keep cursor at the bottom of the visual selection after you yank it.
vim.keymap.set("v", "y", "ygv<Esc>")
-- yanking in GUI
vim.keymap.set("v", "<D-c>", "ygv<Esc>")
vim.keymap.set("n", "<D-c>", "ygv<Esc>")
vim.keymap.set("v", "<D-x>", "ygvx<Esc>")

-- directory management {{{
-- change to the directory of the currently open file (this sets the current directory for all windows in Vim)
-- https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<D-t>", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore, { desc = "Open NetRW" })

-- alternative ways to save
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<cr>i")
vim.keymap.set("n", "<Leader>fs", ":w<cr>")
vim.keymap.set("n", "<D-s>", ":w<cr>")
vim.keymap.set("i", "<D-s>", ":w<cr>")

-- alternative way to quit and close
vim.keymap.set("n", "<leader>qq", "ZZ")
vim.keymap.set("n", "<C-k>", "d$")
vim.keymap.set("n", "D", "d$")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
vim.keymap.set("n", "<leader>bk", ":bd<CR>")
vim.keymap.set("n", "<C-w>", ":bd<CR>")
vim.keymap.set("i", "<C-w>", ":bd<CR>")
vim.keymap.set("i", "<D-w>", ":bd<CR>")
vim.keymap.set("n", "<D-w>", ":bd<CR>")

-- alternative way to undo
vim.keymap.set("n", "<D-z>", "u")
vim.keymap.set("i", "<D-z>", "<C-o>u")

-- window management
vim.keymap.set("n", "<Leader>wd", ":close<cr>")
vim.keymap.set("n", "<Leader>ww", "<C-w>w")
vim.keymap.set("n", "<Leader>wh", "<C-w>h")
vim.keymap.set("n", "<Leader>wj", "<C-w>j")
vim.keymap.set("n", "<Leader>wk", "<C-w>k")
vim.keymap.set("n", "<Leader>wl", "<C-w>l")
vim.keymap.set("n", "<Leader>wr", "<C-w>r")
vim.keymap.set("n", "<Leader>wo", "<C-w>o")
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<Leader>oo", ":silent !open .<cr>", { desc = "Open current folder in Finder" })
vim.keymap.set("n", "<Leader>oe", ":silent !open %<cr>", { desc = "Open current file in default app" })
vim.keymap.set("n", "<Leader>ol", ":silent !open -a LaunchBar %<cr>", { desc = "Send current file to LaunchBar" })
vim.keymap.set("n", "<Leader>oL", ":silent !open -a LaunchBar .<cr>", { desc = "Send current folder to LaunchBar" })

vim.keymap.set("n", "<C-TAB>", ":bnext<cr>")
vim.keymap.set("n", "<leader>bn", ":bnext<cr>")
vim.keymap.set("n", "<C-S-TAB>", ":bprevious<cr>")
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>")

-- better tabbing to indent in visual mode
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>bN", ":enew<cr>")
vim.keymap.set("n", "<Leader>`", "<C-^>")
vim.keymap.set("n", "g=", "<C-a>")
vim.keymap.set("n", "g-", "<C-x>")

vim.keymap.set("i", "<C-a>", "<Home>")
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-d>", "<Delete>")
vim.keymap.set("i", "<C-k>", "<Esc>ld$a")
-- Meta b
vim.keymap.set("i", "∫", "<S-Left>")
-- Meta f
vim.keymap.set("i", "ƒ", "<S-Right>")
-- Meta d
vim.keymap.set("i", "∂", "<S-Right><C-w>")
-- Meta Backspace deletes backward a word
vim.keymap.set("i", "<M-BS>", "<C-w>")

vim.keymap.set("i", "<M-left>", "<S-Left>")
vim.keymap.set("i", "<M-right>", "<S-Right>")
vim.keymap.set("i", "<C-n>", "<Down>")
vim.keymap.set("i", "<C-p>", "<Up>")
vim.keymap.set("i", "˙", "<S-Left>") -- alt h
vim.keymap.set("i", "¬", "<S-Right>") -- alt l

vim.keymap.set("n", "<C-b>", "<C-u>")

vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<C-e>", "<End>")
vim.keymap.set("c", "<C-d>", "<Delete>")
vim.keymap.set("c", "<C-k>", "<Esc>ld$a")

-- Meta b
vim.keymap.set("c", "∫", "<S-Left>")
-- Meta f
vim.keymap.set("c", "ƒ", "<S-Right>")
-- Meta d
vim.keymap.set("c", "∂", "<S-Right><C-w>")

-- shift is for selection
vim.keymap.set("i", "<D-left>", "<Home>")
vim.keymap.set("i", "<D-right>", "<End>")
-- vim.keymap.set("i", "<D-h>", "<C-o>^")
vim.keymap.set("i", "<D-l>", "<End>")
vim.keymap.set("i", "<D-e>", "<End>")
vim.keymap.set("i", "<D-a>", "<Home>")
vim.keymap.set("i", "<D-S-left>", "<C-o>v^")
vim.keymap.set("i", "<D-S-right>", "<C-o>v$")
-- vim.keymap.set("i", "<D-S-h>", "<C-o>v^")
-- vim.keymap.set("i", "<D-S-l>", "<C-o>v$")

vim.keymap.set("i", "<S-up>", "<C-o>h<C-o>vgk<C-o>l")
vim.keymap.set("i", "<S-down>", "<C-o>vgj")
vim.keymap.set("i", "<S-M-up>", "<C-o>h<C-o>vgk<C-o>l")
vim.keymap.set("i", "<S-M-down>", "<C-o>vgj")
vim.keymap.set("i", "<S-D-up>", "<C-o>h<C-o>vgk<C-o>l")
vim.keymap.set("i", "<S-D-down>", "<C-o>vgj")
vim.keymap.set("i", "<S-left>", "<C-o>h<C-o>v")
vim.keymap.set("i", "<S-right>", "<C-o>vl")
vim.cmd([[
  " these are mapped in visual mode
  vmap <S-left> h
  vmap <S-right> l
  vmap <S-Down> j
  vmap <S-Up> k
  vmap <S-M-Down> j
  vmap <S-M-Up> k
  vmap <S-D-down> j
  vmap <S-D-up> k
  vmap <S-D-j> j
  vmap <M-l> e
  vmap <M-h> b
  vmap <S-D-k> k
  vmap <S-M-right> e
  vmap <S-M-left> b
  vmap <S-D-right> $
  vmap <S-D-left> ^
  vmap <S-D-l> $
  vmap <S-D-h> ^
  vmap <S-l> $
  vmap <S-h> ^
  " option shift h/l
  vmap Ó b
  vmap Ò w
  vmap <backspace> x

  " Mapping <Shift>-Arrows to selecting characters/lines
  " activate visual mode in normal mode
  nmap <S-Up> vgk
  nmap <S-Down> vgj
  nmap <S-M-Up> vgk
  nmap <S-M-Down> vgj
  nmap <S-M-right> vl
  nmap <S-M-left> vh

  noremap <D-left> ^
  noremap <D-right> $
  " noremap <C-a> ^
  " noremap <C-e> $
  noremap <D-S-left> v^
  noremap <D-S-right> v$
  noremap <D-S-h> v^
  noremap <D-S-l> v$
  ]])

-- Meta Backspace deletes backward a word
vim.keymap.set("c", "<M-BS>", "<C-w>")
-- commandline paste
-- https://medium.com/usevim/vim-101-pasting-into-command-line-mode-db5946a1e8a7
vim.cmd([[cnoremap <C-y> <C-r>"]])

-- GNU paste
vim.cmd([[cnoremap <D-v> <C-r>"]])
vim.keymap.set("n", "<D-v>", "p")
vim.cmd([[inoremap <D-v> <C-r>"]])
vim.cmd([[vnoremap <D-v> <C-r>"]])

vim.cmd([[
" press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file
" note it must be Leader instead of leader for correct binding of \rc
" nnoremap <Leader>r :%s///gc<Left><Left>
nnoremap <Leader>r :%s///gc<Left><Left><Left>
" mac comand+r to replace and confirm
nnoremap <D-r> :%s///gc<left><left><left>
" same as above but acting strictly on visual selection
xnoremap <Leader>r :s///gc<Left><Left><Left>
" mac comand+r to replace and confirm
xnoremap <D-r> :s///gc<Left><Left><Left>
" type a replacement term and press . to repeat the replacement again. useful
" for replacing a few instances of the term.
nnoremap <silent> c* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> c* "sy:let @/=@s<CR>cgn
]])

-- markdown
vim.keymap.set("n", "<leader>mi", "I- <Esc>")
vim.keymap.set("v", "<leader>mi", "I- <Esc>")
vim.keymap.set("n", "<leader>mh", "I## <Esc>")
vim.keymap.set("n", "<leader>1", "I# <Esc>")
vim.keymap.set("n", "<leader>2", "I## <Esc>")
vim.keymap.set("n", "<leader>3", "I### <Esc>")
