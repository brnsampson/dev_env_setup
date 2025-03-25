return {
    "jay-babu/mason-nvim-dap.nvim",
    requires = { "nvim-dap" },
    config = function()
        require("mason-nvim-dap").setup({
            ensure_installed = { "python", "delve", "lldb" },
            --automatic_setup = {
            --    adapters = {
            --        python = {},
            --        delve = {},
            --    },
            --    configuration = {
            --        python = {},
            --        delve = {},
            --    },
            --},
        })
    end,
}
