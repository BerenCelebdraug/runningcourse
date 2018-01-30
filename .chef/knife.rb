# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aandrade"
client_key               "#{current_dir}/aandrade.pem"
chef_server_url          "https://berencelebdraug2.mylabserver.com/organizations/training_org"
cookbook_path            ["#{current_dir}/../cookbooks"]
