#
# Cookbook:: my_httpd
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update

package 'apache2'

service 'apache2' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
