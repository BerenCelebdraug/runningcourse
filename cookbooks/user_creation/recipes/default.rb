#
# Cookbook:: user_creation
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#user 'new_user' do
#        shell '/bin/bash'
#        username 'chef_gen'
#        home '/home/chef_gen'
#end
#
#file 'user_info' do
#        
#end
#
#execute 'user_id' do
#      command '/usr/bin/id chef_gen'
#end

node['user_creation']['user'].each do |name|
	user name do
		username name
		manage_home true
		home "/home/#{name}"
		shell node['user_creation']['shell']
#		manage_home true
	end
end

template node['user_creation']['log_file'] do
  source 'logfile.erb'
  owner node['user_creation']['conf_user']
  group node['user_creation']['conf_group']
  mode '0755'
  variables(users_list: node['user_creation']['user'])
end

node['user_creation']['user'].each do |name|
	file "/home/#{name}/#{name}.log" do
		content "You are #{name}. Welcome!!"
		owner name
		group name
		mode '0744'
	end
end
