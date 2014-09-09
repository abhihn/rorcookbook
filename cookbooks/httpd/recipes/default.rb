#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
  action :install
  not_if "rpm -q httpd"
end

execute "chkconfig httpd on" do
  command "chkconfig httpd on"
end


#
# chkconfig
#



