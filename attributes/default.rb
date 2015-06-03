# An array of symlinks for the npm cookbook
# The paths here will be linked to the directories in the /symlinks folder on the box.
default['cookbook_npm']['symlinks'] = []

# Set the default node version
default['cookbook_npm']['nodejs']['version'] = '0.12.0'

# Create an array of npm packages to install
default['cookbook_npm']['npm_packages'] = []