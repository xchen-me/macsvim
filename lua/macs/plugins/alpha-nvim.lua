return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[███╗   ███╗ █████╗  ██████╗███████╗    ███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
      [[████╗ ████║██╔══██╗██╔════╝██╔════╝    ████╗  ██║██║   ██║██║████╗ ████║]],
      [[██╔████╔██║███████║██║     ███████╗    ██╔██╗ ██║██║   ██║██║██╔████╔██║]],
      [[██║╚██╔╝██║██╔══██║██║     ╚════██║    ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
      [[██║ ╚═╝ ██║██║  ██║╚██████╗███████║    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
      [[╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC op", "  > Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC nf", "󰱼 > Find File in Org Notes", "<cmd>cd ~/mNotes<CR>:Telescope find_files<CR>"),
      dashboard.button("SPC nF", "󰱼 > Grep in Org Notes", "<cmd>cd ~/mNotes<CR>:Telescope live_grep<cr>"),
      dashboard.button(
        "SPC sn",
        "󰱼 > Find File in Markdown Notes",
        "<cmd>cd ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian-notes<CR>:Telescope find_files<cr>"
      ),
      dashboard.button(
        "SPC sN",
        "󰱼 > Grep in Markdown Notes",
        "<cmd>cd ~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian-notes<CR>:Telescope live_grep<cr>"
      ),
      dashboard.button("SPC fr", "󰱼 > Find Recent File", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button(
        "SPC fp",
        "󰱼 > Find nvim Configuration Files",
        -- "<leader>fp<cr>"
        "<cmd>cd ~/.config/nvim<CR>:Telescope find_files<cr>"
      ),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
