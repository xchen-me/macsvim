return {
  "tadmccorkle/markdown.nvim",
  event = "VeryLazy",
  opts = {
    on_attach = function(bufnr)
      local map = vim.keymap.set
      local opts = { buffer = bufnr }
      map({ "n" }, "<Leader>mh", "I## <Esc>", opts)
      -- map('n', '<M-c>', '<Cmd>MDTaskToggle<CR>', opts)
      -- map('x', '<M-c>', ':MDTaskToggle<CR>', opts)
    end,
  },
}
