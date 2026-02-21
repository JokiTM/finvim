return {
  {
    "lervag/vimtex",
    lazy = false,  -- VimTeX darf NICHT lazy-loaded sein
    init = function()
      -- VimTeX settings (übersetzt von Vimscript → Lua)

      -- Viewer (Zathura)
      vim.g.vimtex_view_method = "zathura"

      -- Alternativer generic viewer (falls du wirklich Okular willst)
      -- vim.g.vimtex_view_general_viewer = "okular"
      -- vim.g.vimtex_view_general_options =
      --   "--unique file:@pdf\\#src:@line@tex"

      -- Compiler (Standard ist latexmk)
      -- vim.g.vimtex_compiler_method = "latexrun"

      -- Localleader ändern
      vim.g.maplocalleader = " "

      -- Syntax & Filetype werden von Neovim automatisch gesetzt,
      -- daher NICHT mit :filetype oder :syntax arbeiten.
      -- Diese Zeilen:
      --   filetype plugin indent on
      --   syntax enable
      -- entfallen in Lua völlig.
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      wk.add({
        -- Group
        { "<leader>l", group = "latex" },

        -- Compile
        { "<leader>ll", desc = "Compile" },
        { "<leader>lL", desc = "Compile selected" },
        { "<leader>lk", desc = "Stop" },
        { "<leader>lK", desc = "Stop all" },

        -- Cleaning
        { "<leader>lc", desc = "Clean" },
        { "<leader>lC", desc = "Clean all" },

        -- View / TOC
        { "<leader>lv", desc = "View PDF" },
        { "<leader>lt", desc = "TOC" },
        { "<leader>lT", desc = "Toggle TOC" },

        -- Logs / Errors
        { "<leader>le", desc = "Errors" },
        { "<leader>lo", desc = "Compile output" },
        { "<leader>lq", desc = "Log" },

        -- State / Info
        { "<leader>lg", desc = "Status" },
        { "<leader>lG", desc = "Status (all)" },
        { "<leader>li", desc = "Info" },
        { "<leader>lI", desc = "Info (full)" },

        -- Reload / Main
        { "<leader>lr", desc = "Reload" },
        { "<leader>lR", desc = "Reload state" },
        { "<leader>ls", desc = "Toggle main file" },

        -- Misc
        { "<leader>lm", desc = "Imaps list" },
        { "<leader>la", desc = "Context menu" },
        { "<leader>lS", desc = "Compile SS" },
      })
    end,
  },
}
