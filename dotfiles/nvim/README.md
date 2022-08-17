===Why NeoVim Instead of Vim?===

Long story short, neovim appears to have more rapid development and listen to the community more these days.

The vim project seems to be doubling down on vimscript, while neovim has fixed all the issues that gave me pause in the past. Being able to use lua instead of vimscript is a big advantage.

#Prerequisites

First off, if you have any software updates or need any basic tools like homebrew, deal with that first.

You will need to install the following prerequisites:

* install go, rust, and whatever other programming languages you plan to use
* One or more nice fonts: https://www.nerdfonts.com/font-downloads
* ripgrep: https://github.com/BurntSushi/ripgrep
* fd: https://github.com/sharkdp/fd
* neovim itself: https://github.com/neovim/neovim/wiki/Installing-Neovim
* vim-plug: https://github.com/junegunn/vim-plug
* brew install rust-analyser
* go install github.com/go-delve/delve/cmd/dlv@latesta
* xcode-select --install
* sudo /usr/sbin/DevToolsSecurity -enable
* sudo dscl . append /Groups/_developer GroupMembership $(whoami)
* brew install npm

#Config Setup

Run the following:
* chmod +x nvim_configure.sh
* ./nvim_configure.sh
* nvim -c PlugInstall
* nvim -c "MasonInstall vale flake8 rubocop golangcl-lint tflint"
* nvim -c "MasonInstall delve"
* nvim -c "MasonInstall autopep8 gofumpt stylua"

# Regular Maintenance

Things that should be checked/done regularly:
* Update init.vim if there is a new stable release of vim-go: https://github.com/fatih/vim-go/releases/latest
* Same with telescope: https://github.com/nvim-telescope/telescope.nvim/tags

# TODO

Look into https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
