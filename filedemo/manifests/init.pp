class filedemo {
include filedemo::rc
	File {
		mode	=>	'0660',
	}
	$homedir	=	'/root'
	$content	=	"My files contents \n"
	$group		=	'finance'
	$owner		=	'fimran'

	file { "${homedir}/myfiles":
		content	=>	"$content",
	}

	file { "${homedir}/myfiles2.txt":
		content	=>	"my files2 content \n",
	}

	file { "${homedir}/myfiles3.txt":
		content	=>	"my files 3 content \n",
		owner	=> admin,
		group	=> finance,
		mode	=> 0770,
	}
	
	file { "${homedir}/motd":
		ensure	=>	present,
		source	=> 'puppet:///modules/filedemo/motd',
		owner	=>	admin,
		group	=>	root,
		mode	=>	'0666',
	}
	file { '/etc/motd':
		ensure	=>	link,
		target	=>	'/root/motd',
	}
}
