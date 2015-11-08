class practice {
	host { 'webserver04':
		name	=>	'node4.areebindustries.com',
		ip	=>	'192.168.1.219',
		host_aliases	=>	['web04', 'webhead04', 'webserver4'],
		comment		=>	'This is our Webserver primary',
	}

	host { 'webserver05':
		name	=>	'node5.areebindustries.com',
		ip	=>	'192.168.1.220',
	}

}
