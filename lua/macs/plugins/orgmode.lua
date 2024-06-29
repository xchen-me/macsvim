return {
  "nvim-orgmode/orgmode",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter", lazy = true },
  },
  event = "VeryLazy",
  config = function()
    -- Load treesitter grammar for org
    -- require('orgmode').setup_ts_grammar()

    -- Setup treesitter
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      },
      ensure_installed = { "org" },
    })

    -- Setup orgmode
    require("orgmode").setup({
      -- org_agenda_files = '~/orgfiles/**/*',
      -- org_agenda_files = { "~/mNotes/*.org", "~/mNotes/mobile-sync/*.org" },
      org_agenda_files = { "~/mNotes/mobile-sync/*.org" },
      org_default_notes_file = "~/mNotes/notes.org",
      mappings = {
        global = {
          org_agenda = { "<Leader>oA", "<Leader>oa" },
          org_capture = { "<Leader>X", "<Leader>nn", "<Leader>oc" },
        },
        org = {
          org_toggle_heading = { "<Leader>mh", "<Leader>o*" },
        },
      },
    })
  end,
}
