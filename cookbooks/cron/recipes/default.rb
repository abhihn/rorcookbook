#
# Cookbook Name:: cron
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



 file "/etc/cron.daily/aide" do
owner   "root"
group   "root"
action  :create
content <<-aide.gsub(/^ {4}/, '')

#!/bin/bash

/usr/sbin/aide -C | /bin/mail -s "AIDE report for $(hostname)" root@localhost

 aide
end

execute "chmod +x /etc/cron.daily/aide"

