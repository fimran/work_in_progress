class localusers::groups::wheel {
		group { 'wheel':
		ensure 	=> present,
		}
		group { 'sudo':
		ensure	=> present,
		}
}
