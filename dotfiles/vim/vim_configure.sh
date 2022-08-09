config_dir="${HOME}"

# cd into the bundle and use relative paths
if [[ $BASH_SOURCE = */* ]]; then
    cd -- "${BASH_SOURCE%/*}/" || exit
fi

source_dir=$(pwd)

echo "Using $source_dir/ as source of config"
echo "Using $config_dir/ as vim config dir"
echo ""

echo "Linking $source_dir/.vimrc to $config_dir/.vimrc"
rm $config_dir/.vimrc 2> /dev/null
ln -s $source_dir/.vimrc $config_dir/.vimrc
