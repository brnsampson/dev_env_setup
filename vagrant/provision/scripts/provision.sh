echo "Testeroo"

#sudo dpkg -i /tmp/provision/containerd.io.deb
#sudo dpkg -i /tmp/provision/docker-ce-cli.deb
#sudo dpkg -i /tmp/provision/docker-ce.deb
#
#sudo docker load -i /tmp/provision/netdata.tar
#sudo docker load -i /tmp/provision/telegraf.tar
#sudo docker load -i /tmp/provision/prometheus.tar
#sudo docker load -i /tmp/provision/alertmanager.tar
#sudo docker load -i /tmp/provision/alerta-web.tar
#sudo docker load -i /tmp/provision/postgres.tar
#
#sudo cp /tmp/systemd/netdata.service /etc/systemd/system/
#sudo systemctl daemon-reload
#sudo systemctl start netdata

cat <<'EOF' > /tmp/chef/client.rb
node_name "roles-centos-7"
checksum_path "/tmp/chef/checksums"
file_cache_path "/tmp/chef/cache"
file_backup_path "/tmp/chef/backup"
cookbook_path ["/tmp/chef/cookbooks", "/tmp/chef/site-cookbooks"]
data_bag_path "/tmp/data_bags"
environment_path "/tmp/chef/environments"
node_path "/tmp/chef/nodes"
role_path "/tmp/chef/roles"
client_path "/tmp/chef/clients"
user_path "/tmp/chef/users"
validation_key "/tmp/chef/validation.pem"
client_key "/tmp/chef/client.pem"
chef_server_url "http://127.0.0.1:8889"
encrypted_data_bag_secret "/tmp/chef/encrypted_data_bag_secret"
treat_deprecation_warnings_as_errors false
chef_license "accept"
named_run_list {}
EOF

sudo chef-client --once -j /tmp/chef/dna.json -c /tmp/chef/client.rb -z
