rm provision/policyfiles/*.lock.json
for policy in $(ls provision/policyfiles/*.rb); do
	chef install $policy
	new_dir=$(basename $policy .rb)
	chef export -f $policy provision/policyfiles/$new_dir
done
