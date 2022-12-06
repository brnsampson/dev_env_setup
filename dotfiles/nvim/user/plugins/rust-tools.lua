local M = {}
function M.config()
    local rt = require("rust-tools")
    local path = vim.fn.glob(vim.fn.stdpath("data") ..
        "/mason/packages/codelldb/extension/") or ""
    local codelldb_path = path .. "adapter/codelldb"
    local liblldb_path = path .. "lldb/lib/liblldb.dylib"
    rt.setup({
        server = astronvim.lsp.server_settings "rust_analyzer", -- get the server-settings from the AstroNvim tables to allow use with lsp.server-settings and lsp.on_attach user configuration
        dap = {
            adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path
                , liblldb_path),
        },
    })
end

return M
