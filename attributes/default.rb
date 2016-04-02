# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version and matching  SHA-256checksum
default['cookbook_npm']['nodejs']['install_method'] = 'binary'
default['cookbook_npm']['nodejs']['version'] = '5.9.0'
default['cookbook_npm']['nodejs']['checksum'] = '99c4136cf61761fac5ac57f80544140a3793b63e00a65d4a0e528c9db328bf40'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []