class ntp::params {

        case $::operatingsystem {
        'Ubuntu': { 
		$template  = 'ntp_ubuntu.conf'
		$service_name = 'ntp'
		$defaultservers = ["0.ubuntu.pool.ntp.org",
				   "1.ubuntu.pool.ntp.org",
				   "2.ubuntu.pool.ntp.org",
			           "3.ubuntu.pool.ntpd.org"]
 	}
        
	'CentOS': { 
		$template  = 'ntp_centos.conf'
		$service_name = 'ntpd'
		$defaultservers = [ "0.centos.pool.ntp.org iburst",
				    "1.centos.pool.ntp.org iburst",
				    "2.centos.pool.ntp.org iburst",
				    "3.centos.pool.ntpd.org iburst" ]
 	}
	
	'RedHat': {
		$template = 'ntp_redhat.conf'
		$service_name = 'ntpd'
		$defaultservers = [ "0.rhel.pool.ntp.org iburst", "1.rhel.pool.ntp.org iburst", "2.rhel.pool.ntp.org iburst", "3.rhel.pool.ntpd.org iburst" ]
	}

	'Debian': {
		$template = 'ntp_debian.conf'
		$service_name = 'ntp'
		$defaultservers = [ "0.debian.pool.ntp.org iburst", "0.debian.pool.ntp.org iburst", "1.debian.pool.ntp.org iburst", "2.debian.pool.ntp.org iburst", "3.debian.pool.ntp.org iburst", "4.debian.pool.ntp.org iburst" ]
	}

	'SLES': {
		$template = 'ntp_sles.conf'
		$service_name = 'ntp'
		$defaultservers = [ "ntp1.jst.mfeed.ad.jp", "ntp2.jst.mfeed.ad.jp", "ntp3.jst.mfeed.ad.jp" ]
	}
		

	default: {fail("OS $::operatingsystem is not currently supported")}

	}
	
	$package_name = ntp

}
