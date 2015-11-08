class ntp( $package = $ntp::params::package_name ) inherits ntp::params {
	package { $package:
		ensure	=> installed,
	}
	
	include	ntp::file
	include ntp::service
}
