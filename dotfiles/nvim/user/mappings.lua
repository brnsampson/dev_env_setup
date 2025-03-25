-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
	-- first key is the mode
	n = {
		-- second key is the lefthand side of the map
		-- mappings seen under group name "Buffer"
		["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
		["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
		["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
		["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

		-- get rid of annoying binding for useless dashboard
		--   ["<leader>d"] = false,
		--   ["<leader><leader>d"] = {
		--     function()
		--       require('alpha').start()
		--     end,
		--     desc = "Alpha Dashboard"
		--   },

		-- dap keybindings
		--   ["<leader>di"] = { ":lua require('dap').repl.open()<cr>", desc = "Open REPL" },
		["<leader>dg"] = { ":lua require('dapui').toggle()<cr>", desc = "Open/close dapui" },
		--   ["<leader>dR"] = { ":lua require('dap').run_last()<cr>", desc = "Run last debugged program" },
		--   ["<leader>dx"] = { ":lua require('dap').terminate()<cr>", desc = "Terminate program being debugged" },
		--   ["<leader>du"] = { ":lua require('dap').up()<cr>", desc = "Up one frame" },
		--   ["<leader>dd"] = { ":lua require('dap').down()<cr>", desc = "Down one frame" },
		--   ["<leader>db"] = { ":lua require('dap').toggle_breakpoint()<cr>", desc = "Toggle breakpoint" },
		--   ["<leader>d5"] = { ":lua require('dap').continue()<cr>", desc = "Continue debugging" },
		--   ["<leader>d7"] = { ":lua require('dap').step_over()<cr>", desc = "Debug step over" },
		--   ["<leader>d8"] = { ":lua require('dap').step_into()<cr>", desc = "Debug step into" },
		--   ["<leader>d9"] = { ":lua require('dap').step_out()<cr>", desc = "Debug step out" },
		--   ["<leader>dl"] = { ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Logpoint message: '))<cr>",
		--     desc = "Set logpoint" },
		--   ["<leader>dc"] = { ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>",
		--     desc = "Set conditional breakpoint" },

		-- Open file in browser
		--["<space>r"] = { ":exe ':silent !firefox %'<cr>", desc = "Run Browser" },
		-- View treesitter highlight groups
		--["<space>k"] = { ":TSHighlightCapturesUnderCursor<cr>", desc = "View Highlight Group" },
		-- Easy splits
		["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
		["||"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
		-- Search highlight groups
		["<space>sg"] = { "<cmd>Telescope highlights<cr>", desc = "Highlight groups" },
		-- quick save
		-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
	},
	t = {
		-- setting a mapping to false will disable it
		-- ["<esc>"] = false,
	},
}
