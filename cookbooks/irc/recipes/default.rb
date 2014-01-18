#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, GOMOOB
#
# All rights reserved - Do Not Redistribute
#

package 'ruby-shadow' do
  action :install
end

user 'tdi' do
  action :create
  comment "Test Driver Infrastructure"
  home "/home/tdi"
  password "$1$IlnvR26C$xW.D3LZ2/tgm5tcZugrML0"
  manage_home true
end

package 'irssi' do
  action :install
end

directory '/home/tdi/.irssi' do
  owner 'tdi'
  group 'tdi'
end

cookbook_file '/home/tdi/.irssi/config' do
  source 'irssi-config'
  owner 'tdi'
  group 'tdi'
end

