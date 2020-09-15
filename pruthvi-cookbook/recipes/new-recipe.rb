#
# Cookbook:: pruthvi-cookbook
# Recipe:: new-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/newfile' do 
  content "Hello All!!"
  action :create
end

execute "run a script" do 
  command <<-EOH
  mkdir /newdir
  touch /newfile
  EOH
end 

user "raj" do
  action :create
end

user "dheeraj" do
  action :create
end


group "devops" do
  action :create
  members 'raj'
  append true
end

group "devops" do
  action :create
  members 'dheeraj'
  append true
end
