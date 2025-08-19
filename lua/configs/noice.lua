return {
  config = {
    commands = {
      history = {
        view = "popup",
      },
    },
    presets = {
      command_palette = true,
    },
    lsp = {
      hover = {
        enabled = false,
      },
      signature = {
        enabled = false,
      },
    },
  },
  event = "VeryLazy",
  opts = {},
}
