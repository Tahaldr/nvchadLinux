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
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>tx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>tX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>ts",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>tl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>tL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>tQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
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
    keys = {
      { "<leader>la", ":Artisan<cr>", desc = "Laravel Artisan" },
      { "<leader>lc", ":Composer<cr>", desc = "Composer" },
      { "<leader>lr", ":LaravelRoute<cr>", desc = "Laravel Routes" },
      { "<leader>lm", ":LaravelMake<cr>", desc = "Laravel Make" },
    },
    config = function()
      require("laravel").setup()
    end,
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
    event = "VeryLazy",
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search"},
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "blade",
        "css",
        "csv",
        "dockerfile",
        "gitignore",
        "html",
        "http",
        "java",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "php",
        "powershell",
        "printf",
        "python",
        "scss",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
    },
  },
}
