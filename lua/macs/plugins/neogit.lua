return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    -- "sindrets/diffview.nvim", -- optional
    -- "ibhagwan/fzf-lua",              -- optional
  },
  config = function()
    require("neogit").setup()
    vim.keymap.set(
      "n",
      "<leader>gg",
      "<cmd>Neogit pwd=$:p:h<CR>",
      { desc = "Show the status of the current Git repository" }
    )
    -- vim.keymap.set("n", "<leader>gc", "<cmd>Neogit commit<CR>", { desc = "Create a Git commit" })
  end,
}
