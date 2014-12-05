# Enable later
exec {"apt-get update":path => "/usr/bin",}

include stdlib
include puppi
include apache
include php

apache::module { 'rewrite': }

#apache::vhost { 'www.clickizquierdo.com':
#	docroot =>'/var/www/clickizquierdo',
#	server_name => 'www.clickizquierdo.com',
#	env_variables => ['Environment local']
#}

#PHP config
php::module { "mysql": }
php::module { "sqlite": }

#MYSQL config
class { "mysql":
  root_password => 'root',
}
