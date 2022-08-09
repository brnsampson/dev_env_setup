config_dir="${HOME}/.config/nvim"

# cd into the bundle and use relative paths
if [[ $BASH_SOURCE = */* ]]; then
    cd -- "${BASH_SOURCE%/*}/" || exit
fi

source_dir=$(pwd)

echo "Using $source_dir/ as source of config"
echo "Using $config_dir/ as neovim config dir"
echo ""

mkdir -p $config_dir/plugin
mkdir -p $config_dir/lua
mkdir -p $config_dir/after

for f in $(fd -e vim -e lua .); do
    f=$(echo $f | sed 's/\.\/\(.*\)/\1/g')
    echo "Linking $source_dir/$f to $config_dir/$f"
    rm $config_dir/$f 2> /dev/null
    ln -s $source_dir/$f $config_dir/$f
done
