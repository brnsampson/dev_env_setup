#!/bin/bash

config_dir="${HOME}/.config/nvim"
share_dir="${HOME}/.local/share/nvim"
user_dir="${config_dir}/lua/user"

if test -d "$config_dir" && test -f "$config_dir/init.lua"
then
    echo "AstoNvim already installed... Skipping."

else
    if [ -z "$(ls -A "$config_dir")" ]; then
        echo "$config_dir is empty... Installing AstroNvim."
    else
        echo "$config_dir is not empty! Attempting to backup current contents of config and share directories then deleting them."
        cd $config_dir; tar -czf ~/nvim_config.bak.tar ./;  cd - && echo "nvim config backup created at ~/nvim_config.bak.tar"
        cd $share_dir; tar -czf ~/nvim_share.bak.tar ./;  cd - && echo "nvim share backup created at ~/nvim_share.bak.tar"
        rm -rf "${config_dir:?}/*"
        rm -rf "${share_dir:?}/*"
        echo "Deleted everything in the config and share directories"
    fi

    mkdir -p "$config_dir"
    mkdir -p "$share_dir"
    git clone https://github.com/AstroNvim/AstroNvim "$config_dir" && echo "AstroNvim installed at $config_dir"
fi
nvim --headless -c AstroUpdate -c PackerClean -c PackerSync -c AstroUpdatePackages -c qa

# cd into the bundle and use relative paths
if [[ $BASH_SOURCE = */* ]]; then
    cd -- "${BASH_SOURCE%/*}/" || exit
fi

source_dir="$(pwd)/user"

echo "Using $source_dir/ as source of extra config"
echo "Using $user_dir/ as custom neovim config dir"
echo ""

#mkdir -p "$user_dir"
if test -d "$user_dir"
then
    echo "Removing existing user config directory at $user_dir"
    rm -i -d "$user_dir"
fi
echo "Linking $source_dir to $user_dir"
ln -s "$source_dir" "$user_dir"

nvim --headless -c AstroUpdate -c PackerClean -c PackerSync -c AstroUpdatePackages -c qa
#mkdir -p $config_dir/plugins
#mkdir -p $config_dir/lua/brnsampson
#mkdir -p $config_dir/after

#for f in $(fd -e vim -e lua .); do
#    f=$(echo $f | sed 's/\.\/\(.*\)/\1/g')
#    echo "Linking $source_dir/$f to $user_dir/$f"
#    rm $user_dir/$f 2> /dev/null
#    ln -s $source_dir/$f $user_dir/$f
#done
