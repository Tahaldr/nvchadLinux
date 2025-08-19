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
    opts = require("configs.trouble").opts,
    cmd = require("configs.trouble").cmd,
    keys = require("configs.trouble").keys,
  },

  -- plug-in which provides support for expanding abbreviations similar to emmet.
  -- action key : <C-y> + ,
  {
    "mattn/emmet-vim",
    ft = require("configs.emmet").ft,
  },

  -- Vim syntax highlighting for Blade templates (Laravel 4+).
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },

  -- A comprehensive Laravel development plugin for Neovim
  {
    "adibhanna/laravel.nvim",
    keys = require("configs.laravel").keys,
    config = require("configs.laravel").config,

    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
  },

  -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
  {
    "folke/noice.nvim",
    config = require "configs.noice",
    event = "VeryLazy",
    opts = {},

    dependencies = {
      "MunifTanjim/nui.nvim",
      -- "rcarriga/nvim-notify",
    },
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
    opts = {},

    dependencies = { "MunifTanjim/nui.nvim" },
  },
  -- :Hardtime enable enable Hardtime
  -- :Hardtime disable disable Hardtime
  -- :Hardtime toggle toggle Hardtime

  -- flash.nvim lets you navigate your code with search labels, enhanced character motions,
  -- and Treesitter integration.
  {
    "folke/flash.nvim",
    event = require("configs.flash").event,
    opts = require("configs.flash").opts,
    keys = require("configs.flash").keys,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("configs.ts").opts,
  },
}
