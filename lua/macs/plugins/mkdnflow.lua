return {
  "jakewvincent/mkdnflow.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  event = "VeryLazy",
  config = function()
    require("mkdnflow").setup()
  end,
}
