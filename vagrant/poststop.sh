rm provision/policyfiles/*.lock.json
for policy in $(ls provision/policyfiles/*.rb); do
	base_name=$(basename $policy .rb)
	rm -rf provision/policyfiles/$base_name
done
rm -f provision/nodes/*
