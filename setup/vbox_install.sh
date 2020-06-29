sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O oracle_vbox_2016.asc
if apt-key add oracle_vbox_2016.asc; then
	echo "virtualbox key added to apt"
else
	echo "failed to add virtualbox key to apt"
	exit 1
fi

apt-get update
if apt-get install -y virtualbox-6.1; then
	echo "Successfully installed virtualbox"
else
	echo "Failed to install virtualbox"
	exit 2
fi
rm oracle_vbox_2016.asc

echo ""
