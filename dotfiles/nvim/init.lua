vim.g.mapleader = " "

local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })
Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries', tag = 'v1.26' })
vim.call('plug#end')
