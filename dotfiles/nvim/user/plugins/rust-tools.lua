return {
	"simrat39/rust-tools.nvim",
	dependencies = { "mason-lspconfig.nvim" },
	ft = { "rust" },
	opts = function()
		--local CODELLDB_DIR = require("mason-registry").get_package("codelldb"):get_install_path()
		--	.. "/extension/adapter/codelldb"

		--local CODELLDB_LIB = CODELLDB_DIR .. "lldb/lib/liblldb.dylib"
		local package_path = require("mason-registry").get_package("codelldb"):get_install_path()
		local extension_path = package_path .. "/extension"
		local codelldb_path = extension_path .. "/adapter/codelldb"
		local liblldb_path = extension_path .. "/lldb/lib/liblldb"
		local this_os = vim.loop.os_uname().sysname

		-- The path in windows is different
		if this_os:find("Windows") then
			codelldb_path = package_path .. "adapter\\codelldb.exe"
			liblldb_path = package_path .. "lldb\\bin\\liblldb.dll"
		else
			-- The liblldb extension is .so for linux and .dylib for macOS
			liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
		end

		local opts = {
			server = require("astronvim.utils.lsp").config("rust_analyzer"),
			-- ... other configs
			dap = {
				adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		}
		return opts
	end,
	config = true,
}
