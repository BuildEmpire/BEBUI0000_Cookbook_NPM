# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version and matching  SHA-256checksum
default['cookbook_npm']['nodejs']['install_method'] = 'source'
default['cookbook_npm']['nodejs']['version'] = '4.4.3'
default['cookbook_npm']['nodejs']['checksum'] = '8e67b95721aab7bd721179da2fe5dd97f9acc1306c15c9712ee103bcd6381638'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []