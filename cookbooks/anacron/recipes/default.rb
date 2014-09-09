#
# Cookbook Name:: anacron
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

ruby_block "search_file_replace_line" do
  block do
    file = Chef::Util::FileEdit.new("/etc/anacrontab")
    file.search_file_replace_line("START_HOURS_RANGE=3-22", "START_HOURS_RANGE=0-5")
    file.write_file
  end
end
