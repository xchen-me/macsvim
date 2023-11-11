return {
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
  priority = 500, -- make sure to load this early, after the colorscheme
  config = function()
    vim.cmd([[let g:tmux_navigator_no_mappings = 1]])
    vim.keymap.set("n", "<C-a><C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>")
    vim.keymap.set("n", "<C-a><C-l>", "<cmd><C-U>TmuxNavigateRight<cr>")
    vim.keymap.set("n", "<C-a><C-j>", "<cmd><C-U>TmuxNavigateDown<cr>")
    vim.keymap.set("n", "<C-a><C-k>", "<cmd><C-U>TmuxNavigateUp<cr>")
    vim.keymap.set("n", "<C-a>p", "<cmd><C-U>TmuxNavigatePrevious<cr>")
  end,
}
