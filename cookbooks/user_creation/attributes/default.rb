#Attributes for new user
default['user_creation']['user']= ['chef_gen']
default['user_creation']['shell']= '/bin/bash'

#Attributes for log file
default['user_creation']['log_file']= '/opt/chef_usr_gen.log'
default['user_creation']['log_user']= 'root'
default['user_creation']['log_group']= 'root'

#Attributes for the home file
#default['user_creation']['home_file']=[]

