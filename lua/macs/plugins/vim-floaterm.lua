return {
  "voldikss/vim-floaterm",
  event = "VimEnter",
  config = function()
    vim.keymap.set("n", "<leader>ot", "<cmd>FloatermToggle<CR>", { desc = "Toggle floating terminal" })
  end,
}
