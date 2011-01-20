#
# Cookbook Name:: timezone
# Recipe:: default
#

if ['solo', 'app', 'app_master'].include?(node[:instance_role])

  remote_file "/etc/localtime" do
    action :delete
  end

  link "/etc/localtime" do
    to '/usr/share/zoneinfo/Europe/Copenhagen'
  end

end
