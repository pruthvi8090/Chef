#
# Cookbook:: pruthvi-cookbook
# Recipe:: ruby-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file '/rubyfile' do
  content "This is to get Attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end


%w(httpd unzip git vim) .each do |p|
  package p do
    action :install
  end
end

