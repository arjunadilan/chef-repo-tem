#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
if (node['platform_family'] == "amazon") or (node['platform_family'] == "rhel")
    package = "httpd"
elsif node['platform_family'] == "debian"
    package = "apache2"
else
    package = "null"
end
package 'apache' do
    package_name package
    action 'install'
end
service 'apache2' do 
    service_name package
    action [:start, :enable]
end