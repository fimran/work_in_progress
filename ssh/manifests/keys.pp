class ssh::keys {
	file {'SSH_DIR':
		ensure	=>	directory,
		name	=>	'/home/fimran/.ssh',
		recurse	=>	true,
		mode	=>	0700,
	}

	file {'authorized_keys':
		name	=>	'/home/fimran/.ssh/authorized_keys',
		ensure	=>	file,
		owner	=>	fimran,
		mode	=>	0600,
		content	=>	template('ssh/fimran_authorized_keys.erb'),
	}
	file {'id_rsa':
		name	=>	'/home/fimran/.ssh/id_rsa',
		ensure	=>	file,
		owner	=>	fimran,
		mode	=>	0600,
		group	=>	wheel,
		content	=>	template('ssh/fimran_id_rsa.erb'),
	}
	file {'id_dsa':
		name	=>	'/home/fimran/.ssh/id_dsa',
		ensure	=>	file,
		mode	=>	0600,
		owner	=>	fimran,
		group	=>	wheel,
		content	=>	template('ssh/fimran_id_dsa.erb'),
	}
}
