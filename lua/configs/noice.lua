return {
  commands = {
    history = {
      view = "popup",
    },
  },
  presets = {
    command_palette = true,
    lsp_doc_border = true,
  },
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
    },
    hover = {
      enabled = true,
      silent = true,
    },
    signature = {
      enabled = true,
    },
  },
}
