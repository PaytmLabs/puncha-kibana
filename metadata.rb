name             'puncha-kibana'
maintainer       'PunCha Feng'
maintainer_email 'puncha.info@gmail.com'
license          'Apache 2.0'
description      'Set of recipes for installing Kibana 4'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'

supports 'centos'
supports 'debian'
supports 'ubuntu'

recipe "puncha-kibana::default", <<-EOH
Installs Kibana 4 (with or without dependencies).
See attributes for attribute-control of installed dependencies.
EOH
recipe "puncha-kibana::dependencies", <<-EOH
Installs Kibana 4 dependencies (without Kibana 4 itself).
See attributes for attribute-control of installed dependencies.
EOH

# Dependencies
depends 'chef-sugar', '>= 0.0.0'
depends 'line', '>= 0.0.0'
depends 'ark', '>= 0.0.0'
depends 'apt', '>= 0.0.0'
depends 'java', '>= 0.0.0'

