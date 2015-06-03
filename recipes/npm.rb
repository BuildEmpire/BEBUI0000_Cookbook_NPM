#
# Cookbook Name:: cookbook_npm
# Recipe:: npm
#

# Set the node version
node.set['nodejs']['version'] = node['cookbook_npm']['nodejs']['version']

# Install npm itself
include_recipe "nodejs::npm"

# Install the npm packages required
Array(node['cookbook_npm']['npm_packages']).each_with_index do |package_name, index|
  nodejs_npm package_name do
    action :install
  end
end