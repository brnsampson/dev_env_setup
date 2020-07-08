# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'motd'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list ['dynamic_motd']


# Specify a custom source for a single cookbook:
cookbook 'dynamic_motd', '~> 0.1.5', git: 'https://github.com/MelonSmasher/chef_dynamic_motd', tag: 'v0.1.5'

override['dynamic_motd']['message'] = 'Welcome, to the world of tomorrow!'
