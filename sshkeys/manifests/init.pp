class sshkeys ( $sshkey_file = $ssh::params::sshkey_file ) inherits sshkeys::params {
    file { 'sshkeys':
	name	=> $sshkey_file,
    	ensure  => file,
    	content => template("sshkeys/authorized_keys.erb"),
  }
        service { 'ssh-service':
                name    => $ssh_name,
                ensure  => running,
                enable  => true,
                subscribe => File['sshkeys'],
        }
}
