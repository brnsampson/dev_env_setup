local map = vim.api.nvim_set_keymap
local map_lua = vim.keymap.set

-- ------------------------------------
-- j-hui/fidget.nvim
-- ------------------------------------
--
require("fidget").setup()

-- ------------------------------------
-- kosayoda/nvim-lightbulb
-- ------------------------------------
--
-- autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    require("nvim-lightbulb").update_lightbulb()
  end,
})

-- ------------------------------------
-- weilbith/nvim-code-action-menu
-- ------------------------------------
--
vim.g.code_action_menu_window_border = 'single'
map('n', '<C-g>', ':CodeActionMenu<cr>', {desc = 'Open the code action pop up'})

-- ------------------------------------
-- folke/trouble.nvim
-- ------------------------------------
--
require("trouble").setup()

-- Mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- mason-lspconfig
require("mason-lspconfig").setup({
    -- See the whole list of available lsp's here: https://github.com/williamboman/mason-lspconfig.nvim
    ensure_installed = { "sumneko_lua", "rust_analyzer", "awk_ls", "bashls", "dotls", "dockerls", "gopls", "graphql", "prosemd_lsp", "pyright", "solargraph", "terraformls", "vimls" }
})

-- nvim-lint
require('lint').linters_by_ft = {
    -- TODO: Figure out what the other type names are
  markdown = {'vale'},
  python = {'flake8'},
  ruby = {'rubocop'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

-- formatter
-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,
    },
    python = {
      require("formatter.filetypes.python").autopep8,
    },
    ruby = {
      require("formatter.filetypes.ruby").rubocop,
    },
    go = {
      require("formatter.filetypes.go").gofumpt,
    },
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      -- require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

map('n', '<Leader>FO', [[:Format<CR>]], {desc = 'Format active buffer'})
map('n', '<Leader>FS', [[:FormatWrite<CR>]], {desc = 'Format then write active buffer'})
