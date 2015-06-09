# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version and matching  SHA-256checksum
default['cookbook_npm']['nodejs']['version'] = '0.12.4'
default['cookbook_npm']['nodejs']['checksum'] = '3298D0997613A04AC64343E8316DA134D04588132554AE402EB344E3369EC912'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []