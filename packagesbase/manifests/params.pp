class packagesbase::params {
	case $::operatingsystem {
	'RedHat': { 
			$package = ['bind-utils', 'tree', 'tcpdump']
		 }
	'CentOS': {
			$package = ['bind-utils', 'tree', 'tcpdump']
		}
	'Ubuntu': {
			$package = ['dnsutils', 'tree', 'tcpdump']
		}
	'Debian': {
			$package = ['dnsutils', 'tree', 'tcpdump']
		}
	'SLES': {
			$package = ['bind-utils', 'tcpdump']
		}
	}	
}
