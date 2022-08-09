vim.g.mapleader = " "

local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'gruvbox-community/gruvbox' -- Nice colorscheme
Plug 'neovim/nvim-lspconfig' -- Easy config of LSP servers
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'}) -- Dependency for telescope
Plug 'nvim-lua/plenary.nvim' -- Dependency for telescope
Plug 'kyazdani42/nvim-web-devicons' -- pretty icons - this is a dependency for other plugins
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' }) -- Fuzzy search on files, git, buffers, etc.
Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries', tag = 'v1.26' }) -- golang language support
Plug 'folke/trouble.nvim' -- Gives a clear list of LSP diagnostics
Plug 'j-hui/fidget.nvim' -- Live progress reports from LSP servers
Plug 'kosayoda/nvim-lightbulb' -- Show a lightbuld in the sign column when non-bad code actions are availabie
Plug 'antoinemadec/FixCursorHold.nvim' -- Dependency of nvim-lightbulb
-- Plug 'm-demare/hlargs.nvim'  -- Uses treesitter to highlight function arguments. Not sure if I really want this TBH.
-- Plug 'simrat39/rust-tools.nvim' -- Sets up nvim-lspconfig for rust and provides rust debugging/programming functions
-- Plug 'weilbith/nvim-code-action-menu' -- Adds code-action popups
vim.call('plug#end')
