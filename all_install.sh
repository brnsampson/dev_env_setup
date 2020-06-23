chmod +x vbox_install.sh
chmod +x vagrant_install.sh
chmod +x packer_install.sh

if ./vbox_install.sh; then
	echo "Part 1 of 3 complete."
else
	echo "Failed on part 1 of 3: install virtualbox"
	exit 1
fi
 
if ./vagrant_install.sh; then
	echo "Part 2 of 3 complete."
else
	echo "Failed on part 2 of 3: install vagrant"
	exit 2 
fi

if ./packer_install.sh; then
	echo "Part 3 of 3 complete."
else
	echo "Failed on part 3 of 3: install packer"
	exit 3
fi
