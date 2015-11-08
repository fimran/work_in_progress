class practice::file {
	file { 'mod1':
		path		=>	'/etc/motd',
		content	=>	"Welcome to my server!\n",
	}

	file { 'motd2':
		path		=>	'/etc/motd.tail',
		content	=>	'Welcome to my server 2',
	}

}
