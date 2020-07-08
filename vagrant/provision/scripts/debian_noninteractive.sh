if grep -L DEBIAN_ENVIRONMENT /etc/environment; then
	echo 'DEBIAN_FRONTEND=noninteractive' >> /etc/environment
fi
sudo DEBIAN_FRONTEND=noninteractive LANGUAGE=en_US.UTF-8 LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 dpkg-reconfigure locales
