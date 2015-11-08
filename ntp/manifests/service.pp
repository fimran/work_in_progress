class ntp::service {

        $service_name = $ntp::params::service_name
	service { 'ntp_service':
		ensure		=> running,
		enable		=> true,
		subscribe	=> File['NTP_CONF'],	
		name		=> "$service_name",
	}

}
