return {
  ["rcarriga/nvim-dap-ui"] = {
    requires = { "nvim-dap" },
    as = "dapui",
    config = function() require("user.plugins.dapui").config() end,
  },
  ["simrat39/rust-tools.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    as = "rust-tools",
    config = function() require("user.plugins.rust-tools").config() end,
  },
  ["mfussenegger/nvim-dap"] = {},
  ["gruvbox-community/gruvbox"] = {}, -- Nice colorscheme
  ["folke/trouble.nvim"] = {}, -- Gives a clear list of LSP diagnostics
  ["j-hui/fidget.nvim"] = {}, -- Live progress reports from LSP servers
  ["kosayoda/nvim-lightbulb"] = {}, -- Show a lightbuld in the sign column when non-bad code actions are availabie
  ["antoinemadec/FixCursorHold.nvim"] = {}, -- Dependency of nvim-lightbulb
  ["catppuccin/nvim"] = {
    as = "catppuccin",
    config = function() require("user.plugins.catppuccin").config() end,
  },
}
