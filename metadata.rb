name             'cookbook_npm'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'Uses the default Node and NPM Chef library, but also allows packages to be installed via the JSON.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.8'

recipe 'cookbook_npm', 'Uses the default Node and NPM Chef library, but also allows packages to be installed via the JSON.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{nodejs}.each do |cb|
  depends cb
end