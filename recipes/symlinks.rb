#
# Cookbook Name:: cookbook_npm
# Recipe:: symlinks
#

# Since Vagrant on an NTFS host doesn't support symlinks properly,
# We decided to move the node_modules and tmp directory off the shared disk.

# Deduce the apps array, either from this cookbook, or retriving it from other cookbooks.

if node['cookbook_npm']['symlinks']

  # Create a folder to store the symlinked directories
  symlinked_folder = '/symlinks'
  directory symlinked_folder do
    owner 'vagrant'
    group 'vagrant'
    action :create
    recursive true
  end

  # Loop through the symlinks. They need to be relative to the project folder, and they link to the symlink folder above.
  Array(node['cookbook_npm']['symlinks']).each_with_index do |absolute_directory, index|

    # Deduce the two locations
    source_folder = absolute_directory
    destination_folder = ::File.join(symlinked_folder, "#{absolute_directory}-#{index}")

    # Ensure the source folder doesn't exist
    directory source_folder do
      recursive true
      action :delete
      not_if "test -dL #{source_folder}"
    end

    # Ensure the destination folder does exist
    directory destination_folder do
      owner 'vagrant'
      group 'vagrant'
      action :create
      recursive true
    end

    # Create the symbolic link
    link source_folder do
      owner 'vagrant'
      group 'vagrant'
      to destination_folder
      not_if "test -d #{source_folder}"
    end

  end

end