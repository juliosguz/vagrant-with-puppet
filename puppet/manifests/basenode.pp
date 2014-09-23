# Enable later
#exec {"apt-get update":path => "/usr/bin",}

include stdlib
include puppi
include apache
include php

apache::module { 'rewrite': }

apache::vhost { 'luchoxp.com':
	docroot =>'/var/www/luchoxp',
	server_name => 'luchoxp.com',
	env_variables => ['Environment local']
}

apache::vhost { 'clickizquierdo.com':
	docroot =>'/var/www/clickizquierdo',
	server_name => 'clickizquierdo.com',
	env_variables => ['Environment local']
}
