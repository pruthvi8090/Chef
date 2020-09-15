#
# Cookbook:: apache-cookbook
# Recipe:: good-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/goodfile' do 
  content 'Hello!!'
  action :create
end
