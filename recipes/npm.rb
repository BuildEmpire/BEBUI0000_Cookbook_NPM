#
# Cookbook Name:: cookbook_npm
# Recipe:: npm
#

# Install from source
node.set['nodejs']['install_method'] = 'source'

# Set the node version and checksum
node.set['nodejs']['version'] = node['cookbook_npm']['nodejs']['version']
node.set['nodejs']['source']['checksum'] = node['cookbook_npm']['nodejs']['checksum']

# Install npm itself
include_recipe "nodejs::npm"

# Install the npm packages required
Array(node['cookbook_npm']['npm_packages']).each_with_index do |package_name, index|
  nodejs_npm package_name do
    action :install
  end
end