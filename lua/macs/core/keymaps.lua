-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore, { desc = "Open NetRW" })
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.set("n", "<Leader>fs", ":w<cr>")
vim.keymap.set("n", "<D-s>", ":w<cr>")
vim.keymap.set("n", "<leader>qq", "ZZ")
vim.keymap.set("n", "<C-k>", "d$")
vim.keymap.set("n", "<leader>bd", ":BufferClose<CR>")
-- window management
vim.keymap.set("n", "<Leader>wd", ":close<cr>")
vim.keymap.set("n", "<Leader>ww", "<C-w>w")
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<Leader>oo", ":!open .<cr>")
vim.keymap.set("n", "<C-TAB>", ":bnext<cr>")
vim.keymap.set("n", "<C-S-TAB>", ":bprevious<cr>")
vim.keymap.set("n", "<Leader>`", "<C-^>")
vim.keymap.set("n", "g=", "<C-a>")
vim.keymap.set("n", "g-", "<C-x>")

vim.keymap.set("i", "<D-s>", ":w<cr>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "<C-a>", "<Home>")
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-k>", "<Esc>ld$a")
vim.keymap.set("i", "<C-d>", "<Delete>")
vim.keymap.set("i", "<M-left>", "<S-Left>")
vim.keymap.set("i", "<M-right>", "<S-Right>")
vim.keymap.set("i", "<C-n>", "<Down>")
vim.keymap.set("i", "<C-p>", "<Up>")
