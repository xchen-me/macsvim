return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  -- "iamcco/markdown-preview.nvim",
  -- cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  -- event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<Leader>mv", "<Plug>MarkdownPreview", { desc = "Markdown Preview" })
  end,
  -- if issues arise, try first :call mkdp#util#install()
}
