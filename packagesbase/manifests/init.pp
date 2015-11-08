class packagesbase ( $package = $packagesbase::params::package ) inherits packagesbase::params {
	package { $package:
		ensure	=> installed,
	}
}
