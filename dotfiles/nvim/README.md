===Why NeoVim Instead of Vim?===

Long story short, neovim appears to have more rapid development and listen to the community more these days.

The vim project seems to be doubling down on vimscript, while neovim has fixed all the issues that gave me pause in the past. Being able to use lua instead of vimscript is a big advantage.

#Prerequisites

First off, if you have any software updates or need any basic tools like homebrew, deal with that first.

You will need to install the following prerequisites:

* One or more nice fonts: https://www.nerdfonts.com/font-downloads
* ripgrep: https://github.com/BurntSushi/ripgrep
* fd: https://github.com/sharkdp/fd
* neovim itself: https://github.com/neovim/neovim/wiki/Installing-Neovim
* vim-plug: https://github.com/junegunn/vim-plug

#Config Setup

Run the following:
* chmod +x nvim_configure.sh
* ./nvim_configure.sh
* nvim -c PlugInstall

# Regular Maintenance

Things that should be checked/done regularly:
* Update init.vim if there is a new stable release of vim-go: https://github.com/fatih/vim-go/releases/latest
* Same with telescope: https://github.com/nvim-telescope/telescope.nvim/tags

# TODO

Look into https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
