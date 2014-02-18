#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# install apache
package "apache2" do
  action :install
end

# starts the apache service
# starts on reboot
service "apache2" do
  action [:start, :enabled]
end

# add a file
cookbook_file "/var/www/index.html" do
  source "index.html"
  mode 0644
end
