" This file was liberally borrowed from:
" https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/plugin/set ons.lua

colorscheme industry

set exrc
set guicursor=
set showmode
set showcmd
set cmdheight=2 " Height of the command bar
set colorcolumn=120 " Code beyone 120 lines generally means something is wrong
set signcolumn=yes " Keep vim from jumping around when signs pop up
set incsearch " Makes search act like search in modern browsers
set showmatch " show matching brackets when text indicator is over them
set norelativenumber " Show line numbers
set number " But show the actual number for the line we're on
set splitright " Prefer windows splitting to the right
set splitbelow " Prefer windows splitting to the bottom
set nohlsearch " Turn this on when needed, but it is otherwise pretty annoying
set scrolloff=6 " Make it so there are always some lines below my cursor

set ignorecase " Ignore case when searching...
set smartcase " ... unless there is a capital letter in the query
set hidden " I like having buffers stay around
set noequalalways " I don't like my windows changing all the time
set updatetime=1000 " Make updates happen faster
set undodir=~/.vim/undodir
set undofile

" Tabs
set autoindent
set cindent
set wrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set breakindent
set showbreak=↳
set linebreak

set foldmethod=marker
set foldlevel=0
set modelines=1

set belloff=all " Just turn the dang bell off

set clipboard=unnamedplus

set swapfile " NOT living on the edge
set nobackup
set writebackup

set mouse=n

" set joinspaces
set nojoinspaces " Two spaces and grade school, we're done
