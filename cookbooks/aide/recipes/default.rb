#
# Cookbook Name:: aide
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "yum -y install aide"
execute "aide -i"
execute "cp -p /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz"
execute "aide -C"
