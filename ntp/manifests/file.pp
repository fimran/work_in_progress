class ntp::file ($package = $ntp::params::package_name) {
	$template = $ntp::params::template
	$servers = $ntp::params::defaultservers
	file { 'NTP_CONF':
		name	=>	'/etc/ntp.conf',
		ensure	=>	file,
		require	=>	Package[$package],
		content	=>	template("ntp/${template}.erb"),
		mode	=>	'0644',
		owner 	=>	'root',
		group	=>	'root',
	}

}
