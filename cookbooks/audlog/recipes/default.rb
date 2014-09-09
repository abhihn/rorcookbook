#
# Cookbook Name:: audlog
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
 ruby_block "insert_line_after_match" do
  block do
    file = Chef::Util::FileEdit.new("/etc/logrotate.d/syslog")
    file.insert_line_after_match("/var/log/spooler","/var/log/audit/audit.log")
    file.write_file
  end
end

ruby_block "search_file_replace" do
  block do
    file = Chef::Util::FileEdit.new("/etc/audit/audit.rules")
    file.search_file_replace("-D","#-D")
    file.write_file
  end
end
