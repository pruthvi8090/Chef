#
# Cookbook:: pruthvi-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file '/file' do
  content "hello all!! GM!!"
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir /mydir
  touch /myfile
  EOH
end

%w(httpd unzip git vim) .each do |p|
  package p do
    action :install
  end
end




