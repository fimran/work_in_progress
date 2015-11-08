class ssh::params {
        case $::operatingsystem {
        'RedHat': { 
			$ssh_name = 'sshd'
			$template = 'sshd_config_RedHat'
			$package  = 'openssh-server'
		 }
        'Debian': { 
			$ssh_name = 'ssh' 
			$template = 'sshd_config_Debian'
			$package = 'openssh-server'
		}
	'Ubuntu': {
			$ssh_name = 'ssh'
			$template = 'sshd_config_Ubuntu'
			$package = 'openssh-server'
		}
	'CentOS': {
			$ssh_name = 'sshd'
			$template = 'sshd_config_CentOS'
			$package = 'openssh-server'
		}
	'SLES': {
			$ssh_name = 'sshd'
			$template = 'sshd_config_Suse'
			$package = 'openssh'
		}
        'Solaris': {
                        $ssh_name = 'ssh'
                        $template = 'sshd_config_Solaris'
                        $package = 'pkg://solaris/network/ssh'
                }
         default: { fail('OS not supproted for puppet module SSH') }
        }

}
