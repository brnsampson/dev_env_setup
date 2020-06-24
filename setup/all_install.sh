chmod +x sys_tools_install.sh
chmod +x vbox_install.sh
chmod +x vagrant_install.sh
chmod +x packer_install.sh

if ./sys_tools_install.sh; then
	echo "Part 1 of 4 complete."
else
	echo "Failed on part 1 of 4: install general system tools"
	exit 1
fi

if ./vbox_install.sh; then
	echo "Part 2 of 4 complete."
else
	echo "Failed on part 2 of 4: install virtualbox"
	exit 1
fi
 
if ./vagrant_install.sh; then
	echo "Part 3 of 4 complete."
else
	echo "Failed on part 3 of 4: install vagrant"
	exit 1 
fi

if ./packer_install.sh; then
	echo "Part 4 of 4 complete."
else
	echo "Failed on part 4 of 4 : install packer"
	exit 1
fi
