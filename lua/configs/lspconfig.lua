local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

nvlsp.defaults()

local servers = {
  cssls = {},
  css_variables = {},
  docker_compose_language_service = {},
  dockerls = {},
  eslint = {},
  html = {},
  twig = {},
  intelephense = {},
  jdtls = {},
  jsonls = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
  phpactor = {},
  pyright = {},
  stimulus_ls = {},
  tailwindcss = {},
  ts_ls = {},
  -- ts_ls = {
  --   on_attach = function(client, bufnr)
  --     -- Disable diagnostics for this LSP manually
  --     client.handlers["textDocument/publishDiagnostics"] = function() end
  --
  --     -- Call the shared on_attach to keep other features
  --     on_attach(client, bufnr)
  --   end,
  -- },
  -- vtsls = {},
  yamlls = {},
  emmet_ls = {
    init_options = {
      html = {
        options = {
          ["output.selfClosingStyle"] = "xhtml",
        },
      },
      jsx = {
        options = {
          ["output.selfClosingStyle"] = "xhtml",
        },
      },
    },
    filetypes = {
      "css",
      "html",
      "twig",
      "javascript",
      "javascriptreact",
      "less",
      "sass",
      "scss",
      "typescriptreact",
      -- "pug",
    },
  },
}

-- Define configurations using Neovim 0.11+ API
for server, config in pairs(servers) do
  vim.lsp.config(
    server,
    vim.tbl_extend("force", {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
    }, config)
  )
end

-- Enable all defined servers
vim.lsp.enable(vim.tbl_keys(servers))
