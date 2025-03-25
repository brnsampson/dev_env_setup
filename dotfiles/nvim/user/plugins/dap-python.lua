return {
  "mfussenegger/nvim-dap-python",
  requires = { "nvim-dap" },
  config = function()
    require('dap-python').setup('~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3')
  end,
}
