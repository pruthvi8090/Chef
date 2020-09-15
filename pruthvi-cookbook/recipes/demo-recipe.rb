#
# Cookbook:: pruthvi-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'tree' do 
 action :install 
end

file '/file2' do
 content "How are you"
 action :create
 owner 'root'
 group 'root'
end
