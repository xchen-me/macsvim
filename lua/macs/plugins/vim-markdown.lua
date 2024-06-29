return {
  "preservim/vim-markdown",
  event = "VeryLazy",
  branch = "master",
  dependencies = {
    { "godlygeek/tabular", lazy = true },
  },
  require = { "godlygeek/tabular" },
  config = function()
    vim.cmd([[let g:vim_markdown_folding_disabled = 1]])
    -- local map = vim.keymap.set
    -- local opts = { buffer = bufnr }
    -- map({ "n" }, "<Leader>mh", "I## <Esc>", opts)
    -- map('n', '<M-c>', '<Cmd>MDTaskToggle<CR>', opts)
    -- map('x', '<M-c>', ':MDTaskToggle<CR>', opts)
  end,
}
