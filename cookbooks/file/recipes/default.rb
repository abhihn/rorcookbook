#
# Cookbook Name:: file
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file_replace_line "/etc/postfix/main.cf" do
  replace "inet_interfaces = localhost"
  with    "inet_interfaces = anu"
end


