return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- A pretty list for showing diagnostics, references, telescope results, quickfix and location lists
  -- to help you solve all the trouble your code is causing.
  {
    "folke/trouble.nvim",
    require "configs.trouble",
  },

  -- plug-in which provides support for expanding abbreviations similar to emmet.
  -- action key : <C-y> + ,
  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "javascript",
      "javascriptreact",
      "less",
      "sass",
      "scss",
      "typescriptreact",
    }, -- enable for these filetypes
  },

  -- Vim syntax highlighting for Blade templates (Laravel 4+).
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },

  -- A comprehensive Laravel development plugin for Neovim
  {
    "adibhanna/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    require "configs.laravel",
  },

  -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
    require "configs.noice",
  },

  -- For autoSave
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      -- add yours options here
    },
  },

  -- Break bad habits, master Vim motions
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    enabled = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
  -- :Hardtime enable enable Hardtime
  -- :Hardtime disable disable Hardtime
  -- :Hardtime toggle toggle Hardtime

  -- flash.nvim lets you navigate your code with search labels, enhanced character motions,
  -- and Treesitter integration.
  {
    "folke/flash.nvim",
    require "configs.flash",
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    require "configs.treesitter",
  },
}
