#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group "admins" do
 end

user "anu" do
  home "/home/anu"
  shell "/bin/bash"
  password "qwinix" 
end
