class profiles::base {
	include	ssh
	include localusers
	include	packagesbase
	include ntp
}
