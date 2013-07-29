#
# Cookbook Name:: limechat
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

unless File.exists?("/Applications/LimeChat.app")

  version = "2.34"


  remote_file "#{Chef::Config[:file_cache_path]}/LimeChat_#{version}.tbz" do
    source "https://downloads.sourceforge.net/project/limechat/limechat/LimeChat_#{version}.tbz?use_mirror=master"
    owner node['current_user']
  end

  execute "unzip LimeChat" do
    command "tar -xjf #{Chef::Config[:file_cache_path]}/LimeChat_#{version}.tbz -C #{Chef::Config[:file_cache_path]}/"
    user node['current_user']
  end

  execute "copy LimeChat to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/LimeChat.app #{Regexp.escape("/Applications/LimeChat.app")}"
    user node['current_user']
    group "admin"
  end

  ruby_block "test to see if LimeChat.app was installed" do
    block do
      raise "LimeChat.app was not installed" unless File.exists?("/Applications/LimeChat.app")
    end
  end

end



