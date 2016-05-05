name             'cookbook_npm'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'The NPM cookbook, adds everything you need to use NPM with vagrant box, including symlinks and package provision.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.7'

recipe 'cookbook_npm', 'The Ember NPM, adds everything you need to use NPM with vagrant box, including symlinks and package provision.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{nodejs}.each do |cb|
  depends cb
end