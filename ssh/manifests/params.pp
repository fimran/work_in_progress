class ssh::params {
        case $::operatingsystem {
        'RedHat': { 
			$ssh_name = 'sshd'
			$template = 'sshd_config_RedHat'
			$package  = 'openssh-server'
			$authorized_keys = '/root/.ssh'
		 }
        'Debian': { 
			$ssh_name = 'ssh' 
			$template = 'sshd_config_Debian'
			$package = 'openssh-server'
                        $authorized_keys = '/root/.ssh'

		}
	'Ubuntu': {
			$ssh_name = 'ssh'
			$template = 'sshd_config_Ubuntu'
			$package = 'openssh-server'
                        $authorized_keys = '/root/.ssh'

		}
	'CentOS': {
			$ssh_name = 'sshd'
			$template = 'sshd_config_CentOS'
			$package = 'openssh-server'
                        $authorized_keys = '/root/.ssh'

		}
	'SLES': {
			$ssh_name = 'sshd'
			$template = 'sshd_config_Suse'
			$package = 'openssh'
                        $authorized_keys = '/root/.ssh'

		}
        'Solaris': {
                        $ssh_name = 'ssh'
                        $template = 'sshd_config_Solaris'
                        $package = 'pkg://solaris/network/ssh'
                        $authorized_keys = '/root/.ssh'

                }
         default: { fail('OS not supproted for puppet module SSH') }
        }

}
