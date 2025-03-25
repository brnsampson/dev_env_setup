return {
	--{ "mfussenegger/nvim-dap" },
	{ "gruvbox-community/gruvbox" }, -- Nice colorscheme
	{ "folke/trouble.nvim" }, -- Gives a clear list of LSP diagnostics
	{ "j-hui/fidget.nvim" }, -- Live progress reports from LSP servers
	{ "kosayoda/nvim-lightbulb" }, -- Show a lightbuld in the sign column when non-bad code actions are availabie
	{ "antoinemadec/FixCursorHold.nvim" }, -- Dependency of nvim-lightbulb
	{ "lvimuser/lsp-inlayhints.nvim", config = true },
	{
		"Maan2003/lsp_lines.nvim",
		event = "User AstroFile",
		config = function()
			require("lsp_lines").setup()
		end,
	},
}
