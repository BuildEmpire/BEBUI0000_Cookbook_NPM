# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version and matching  SHA-256checksum
default['cookbook_npm']['nodejs']['version'] = '0.12.4'
default['cookbook_npm']['nodejs']['checksum'] = '3298d0997613a04ac64343e8316da134d04588132554ae402eb344e3369ec912'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []