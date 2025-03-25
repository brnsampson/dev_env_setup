return {
  rust_analyzer = { -- override table for require("lspconfig").rust_analyzer.setup({...})
    settings = {
      -- standalone file support
      -- setting it to false may improve startup time
      standalone = true,
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
    },
  },
}
