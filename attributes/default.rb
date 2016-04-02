# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version and matching  SHA-256checksum
default['cookbook_npm']['nodejs']['install_method'] = 'source'
default['cookbook_npm']['nodejs']['version'] = '4.1.0'
default['cookbook_npm']['nodejs']['checksum'] = '453005f64ee529f7dcf1237eb27ee2fa2415c49f5c9e7463e8b71fba61c5b408'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []