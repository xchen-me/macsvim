return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-p>"] = actions.move_selection_previous, -- move to prev result
            ["<C-n>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("file_browser")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>tt", "<cmd>Telescope<cr>", { desc = "Run Telescope" })
    keymap.set("n", "<leader>fF", "<cmd>Telescope file_browser path=%:p:h<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser path=%:p:h<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set(
      "n",
      "<leader>fp",
      "<cmd>cd ~/.config/nvim<CR>:Telescope find_files<cr>",
      { desc = "Fuzzy find files in private nvim configuration" }
    )
    keymap.set(
      "n",
      "<leader>sN",
      "<cmd>cd ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian-notes<CR>:Telescope live_grep<cr>",
      { desc = "Fuzzy find string in my markdown notes" }
    )
    keymap.set(
      "n",
      "<leader>nF",
      "<cmd>cd ~/mNotes<CR>:Telescope live_grep<cr>",
      { desc = "Fuzzy find string in my org notes" }
    )
    keymap.set(
      "n",
      "<leader>sn",
      "<cmd>cd ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian-notes<CR>:Telescope find_files<cr>",
      { desc = "Fuzzy find files in my markdown notes" }
    )
    keymap.set(
      "n",
      "<leader>nf",
      "<cmd>cd ~/mNotes<CR>:Telescope find_files<cr>",
      { desc = "Fuzzy find files in my org notes" }
    )
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string" })
    keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
    keymap.set("n", "<leader>sg", "<cmd>Telescope git_files<cr>", { desc = "Find git files" })
    keymap.set("n", "<leader><leader>", "<cmd>Telescope git_files<cr>", { desc = "Find git files" })
    keymap.set("n", "<leader>sm", "<cmd>Telescope marks<cr>", { desc = "Find marks" })
    keymap.set("n", "<leader>st", "<cmd>Telescope treesitter<cr>", { desc = "Find treesitter files" })
    keymap.set("n", "<leader><", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
    keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
    keymap.set("n", "<leader>hk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
    keymap.set("n", "<leader>hbb", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
    keymap.set("n", "<leader>sr", "<cmd>Telescope registers<cr>", { desc = "Find registers" })
    keymap.set("n", "<leader>:", "<cmd>Telescope commands<cr>", { desc = "Find commands" })
    keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", { desc = "Find commands" })
    keymap.set("n", "<leader>cr", "<cmd>Telescope command_history<cr>", { desc = "Find command history" })
    keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help_tags" })
    keymap.set(
      "n",
      "<leader>.",
      "<cmd>cd %:p:h<CR>:pwd<CR>:Telescope find_files<cr>",
      { desc = "Find files at the current folder" }
    )
    keymap.set(
      "n",
      "<leader>sf",
      "<cmd>cd %:p:h<CR>:pwd<CR>:Telescope find_files<cr>",
      { desc = "Find files at the current folder" }
    )
    keymap.set(
      "n",
      "<leader>/",
      "<cmd>cd %:p:h<CR>:pwd<CR>:Telescope grep_string<cr>",
      { desc = "Find words at the current folder" }
    )
    keymap.set(
      "n",
      "<leader>sd",
      "<cmd>cd %:p:h<CR>:pwd<CR>:Telescope live_grep<cr>",
      { desc = "Find words at the current folder" }
    )
    keymap.set(
      "n",
      "<D-f>",
      "<cmd>cd %:p:h<CR>:pwd<CR>:Telescope current_buffer_fuzzy_find<cr>",
      { desc = "Find words at the current folder" }
    )

    vim.cmd([[command Tags Telescope help_tags
    command Files Telescope find_files
    command Buffers Telescope buffers
    command GFiles Telescope git_files
    command Marks Telescope marks
    command History Telescope oldfiles
    command Map Telescope keymaps
    command CommandHistory Telescope command_history
    ]])
  end,
}
