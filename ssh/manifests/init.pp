class ssh ( 
		$ssh_name = $ssh::params::ssh_name, 
		$template = $ssh::params::template,
		$package = $ssh::params::package, 
	  	$authorized_keys = $ssh::params::authorized_keys ) inherits ssh::params {
	package { 'SSH_PKG':
		name	=> $package,
		ensure	=> installed,
		before	=> Service['ssh-service'],
	}

	file { 'SSH_FILE':
		name	=> '/etc/ssh/sshd_config',
		ensure	=> file,
		content => template("ssh/${template}.erb"),
		mode	=> '0600',
		owner	=> 'root',
		group	=> 'root',
		require	=> Package['SSH_PKG'],
	}

	file { 'sshkey_authorized':
		name	=>	"$authorized_keys/authorized_keys",
		ensure	=>	file,
		content	=>	template("ssh/authorized_keys.erb"),
		mode	=>	'0400',
		owner	=>	'root',
		group	=>	'root',
	}
	
	service { 'ssh-service':
		name	=> $ssh_name,
		ensure	=> running,
		enable	=> true,
		subscribe => File['SSH_FILE'],
	}
}
