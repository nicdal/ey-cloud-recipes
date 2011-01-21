#
# Cookbook Name:: deamons
# Recipe:: default
#

if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  
  node[:applications].each do |app_name,data|

    execute "Starting deamons for #{app_name}" do
       command "rake deamons:start"
       cwd "/data/#{app_name}/current"
       action :run
    end    
    
  end

end
