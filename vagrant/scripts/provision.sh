echo "Testeroo"

sudo dpkg -i /tmp/provision/containerd.io.deb
sudo dpkg -i /tmp/provision/docker-ce-cli.deb
sudo dpkg -i /tmp/provision/docker-ce.deb

sudo docker load -i /tmp/provision/netdata.tar
sudo docker load -i /tmp/provision/telegraf.tar
sudo docker load -i /tmp/provision/prometheus.tar
sudo docker load -i /tmp/provision/alertmanager.tar
sudo docker load -i /tmp/provision/alerta-web.tar
sudo docker load -i /tmp/provision/postgres.tar

sudo cp /tmp/systemd/netdata.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start netdata
