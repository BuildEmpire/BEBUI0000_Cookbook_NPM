#
# Cookbook Name:: cookbook_npm
# Recipe:: npm
#

# Install npm itself
include_recipe "nodejs"

# Create the symlinks to the npm packages required.
# If you want to add the packages, please use npm_packages as part of the nodejs chef cookbook
# (https://github.com/redguide/nodejs)
Array(node['cookbook_npm']['package_symlinks']).each_with_index do |package_name, index|
  link File.join(default['ark']['prefix_root'], 'bin', package_name) do
    to File.join(default['ark']['prefix_root'], 'nodejs-binary', 'bin', package_name)
  end
end